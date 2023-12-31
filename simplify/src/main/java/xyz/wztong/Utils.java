package xyz.wztong;

import java.io.File;

public class Utils {

    public static void disassembleDex(File input, File output) {
        org.jf.baksmali.Main.main(new String[]{"disassemble", "--use-locals", "--sequential-labels", "--code-offsets", input.getAbsolutePath(), "--output", output.toString()});
    }
}
