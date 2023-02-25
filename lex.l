%{
/*Program to recognize keywords, letter, digit, identifiers, string and numbers*/
%}

letter [a-zA-Z]
digit [0-9]
identifier {letter}({letter}|{digit})*
number [0-9]+

%%
if |
else |
switch |
while |
do |
int |
float |
char |
for |
return |
long |
continue |
const |
double {printf("%s is a keyword\n",yytext);}

{letter} {printf("%s is a letter\n",yytext);}

{digit} {printf("%s is a digit\n",yytext);}

{number} {printf("%s is a number\n",yytext);}

{identifier} {printf("%s is an identifier\n",yytext);}

\+ |
\- |
\/ |
\* {printf("%s is an arithmetic symbol\n",yytext);}

\> |
\< |
\>= |
\<= |
\== {printf("%s is a relational operator\n",yytext);}

\".*\" {printf("%s is a string",yytext);}

.|\n {ECHO;}
%%

int main(int argc, char **argv) {

    printf("Enter your input: ");
    
    if (argc > 1) {
        FILE *file;
        file = fopen(argv[1],"r");
        
        if(!file) {
            printf("Couldn't open file");
            exit(0);
        }
        
        yyin = file;
    }
    
    yylex();
    return 0;
}

int yywrap() {
    return 0;
}
