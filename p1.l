
%{
#include<stdio.h>
 int v=0;
 int c=0;
%}

%%
[aeiouAEIOU] {v++;}
[A-Za-z] {c++;}
"\n" return 0;
%%

int main()
{
printf("enter the string");
yylex();
printf("the number of vowels are %d and consonants are %d",v,c);
return 0;
}
