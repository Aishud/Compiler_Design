%{
#include<stdio.h>
int sc=0,wc=0,lc=0,cc=0;
%}

%%
[\n] { lc++; cc+=yyleng;}
[  \t] { sc++; cc+=yyleng;}
[^\t\n ]+ { wc++;  cc+=yyleng;}
%%
int yywrap()
{
    return 1;
}
int main()
{
	extern FILE *yyin;
	yyin = fopen("Input.txt", "r");
	yylex();
	printf("The number of lines=%d\n",lc);
	
	printf("The number of words=%d\n",wc);
	printf("The number of characters are=%d\n",cc);
	return 0;
}
