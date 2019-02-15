positive [1-9]
zero [0]


%%
[+]{positive}+[.]?({positive}|{zero})* {printf("Positive");}
[+]{zero}+[.]?{positive}({positive}|{zero})* {printf("Positive");}
[-]{positive}+[.]?({positive}|{zero})* {printf("Negative");}
[-]{zero}+[.]?{positive}({positive}|{zero})* {printf("Negative");}
([+]|[-]){zero}+[.]?{zero}* {printf("Zero");}

%%

int main()
{
printf("Enter String:");
yylex();
return 0;
}
