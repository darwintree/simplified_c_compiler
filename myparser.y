%{
/****************************************************************************
myparser.y
ParserWizard generated YACC file.

Date: 2017��10��15��
****************************************************************************/

#include "mylexer.h"
%}

/////////////////////////////////////////////////////////////////////////////
// declarations section

// parser name
%name myparser

// class definition
{
	// place any extra class members here
}

// constructor
{
	// place any extra initialisation code here
}

// destructor
{
	// place any extra cleanup code here
}

// attribute type
%include {
#ifndef YYSTYPE
#define YYSTYPE int
#endif
}

// place any declarations here

%%

/////////////////////////////////////////////////////////////////////////////
// rules section

// place your YACC rules here (there must be at least one)

Grammar
	: /* empty */
	;

%%

/////////////////////////////////////////////////////////////////////////////
// programs section

int main(void)
{
	FILE *fp1, *fp2;
	freopen_s(&fp1, "input.txt", "r", stdin);
	freopen_s(&fp2, "output.txt", "w", stdout);
	int n = 1;
	mylexer lexer;
	myparser parser;
	if (parser.yycreate(&lexer)) {
		if (lexer.yycreate(&parser)) {
			n = parser.yyparse();
		}
	}
	return n;
}

