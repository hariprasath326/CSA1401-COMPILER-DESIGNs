%{
#include <stdio.h>
%}

%%

^[0-9]{10}$      { printf("Valid 10-digit mobile number\n"); }

.*               { printf("Invalid mobile number\n"); }

%%

int yywrap()
{
    return 1;
}

int main()
{
    printf("Enter a mobile number: ");
    yylex();
    return 0;
}