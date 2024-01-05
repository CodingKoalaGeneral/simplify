package xyz.wztong.optimization.impl;

import org.cf.simplify.ExecutionGraphManipulator;
import org.cf.smalivm.opcode.GotoOp;
import org.cf.smalivm.opcode.Op;
import org.jf.dexlib2.Opcode;
import org.jf.dexlib2.builder.BuilderInstruction;
import org.jf.dexlib2.builder.instruction.BuilderInstruction10t;
import org.jf.dexlib2.builder.instruction.BuilderInstruction20t;
import org.jf.dexlib2.builder.instruction.BuilderInstruction30t;
import xyz.wztong.Utils;
import xyz.wztong.optimization.Optimization;

import java.awt.*;
import java.awt.datatransfer.StringSelection;
import java.util.List;
import java.util.*;

public class MergeMultipleGoto implements Optimization.ReOptimize {
    @Override
    public int perform(ExecutionGraphManipulator manipulator) {
        var validAddressesImmutable = getValidAddresses(manipulator, address -> {
            if (!manipulator.wasAddressReached(address)) {
                return false;
            }
            var op = manipulator.getOp(address);
            GotoOp gotoOp;
            if (!(op instanceof GotoOp fGotoOp)) {
                return false;
            } else {
                gotoOp = fGotoOp;
            }
            var gotoAddress = gotoOp.getChildren()[0].getCodeAddress();
            return manipulator.getOp(gotoAddress) instanceof GotoOp;
        });
        if (validAddressesImmutable.isEmpty()) {
            return 0;
        }
        // Reverse + reverse = natural
        var validAddressesSet = new HashSet<>(validAddressesImmutable);
        // Find more goto instruction
        for (var address : validAddressesImmutable) {
            var op = manipulator.getOp(address);
            GotoOp gotoOp;
            if (!(op instanceof GotoOp fGotoOp)) {
                continue;
            } else {
                gotoOp = fGotoOp;
            }
            Op nextOp;
            do {
                var nextOpAddress = gotoOp.getChildren()[0].getCodeAddress();
                var nextLocation = manipulator.getLocation(nextOpAddress);
                if (nextLocation == null) {
                    Utils.print("DirectGotoDestination: Invalid goto:" + gotoOp);
                    continue;
                }
                nextOp = manipulator.getOp(nextOpAddress);
                if (nextOp instanceof GotoOp nextGotoOp) {
                    validAddressesSet.add(nextOpAddress);
                    gotoOp = nextGotoOp;
                } else {
                    break;
                }
            } while (true);
        }
        var validAddresses = new ArrayList<>(validAddressesSet);
        validAddresses.sort(Comparator.naturalOrder());
        int validAddressesSize = validAddresses.size();
        var opToIndex = new HashMap<GotoOp, Integer>(validAddressesSize);
        var gotoOps = new ArrayList<GotoOp>(validAddressesSize);
        for (int i = 0; i < validAddressesSize; i++) {
            var gotoOp = (GotoOp) manipulator.getOp(validAddresses.get(i));
            opToIndex.put(gotoOp, i);
            gotoOps.add(gotoOp);
        }
        var dus = new DisjointUnionSets(validAddressesSize);
        for (var currentOp : gotoOps) {
            for (var compareOp : gotoOps) {
                if (currentOp.getAddress() != compareOp.getAddress() && compareOp.getChildren()[0].getCodeAddress() == currentOp.getAddress() || currentOp.getChildren()[0].getCodeAddress() == compareOp.getAddress()) {
                    dus.union(opToIndex.get(currentOp), opToIndex.get(compareOp));
                }
            }
        }
        var filterOps = new HashSet<>(gotoOps);
        var currentTestOp = filterOps.iterator().next();
        filterOps.remove(currentTestOp);
        var positions = new ArrayList<Map.Entry<List<Integer>, Integer>>();
        do {
            var currentRemoveOps = new ArrayList<GotoOp>();
            for (var filterOp : filterOps) {
                if (dus.find(opToIndex.get(filterOp)) == dus.find(opToIndex.get(currentTestOp))) {
                    currentRemoveOps.add(filterOp);
                }
            }
            currentRemoveOps.add(currentTestOp);
            positions.add(getPositions(currentRemoveOps));
            for (var currentRemoveOp : currentRemoveOps) {
                filterOps.remove(currentRemoveOp);
            }
            if (filterOps.isEmpty()) {
                break;
            }
            currentTestOp = filterOps.iterator().next();
        } while (true);
        var modifyCount = 0;
        var impl = manipulator.getMethod().getImplementation();
        Toolkit.getDefaultToolkit().getSystemClipboard().setContents(new StringSelection(manipulator.toSmali(true)), null);
        for (int i = 0; i < positions.size(); i++) {
            var position = positions.get(i);
            var starts = position.getKey();
            var exit = position.getValue();
            var exitLabel = impl.newLabelForAddress(exit);
            for (var start : starts) {
                var offsetAbs = Math.abs(exit - start);
                BuilderInstruction gotoInstruction;
                if (offsetAbs < 0x7f) {
                    gotoInstruction = new BuilderInstruction10t(Opcode.GOTO, exitLabel);
                } else if (offsetAbs < 0x7fff) {
                    gotoInstruction = new BuilderInstruction20t(Opcode.GOTO_16, exitLabel);
                } else {
                    gotoInstruction = new BuilderInstruction30t(Opcode.GOTO_32, exitLabel);
                }
                // Update affected offset
                for (int k = 0; k < positions.size(); k++) {
                    var impactPosition = positions.get(k);
                    if (impactPosition.equals(position)) {
                        continue;
                    }
                    var impactStarts = impactPosition.getKey();
                    var impactExit = impactPosition.getValue();
                    for (int l = 0; l < impactStarts.size(); l++) {
                        var impactStart = impactStarts.get(l);
                        int gotoInstructionCodeUnits = gotoInstruction.getCodeUnits();
                        // TODO: Determine if it's right to contain equals
                        if (impactStart < start && start + gotoInstructionCodeUnits <= impactExit) {
                            positions.set(k, Map.entry(impactStarts, impactExit + gotoInstructionCodeUnits));
                        } else if (start < impactStart) {
                            var newImpactStarts = new ArrayList<>(impactStarts);
                            newImpactStarts.replaceAll(address -> address + gotoInstructionCodeUnits);
                            positions.set(k, Map.entry(newImpactStarts, impactExit + gotoInstructionCodeUnits));
                        }
                    }
                }
                manipulator.addInstruction(start, gotoInstruction);
                print("Merge gotos: " + starts + " => " + exit);
            }
            modifyCount += starts.size();
        }
        return modifyCount;
    }

    // Return: [ MultipleRoots -> Destiny ]
    private Map.Entry<List<Integer>, Integer> getPositions(List<GotoOp> gotoOps) {
        var roots = new ArrayList<Integer>();
        int dest = -1;
        NextPossibleRoot:
        for (var currentOp : gotoOps) {
            for (var testOp : gotoOps) {
                if (testOp.getChildren()[0].getCodeAddress() == currentOp.getAddress()) {
                    continue NextPossibleRoot;
                }
            }
            roots.add(currentOp.getAddress());
        }
        NextPossibleExit:
        for (var currentOp : gotoOps) {
            var currentPointAddress = currentOp.getChildren()[0].getCodeAddress();
            for (var testOp : gotoOps) {
                if (currentPointAddress == testOp.getAddress()) {
                    continue NextPossibleExit;
                }
            }
            dest = currentPointAddress;
            break;
        }
        if (dest == -1 || roots.isEmpty()) {
            throw new IllegalStateException("Want to find nodes with a non-disjoint-union sets?");
        }
        return Map.entry(roots, dest);
    }

    private static class DisjointUnionSets {
        int[] rank, parent;
        int n;

        public DisjointUnionSets(int n) {
            rank = new int[n];
            parent = new int[n];
            this.n = n;
            makeSet();
        }

        void makeSet() {
            for (int i = 0; i < n; i++) {
                parent[i] = i;
            }
        }

        int find(int x) {
            if (parent[x] != x) {
                parent[x] = find(parent[x]);
            }
            return parent[x];
        }

        void union(int x, int y) {
            int xRoot = find(x), yRoot = find(y);
            if (xRoot == yRoot) return;
            if (rank[xRoot] < rank[yRoot]) parent[xRoot] = yRoot;
            else if (rank[yRoot] < rank[xRoot]) parent[yRoot] = xRoot;
            else {
                parent[yRoot] = xRoot;
                rank[xRoot] = rank[xRoot] + 1;
            }
        }
    }
}