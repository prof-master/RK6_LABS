%{#include<stdio.h>
%}
%start n0 n1 n2 n3 n4 n5 n6 n7 n8 n9 na nb nc nd ne nf err
%%
<n0>0 {BEGIN n0;}
<n0,n1>1 {BEGIN n1;}
<n0,n1,n2>2 {BEGIN n2;}
<n0,n1,n2,n3>3 {BEGIN n3;}
<n0,n1,n2,n3,n4>4 {BEGIN n4;}
<n0,n1,n2,n3,n4,n5>5 {BEGIN n5;}
<n0,n1,n2,n3,n4,n5,n6>6 {BEGIN n6;}
<n0,n1,n2,n3,n4,n5,n6,n7>7 {BEGIN n7;}
<n0,n1,n2,n3,n4,n5,n6,n7,n8>8 {BEGIN n8;}
<n0,n1,n2,n3,n4,n5,n6,n7,n8,n9>9 {BEGIN n9;}
<n0,n1,n2,n3,n4,n5,n6,n7,n8,n9,na>a {BEGIN na;}
<n0,n1,n2,n3,n4,n5,n6,n7,n8,n9,na,nb>b {BEGIN nb;}
<n0,n1,n2,n3,n4,n5,n6,n7,n8,n9,na,nb,nc>c {BEGIN nc;}
<n0,n1,n2,n3,n4,n5,n6,n7,n8,n9,na,nb,nc,nd>d {BEGIN nd;}
<n0,n1,n2,n3,n4,n5,n6,n7,n8,n9,na,nb,nc,nd,ne>e {BEGIN ne;}
<n0,n1,n2,n3,n4,n5,n6,n7,n8,n9,na,nb,nc,nd,ne,nf>f {BEGIN nf;}

<n0,n1,n2,n3,n4,n5,n6,n7,n8,n9,na,nb,nc,nd,ne,nf>. {BEGIN err;}
<err>. ;

<err>\n {puts("error was in text you dolbaeb");BEGIN 0;}
<n0,n1,n2,n3,n4,n5,n6,n7,n8,n9,na,nb,nc,nd,ne,nf>\n {puts("your text correct zaebis");BEGIN 0;}
\n {puts("empty line zaebal");BEGIN 0;}

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
a {BEGIN na;}
b {BEGIN nb;}
c {BEGIN nc;}
d {BEGIN nd;}
e {BEGIN ne;}
f {BEGIN nf;}

. {BEGIN err;}
%%
int yywrap(){return 1;}
int main(){yylex();return 0;}