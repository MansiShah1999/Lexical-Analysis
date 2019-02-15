%{
int vowels=0;
int consonants=0;
%}

%%
[aeiouAEIOU] {vowels++;}
[a-zA-Z] {consonants++;}
%%

int main(void)
{
printf("Enter the string:");
yylex();
printf("\nNo of vowels:%d",vowels);
printf("\nNo of consonanats:%d",consonants);
return 0;
}

