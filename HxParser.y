%{
	#include <stdio.h>
	#include <string.h>
%}
%union {
	char* str;
}
%token <str> STAG 
%token <str> TEXT 
%token <str> ETAG
%type <str> doc ele data
%%
doc:	STAG ele ETAG {	if(strcmp($1,$3)==0) printf("valid\n"); };
ele:	data doc| data;
data:	TEXT | ; 
%%
main()
{
	yyparse();
}
yyerror()
{
	printf("INVALID\n");
}
