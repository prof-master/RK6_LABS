%{
    #include <stdio.h>
    #include <math.h>
    void yyerror(char* str);
    int yylex(void);    
%}
%union {float cfloat;}
%token<cfloat> NUMBER 
%token ZERO DIVISION EOLT
%type<cfloat> expr

%%
input: 
    |
    input expr EOLT {printf("%.0f\n",$2);}
    |
    input error EOLT {yyerrok;}

    ;

expr:

NUMBER DIVISION NUMBER {$$ = ceil($1/$3);}
|ZERO DIVISION NUMBER {$$=0;}
;

%%

int main()
{
    return(yyparse());
}

void yyerror(char* str)
{
    puts("INCORRECT");
}

int yywrap()
{
    return(1);
}
