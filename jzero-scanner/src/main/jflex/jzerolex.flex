package com.wade.adam.lang;

%%
%int
%%
"/*"([^*]|"*"+[^/*])*"*"+"/"       { JZero.comment(); }
"//".*\r?\n                        { JZero.comment(); }
[ \t\r\f]+                         { JZero.whitespace(); }
\n                                 { JZero.newline(); }
"break"                            { return JZero.scan(Parser.BREAK); }
"double"                           { return JZero.scan(Parser.DOUBLE); }
"else"                             { return JZero.scan(Parser.ELSE); }
"false"                            { return JZero.scan(Parser.BOOLLIT); }
"for"                              { return JZero.scan(Parser.FOR); }
"if"                               { return JZero.scan(Parser.IF); }
"int"                              { return JZero.scan(Parser.INT); }
"null"                             { return JZero.scan(Parser.NULLVAL); }
"return"                           { return JZero.scan(Parser.RETURN); }
"string"                           { return JZero.scan(Parser.STRING); }
"true"                             { return JZero.scan(Parser.BOOLLIT); }
"bool"                             { return JZero.scan(Parser.BOOL); }
"void"                             { return JZero.scan(Parser.VOID); }
"while"                            { return JZero.scan(Parser.WHILE); }
"class"                            { return JZero.scan(Parser.CLASS); }
"static"                           { return JZero.scan(Parser.STATIC); }
"public"                           { return JZero.scan(Parser.PUBLIC); }
"("                                { return JZero.scan(JZero.ord("(")); }
")"                                { return JZero.scan(JZero.ord(")")); }
"["                                { return JZero.scan(JZero.ord("[")); }
"]"                                { return JZero.scan(JZero.ord("]")); }
"{"                                { return JZero.scan(JZero.ord("{")); }
"}"                                { return JZero.scan(JZero.ord("}")); }
";"                                { return JZero.scan(JZero.ord(";")); }
":"                                { return JZero.scan(JZero.ord(":")); }
"!"                                { return JZero.scan(JZero.ord("!")); }
"*"                                { return JZero.scan(JZero.ord("*")); }
"/"                                { return JZero.scan(JZero.ord("/")); }
"%"                                { return JZero.scan(JZero.ord("%")); }
"+"                                { return JZero.scan(JZero.ord("+")); }
"-"                                { return JZero.scan(JZero.ord("-")); }
"<"                                { return JZero.scan(JZero.ord("<")); }
">"                                { return JZero.scan(JZero.ord(">")); }
"="                                { return JZero.scan(JZero.ord("=")); }
","                                { return JZero.scan(JZero.ord(",")); }
"."                                { return JZero.scan(JZero.ord(".")); }
"<="                               { return JZero.scan(Parser.LESSTHANOREQUAL); }
">="                               { return JZero.scan(Parser.GREATERTHANOREQUAL); }
"=="                               { return JZero.scan(Parser.ISEQUALTO); }
"!="                               { return JZero.scan(Parser.NOTEQUALTO); }
"&&"                               { return JZero.scan(Parser.LOGICALAND); }
"||"                               { return JZero.scan(Parser.LOGICALOR); }
"+="                               { return JZero.scan(Parser.INCREMENT); }
"-="                               { return JZero.scan(Parser.DECREMENT); }
[a-zA-Z_][a-zA-Z0-9_]*             { return JZero.scan(Parser.IDENTIFIER); }
[0-9]+                             { return JZero.scan(Parser.INTLIT); }
[0-9]+"."[0-9]*([eE][+-]?[0-9]+)?  { return JZero.scan(Parser.DOUBLELIT); }
[0-9]*"."[0-9]+([eE][+-]?[0-9]+)?  { return JZero.scan(Parser.DOUBLELIT); }
([0-9]+)([eE][+-]?([0-9+]))        { return JZero.scan(Parser.DOUBLELIT); }
\"([^\"])|(\\.)*\"                 { return JZero.scan(Parser.STRINGLIT); }
.                                  { JZero.lexErr("unrecognized character"); }