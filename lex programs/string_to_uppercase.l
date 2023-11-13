%{
#include<stdio.h>
%}
LOWER [a-z]
UPPER [A-Z]

%%
[\t]+                    ;
{UPPER} { printf("%c\n", yytext[0]); }
{LOWER} { printf("%c\n", yytext[0] - 32); }
\n { return 0; }
%%

int yywrap(){
  return 1;
}
int main() {
  yylex();
  return 0;
}
