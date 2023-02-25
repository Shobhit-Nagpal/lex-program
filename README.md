# lex-program
# Introduction
1. <a href="#theory">Theory</a>
2. <a href="#implementation">Implementation</a>

# <a id="theory">Theory</a>
In compiler design, one of the phases that a compiler goes through is 'Lexical Analysis'.

In lexical analysis, the input given to the compiler (which is a high-level language program) is converted into a sequence of **tokens** by the lexical analyzer.

What is a token?
A token is basically a sequence of characters that can be treated as a unit.

How do you make a lexical analyzer?
Through LEX.

What is LEX?
It is a program or software that generates lexical analyzers. T

Structure of a lex program:
A lex program contains 3 parts:
1. Declaration section
2. Translation rules
3. Auxiliary functions

# 1. Declaration section
The declaration section is the part where we declare variables, constants and regular expressions. Header files can also be declared here.

We write the declaration section in the document as follows:
%{
  varibles, constants, header files
%}

regular expressions

# 2. Translation rules
The translation rules part is where we declare the rules of identifying a pattern and performing an action based on the relevant pattern. The actions are C-language statements.

We write the rules in between '%%' symbols starting before and after, shown as follows: <br>

%% <br>
pattern {action} <br>
%% <br>

# 3. Auxiliary functions
The auxiliary functions part is where the functions that are used in the actions are written. The functions are compiled separately and loaded wit lexical analyzer.

How is a lex program compiled?

In the first stage, the 'filename.l' file is compiled with a Lex compiler and the output is a 'lex.yy.c' file which is a C file.

In the second stage, the 'lex.yy.c' is compiled with a C compiler and the output is a binary file of the name 'a.out' which is what your computer executes.

# <a id="implementation">Implementation</a>

# How to write and run a lex program in Ubuntu?

## Step 1:
Install flex through your terminal with the command <br>
<code>sudo apt-get install flex</code>

## Step 2:
Create a directory and a file with the extension '.l' inside the directory.
Ex: lex.l

## Step 3:
Write out the program in the file and save it.

## Step 4:
In your terminal, make sure you are in the same directory where your lex file is present and write the following commands to compile and execute the program:<br>
<code>flex filename.l</code> <br>
<code>cc lex.yy.c -lfl</code><br>
<code>./a.out</code>