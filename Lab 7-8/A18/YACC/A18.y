%{
#include <stdio.h>
int yylex (void);
void yyerror (char const*);
%}

%%

input : {printf("Enter number:\n");}
  | input output
  ;

output: '\n'
| error '\n' {yyerrok;}
| N0 '\n' {printf("CORRECT!\n");}
;


N0 : 'F' | N0 'F' | N1 ;

N1 : 'E' | N1 'E' | N2 ;

N2 : 'D' | N2 'D' | N3 ;

N3 : 'C' | N3 'C' | N4 ;

N4 : 'B' | N4 'B' | N5 ;

N5 : 'A' | N5 'A' | N6 ;

N6 : '9' | N6 '9' | N7 ;

N7 : '8' | N7 '8' | N8 ;

N8 : '7' | N8 '7' | N9 ;

N9 : '6' | N9 '6' | N10;

N10 : '5' | N10 '5' | N11;

N11 : '4' | N11 '4' | N12;

N12 : '3' | N12 '3' | N13;

N13 : '2' | N13 '2' | N14;

N14 : '1' | N14 '1' | N15;

N15 : '0' | N15 '0' ;
%%


int main() {
  return(yyparse());
}

int yylex(void) {
  return (getchar());
}  

void yyerror (char const* s){
  fprintf(stderr, "%s\n", s);
}