%{
#include<stdio.h>
%}
%start ODD EVEN ZERO INCORRECT ERR
%option noyywrap
%%
<INITIAL>0 {BEGIN ZERO;};
<INITIAL>1 {BEGIN ODD;};

<ZERO>0 {BEGIN ZERO;};
<ZERO>1 {BEGIN ODD;};

<ODD>0 {BEGIN INCORRECT;};
<ODD>1 {BEGIN EVEN;};

<EVEN>0 {BEGIN ZERO;};
<EVEN>1 {BEGIN ODD;};

<ERR>\n {puts("INCORRECT INPUT");BEGIN 0;}
<EVEN,ZERO>\n {puts("CORRECT");BEGIN 0;}
<INCORRECT,ODD>\n {puts("INCORRECT");BEGIN 0;}
\n {puts("EMPTY");BEGIN 0;}

<INCORRECT>. ;
. {BEGIN ERR;};
%%}
int main(){yylex();return 0;}
