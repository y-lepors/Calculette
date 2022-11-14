// Specification JFlex
import java_cup.runtime.*;
%%
%unicode
%cup
%line

%%


[0-9]+                                                         { return new Symbol(sym.ENTIER, new Integer(yytext())); }
\"[A-Za-z]+\"                                                   { return new Symbol(sym.CHAINE, new String(yytext())); }
"*"                                                             { return new Symbol(sym.MULT); }
"+"                                                             { return new Symbol(sym.PLUS); }
"("                                                             { return new Symbol(sym.PO); }
")"                                                             { return new Symbol(sym.PF); }
"="                                                             { return new Symbol(sym.EGAL); }
"PRINT"                                                             { return new Symbol(sym.PRINT); }
[A-Za-z]+                                                       {return new Symbol(sym.VARIABLECHIFFRE, new String(yytext()));}
\$[A-Za-z]+                                                        {return new Symbol(sym.VARIABLECHAINE, new String(yytext()));} 
\n|\r                                                              { return new Symbol(sym.EOL);}
[ \t]                                                           { }
.                                                               { return new Symbol(sym.RIEN, new String(yytext())); }




