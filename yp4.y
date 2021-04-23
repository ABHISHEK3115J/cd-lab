%{
 #include<stdio.h>
%}
%%
S:A B;
A:'a'A'b'
 |
 ;
B:'b'B'c'
 |
 ;
%%

int yyerror(){
printf("invalid string");
exit(0);
}

int main()
{
printf("enter the string");
yyparse();
printf("valid string");
}
