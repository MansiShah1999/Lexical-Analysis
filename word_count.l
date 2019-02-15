%{
int char_count=0,s_count=0;
int w_count=0,l_count=0;
%}

letter [a-zA-Z]

%%
\n {l_count++;}
{letter}+ {w_count++; char_count+=yyleng;}
[" "] {s_count++;}
%%

main()
{
printf("\nEnter the string:");
yylex();
printf("\nCharacter count:%d",char_count);
printf("\nWord count:%d",w_count);
printf("\nLine count:%d",l_count);
printf("\nSpace count:%d",s_count);
}
