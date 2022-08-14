package com.wade.adam.lang;

import java.io.FileReader;

public class Simple {

    static final String INPUT_FILE = "simple/src/main/resources/dorrie.in";

    static Yylex yylex;

    public static void main(String[] args) throws Exception {
        yylex = new Yylex(new FileReader(INPUT_FILE));
        int i;
        while ((i = yylex.yylex()) != Yylex.YYEOF) {
            System.out.println("token " + i + ": " + yytext());
        }
    }

    public static String yytext() {
        return yylex.yytext();
    }

    public static void lexErr(String s) {
        System.err.println(s + ": " + yytext());
        System.exit(1);
    }

}