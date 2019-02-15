%{
int par_count1=0;
int par_count2=0;
int flag=0;
%}

letter [^ \n\t()]
par1 [(]
par2 [)]

%%
{letter}*{par1}{letter}*{par2}	{flag=0;}

{letter}*{par2}{letter}*{par1}	{flag=1;}

{par1}	{par_count1++;}

{letter} {printf("%c",yytext[0]);}

{par2}	{par_count2++;}


%%

int main()
{
printf("Enter string:");
yylex();

if(flag!=1)
{
	if(par_count1==par_count2)
		printf("\nParenthisis match");
	else if(par_count1>par_count2)
		printf("\nRight missing");
	else
		printf("\nLeft missing");
}
else
	printf("\nNot valid");
		
return 0;
}

	
