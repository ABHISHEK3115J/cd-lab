%{
 #include<stdio.h>
%}
%%
S :'a' S 'b'
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
