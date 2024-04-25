%{
#include <stdio.h>
int yylex (void);
void yyerror (char const*);
%}

%%

input : {printf("ENTER NUMBER:\n");}
  | input output
  ;

output: '\n'
| error '\n' {yyerrok;}
| N0 '\n' {printf("CORRECT\n");}
;

N0 : '0' | N0 '0' | N1 ;

N1 : '1' | N1 '1' | N2 ;

N2 : '2' | N2 '2' | N3 ;

N3 : '3' | N3 '3' | N4 ;

N4 : '4' | N4 '4' | N5 ;

N5 : '5' | N5 '5' | N6 ;

N6 : '6' | N6 '6' | N7 ;

N7 : '7' | N7 '7' | N8 ;

N8 : '8' | N8 '8' | N9 ;

N9 : '9' | N9 '9' | N10;

N10 : 'A' | N10 'A' | 'a' | N10 'a' | N11;

N11 : 'B' | N11 'B' | 'b' | N11 'b' | N12;

N12 : 'C' | N12 'C' | 'c' | N12 'c' | N13;

N13 : 'D' | N13 'D' | 'd' | N13 'd' | N14;

N14 : 'E' | N14 'E' | 'e' | N13 'e' | N15;

N15 : 'F' | N15 'F' | 'f' | N15 'f' ;
%%

int yylex(void) {
  return (getchar());
}  

void yyerror (char const* s){
  fprintf(stderr, "ERROR\n");
}

int main() {
  return(yyparse());
}
