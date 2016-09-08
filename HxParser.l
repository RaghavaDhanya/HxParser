%{
	#include <stdio.h>
	#include "HxParser.tab.c"
%}
%%
"<"[a-zA-Z]+">"		return STAG;
"</"[a-zA-Z]+">" 	return ETAG;
[a-zA-Z]+			return DATA;
[ \t]				;
[\n]				return 0;
.					return yytext[0];
%%

int yywrap(void)
{
   return 0;
}

