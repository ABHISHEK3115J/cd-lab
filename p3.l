%{
#include<stdio.h>
int posno= 0;
int negno = 0;
int posfrac = 0;
int negfrac = 0;
int invl = 0;
%}
%%
[0-9]\.-[0-9]* {invl++;}
\+?[0-9]+ {posno++;}
-[0-9] {negno++;}
\+?[0-9]*\.[0-9]+ {posfrac++;}
\+?[0-9]*+[/][0-9]+ {posfrac++;}
-[0-9]*\.[0-9]+ {negfrac++;}
-[0-9]*+[/][0-9]+ {negfrac++;}
& return 0;
%%
int main()
{
printf("Enter the numbers : ");
yylex();
printf("No of invalid numbers = %d\n",invl);
printf("No of positive numbers = %d\n",posno);
printf("No of negative numbers = %d\n",negno);
printf("No of positive fractions = %d\n", posfrac);
printf("No of negative fractions = %d\n", negfrac);
}
