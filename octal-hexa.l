octal [0-7]
hexa [0-9A-F]

%%
{octal}+[O|o] {printf("Octal");}
{hexa}*[G-WY-Z]+{hexa}*[X|x] {printf("ERROR");}
{hexa}+[X|x] {printf("Hexadecimal");}

%%

int main()
{
printf("Enter string:");
yylex();
return 0;
}
