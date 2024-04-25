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
| expr {printf("CORRECT!\n");}
;

expr : EVEN '\n' | ZERO '\n' ;

ZERO : ZERO '0' | EVEN '0' | '0';

ODD : ZERO '1' | EVEN '1' | '1';

EVEN : ODD '1';

%%


int main() {
  return(yyparse());
}

int yylex(void) {
  return (getchar());
}

void yyerror (char const* s){
  fprintf(stderr, "INCORRECT\n");
}
