
%{
#include<stdio.h>
 int words=0;
 int lines=0;
 int characters=0;
 int blank_space=0;
%}

%%
[a-zA-Z]+ {words++;characters=characters+yyleng;}
[\n] {lines++;}
[" "] {blank_space++;}
"&" return 0;
%%

int main()
{
printf("enter the string\n");
yylex();
printf(" words =  %d\n lines =  %d\n characters = %d\n blank_space = %d\n",words,lines,characters,blank_space);
return 0;
}
