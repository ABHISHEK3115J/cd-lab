%{
#include<stdio.h>
int p=0;
int s=0;
%}
%%
"scanf" {s++;fprintf(yyout,"readf");}
"printf" {p++;fprintf(yyout,"writef");}
; {fprintf(yyout,"%s",yytext);}
\n {fprintf(yyout,"\n");}
%%
int main()
{
yyin = fopen("temp.c","r+");
yyout = fopen("temp1.c","r+");
yylex();
printf("Number of scanfs=%d\nNumber of printfs=%d\n",s,p);
}
