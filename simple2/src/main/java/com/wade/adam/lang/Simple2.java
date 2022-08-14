package com.wade.adam.lang;

import java.io.FileReader;

public class Simple2 {

    static final String INPUT_FILE = "simple2/src/main/resources/dorrie2.in";

    static Yylex yylex;
    public static int lineNumber;
    public static Token token;

    public static void main(String[] args) throws Exception{
        yylex = new Yylex(new FileReader(INPUT_FILE));
        lineNumber = 1;
        int i;
        while((i = yylex.yylex()) != Yylex.YYEOF){
            System.out.println("token " + i + " (line " + token.lineNumber + ") : " + yytext());
        }
    }

    public static String yytext(){
        return yylex.yytext();
    }

    public static void lexErr(String s){
        System.err.println(s + ": line " + lineNumber + ": " + yytext());
        System.exit(1);
    }

    public static int scan(int category){
        token = new Token(category, yytext(), lineNumber);
        return category;
    }

    public static void incrementLineNumber(){
        lineNumber++;
    }
}
