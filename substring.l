letter [^ \n\t]	

%%
[d][d]	{printf(" ");}
{letter}	{printf("%c",yytext[0]);}
%%

int main()
{
printf("Enter a string:");
yylex();
return 0;
}
