%{
	#include <stdio.h>
	#include "HxParser.tab.c"
	#include <string.h>
	int stag=0,etag=0,i;
%}
%%
"</"				etag=1;
"<"					stag=1;
">"					stag=etag=0;
[ ]					;
[a-zA-Z0-9]+		{
						yylval.str=malloc (yyleng + 1);
						strcpy (yylval.str,yytext);
                        if(stag) return STAG;
                        else if(etag) return ETAG;
                        else return TEXT;
                    }
.					return yytext[0];
[\n]				return 0;
%%

int yywrap(void)
{
   return 0;
}
