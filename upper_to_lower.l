small_char [a-z]
Caps [A-Z]

%%
{small_char} {printf("%c",yytext[0]-32);}
{Caps} {printf("%c",yytext[0]+32);}
%%

int main()
{
printf("\nEnter string:");
yylex();
return 0;
}
