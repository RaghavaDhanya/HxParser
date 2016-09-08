%{
	#include <stdio.h>
%}
%token STAG ETAG DATA
%%
start: STAG text ETAG;
text: text1 start|text1;
text1: DATA|;
%%
main()
{
	yyparse();
}
yyerror()
{
	printf("INVALID\n");
}