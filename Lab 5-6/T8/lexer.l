%{
#include<stdio.h>
#include<stdlib.h>
#include "parser.tab.h"
%}
%%
[-+]?[1-9][0-9]* {yylval.cfloat = atof(yytext);return (NUMBER);}
\/ return DIVISION;
0 return ZERO;
\n return EOLT;
. ;
%%