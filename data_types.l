digit	[0-9-]
letter	[^\n]

%%
{digit}+			{printf("\nint");}
{digit}+[.]{digit}+		{printf("\nfloat");}
[']{letter}[']			{printf("\nchar");}
["]{letter}{letter}+["]		{printf("\nString");}
%%

int main()
{
printf("Enter string:");
yylex();
return 0;
}
