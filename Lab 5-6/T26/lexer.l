%{
    #include <stdio.h>
    #include "parser.tab.h"
    extern int yylval;
%}
%option noyywrap
%%
(z=) {return PREFIX;}
([+-])?(([1-9][0-9]*)|0) {yylval = atoi(yytext); return (X);}
([+-]) {yylval = (yytext[0] == '-') ;return YSIGN;}
i([1-9][0-9]*)? {sscanf(yytext, "i%d", &yylval); return (Y);}
\n {return EOLT;}
. ;
%%