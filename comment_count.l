%{
int comment_no=0;
%}

%%
[/][*][^*]*[*]+([^*/][^*]*[*]+)*[/] {comment_no++;}
[/][/].* {comment_no++;}
%%

int main()
{
printf("Enter string:");
yylex();
printf("\nNo of comments:%d",comment_no);
return 0;
}
