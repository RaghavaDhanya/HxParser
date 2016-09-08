%{
	#include <stdio.h>
	#include "HxParser.tab.c"
%}
%%
[a-zA-Z]+	return TEXT;
.	return yytext[0];
%%

int yywrap(void)
{
   return 0;
}

