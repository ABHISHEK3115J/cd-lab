/*Lex code to count total number of tokens */

%{
int key = 0 ;
int iden = 0;
int oper = 0;
%}

%%

"while"|"if"|"else" {key++;}

"int"|"float" {key++;}

[a-zA-Z_][a-zA-Z0-9_]* {iden++;}

"<="|"=="|"="|"++"|"-"|"*"|"+" {oper++;}
						

. ;
%%


int main()

{
        yyin = fopen("c.c","r+");
        yyout = fopen("d.c","r+");	
	yylex();
	
	printf("\n total no. of keywords = %d\n", key);
        printf("total no. of identifiers = %d\n",iden);
        printf("total no. of operators = %d\n",oper);
	
}

