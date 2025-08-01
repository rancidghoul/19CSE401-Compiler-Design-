/* Lex program to Count the Positive numbers, 
      - Negative numbers and Fractions  */

%{
     /* Definition section */
    int postiveno=0;
    int negtiveno=0;
    int positivefractions=0;
    int negativefractions=0;
%}

/* Rule Section */
DIGIT [0-9]
%%

\+?{DIGIT}+             postiveno++;
-{DIGIT}+               negtiveno++;

\+?{DIGIT}*\.{DIGIT}+   positivefractions++;
-{DIGIT}*\.{DIGIT}+     negativefractions++;
. ;   
%%

// driver code
int main()
{
    yylex();
    printf("\nNo. of positive numbers: %d", postiveno);
    printf("\nNo. of Negative numbers: %d", negtiveno);
    printf("\nNo. of Positive numbers in fractions: %d", positivefractions);
    printf("\nNo. of Negative numbers in fractions: %d\n", negativefractions);
    return 0;
}
