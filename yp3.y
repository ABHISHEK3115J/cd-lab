%{
 #include<stdio.h>
%}
%%
S:'a''a''a''a'A'b';
A:'a'A
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
