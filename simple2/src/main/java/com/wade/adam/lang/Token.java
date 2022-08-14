package com.wade.adam.lang;

public class Token {
    public int category;
    public String text;
    public int lineNumber;

    public Token(int category, String text, int lineNumber) {
        this.category = category;
        this.text = text;
        this.lineNumber = lineNumber;
    }
}