%{
	#include <stdio.h>
%}
%token TEXT
%%
start: '<'TEXT'>';
%%
main()
{
	yyparse();
}
yyerror()
{
	printf("INVALID\n");
}