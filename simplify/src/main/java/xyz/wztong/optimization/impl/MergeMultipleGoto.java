package xyz.wztong.optimization.impl;

import org.cf.simplify.ExecutionGraphManipulator;
import org.cf.smalivm.opcode.GotoOp;
import org.cf.smalivm.opcode.Op;
import xyz.wztong.Utils;
import xyz.wztong.optimization.Optimization;

import java.util.*;

// Must be inferred last, I don't know why, but as a ReOptimizer, it will cause crash (manipulator unable to get op)
public class MergeMultipleGoto implements Optimization.ReExecute {
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
                    print("Invalid goto:" + gotoOp);
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
        var positionsComplicated = new ArrayList<Map.Entry<List<Integer>, Integer>>();
        GotoOp currentTestOp;
        while (!filterOps.isEmpty()) {
            currentTestOp = filterOps.iterator().next();
            filterOps.remove(currentTestOp);
            var currentRemoveOps = new ArrayList<GotoOp>();
            for (var filterOp : filterOps) {
                if (dus.find(opToIndex.get(filterOp)) == dus.find(opToIndex.get(currentTestOp))) {
                    currentRemoveOps.add(filterOp);
                }
            }
            currentRemoveOps.add(currentTestOp);
            positionsComplicated.add(getPositions(currentRemoveOps));
            for (var currentRemoveOp : currentRemoveOps) {
                filterOps.remove(currentRemoveOp);
            }
        }
        var positionsFlat = new ArrayList<Map.Entry<Integer, Integer>>();
        positionsComplicated.forEach(positions -> {
            var dest = positions.getValue();
            positions.getKey().forEach(src -> {
                positionsFlat.add(Map.entry(src, dest));
            });
        });
        var modifyCount = 0;
        Utils.addGotos(this, manipulator, positionsFlat);
        return modifyCount;
    }

    // Return: [ MultipleRoots -> Destiny ]
    private Map.Entry<List<Integer>, Integer> getPositions(List<GotoOp> gotoOps) {
        var roots = new HashSet<Integer>();
        int dest = -1;
        NextPossibleRoot:
        for (var currentOp : gotoOps) {
            for (var testOp : gotoOps) {
                if (testOp.getChildren()[0].getCodeAddress() == currentOp.getAddress()) {
                    continue NextPossibleRoot;
                }
            }
            if (!roots.add(currentOp.getAddress())) {
                throw new IllegalStateException("Multiple positions for the same goto op?");
            }
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
        return Map.entry(new ArrayList<>(roots), dest);
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