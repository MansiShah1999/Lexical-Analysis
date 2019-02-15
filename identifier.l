letter [a-zA-Z]
num [0-9]
type int|float|char|if|for|while|switch|else|void 

%%
{type} {printf("\nKeyword");}
{letter}+({letter}|{num})* {printf("\nIdentifier");}
{num}+ {printf("\nConstants");}
{num}+({letter}|{num})* {printf("\nError");}
%%

main()
{
printf("\nEnter string:");
yylex();
}
