%{
    #include<stdio.h>
%}
%start n0 n1 n2 n3 n4 n5 n6 n7 n8 n9 na nb nc nd ne nf err
%option noyywrap
%%

<nf>F {BEGIN nf;}
<nf,ne>E {BEGIN ne;}
<nf,ne,nd>D {BEGIN nd;}
<nf,ne,nd,nc>C {BEGIN nc;}
<nf,ne,nd,nc,nb>B {BEGIN nb;}
<nf,ne,nd,nc,nb,na>A {BEGIN na;}
<nf,ne,nd,nc,nb,na,n9>9 {BEGIN n9;}
<nf,ne,nd,nc,nb,na,n9,n8>8 {BEGIN n8;}
<nf,ne,nd,nc,nb,na,n9,n8,n7>7 {BEGIN n7;}
<nf,ne,nd,nc,nb,na,n9,n8,n7,n6>6 {BEGIN n6;}
<nf,ne,nd,nc,nb,na,n9,n8,n7,n6,n5>5 {BEGIN n5;}
<nf,ne,nd,nc,nb,na,n9,n8,n7,n6,n5,n4>4 {BEGIN n4;}
<nf,ne,nd,nc,nb,na,n9,n8,n7,n6,n5,n4,n3>3 {BEGIN n3;}
<nf,ne,nd,nc,nb,na,n9,n8,n7,n6,n5,n4,n3,n2>2 {BEGIN n2;}
<nf,ne,nd,nc,nb,na,n9,n8,n7,n6,n5,n4,n3,n2,n1>1 {BEGIN n1;}
<nf,ne,nd,nc,nb,na,n9,n8,n7,n6,n5,n4,n3,n2,n1,n0>0 {BEGIN n0;}

<n0,n1,n2,n3,n4,n5,n6,n7,n8,n9,na,nb,nc,nd,ne,nf>. {BEGIN err;}
<err>. ;
<err>\n {puts("ERROR");BEGIN 0;}

<n0,n1,n2,n3,n4,n5,n6,n7,n8,n9,na,nb,nc,nd,ne,nf>\n {puts("CORRECT");BEGIN 0;}
\n {puts("EMPTY LINE");BEGIN 0;}

0 {BEGIN n0;}
1 {BEGIN n1;}
2 {BEGIN n2;}
3 {BEGIN n3;}
4 {BEGIN n4;}
5 {BEGIN n5;}
6 {BEGIN n6;}
7 {BEGIN n7;}
8 {BEGIN n8;}
9 {BEGIN n9;}
A {BEGIN na;}
B {BEGIN nb;}
C {BEGIN nc;}
D {BEGIN nd;}
E {BEGIN ne;}
F {BEGIN nf;}
. {BEGIN err;}

%%
int main(){yylex();return 0;}