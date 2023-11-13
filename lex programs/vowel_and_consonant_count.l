%{
#include<stdio.h>
int w=0,c=0;
%}

%%
[aeiouAEIOU] {w++;}
[a-zA-Z] {c++;}
\n {return 0;}
%%
int yywrap()
{
    return 1;
}
int main()
{
        printf("Enter string:");
	yylex();
	printf("The number of consonants=%d\n",c);
	printf("The number of vowels=%d\n",w);
	return 0;
}
