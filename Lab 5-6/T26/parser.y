%{
     #include <stdio.h>
     #include <string.h>
     int yyerror(char*);
     int yylex();
%}

%token PREFIX X YSIGN Y EOLT

%%

input:
  input line
  |
  ;
line:
  expr EOLT
  | error EOLT {yyerrok;}
  ;
expr:
  PREFIX X YSIGN Y {if($3) $4*=-1; printf("cos(phi) = %d/|z|\nsin(phi) = %d/|z|\n",$2,$4);}
  |X YSIGN Y {if($2) $3*=-1; printf("cos(phi) = %d/|z|\nsin(phi) = %d/|z|\n",$1,$3);}
  ;

%%

int yyerror(char *s){
    puts("INCORRECT");
    return 1;
}

int main(){
    return yyparse();
}