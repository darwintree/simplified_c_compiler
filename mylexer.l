%{
/****************************************************************************
mylexer.l
ParserWizard generated Lex file.

Date: 2017��10��15��
****************************************************************************/

#include "myparser.h"
#include <vector>
#include <string>
struct IdStruct
{
    //int type;
    string name;
    //int address;
};
vector<IdStruct> id;
%}

/////////////////////////////////////////////////////////////////////////////
// declarations section

// lexical analyser name
%name mylexer

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

// place any declarations here

%%
/////////////////////////////////////////////////////////////////////////////
// rules section

%{
	// extract yylval for use later on in actions
	YYSTYPE YYFAR& yylval = *(YYSTYPE YYFAR*)yyparserptr->yylvalptr;
%}
[ \n\t]+  ;
//������
int   
{
    printf("\tINT");
    printf("\t%s", yytext);
    printf("\t");
    printf("\n");
} 
char 
{
    printf("\tCHAR");
    printf("\t%s", yytext);
    printf("\t");
    printf("\n");
}  
float 
{
    printf("\tFLOAT");
    printf("\t%s", yytext);
    printf("\t");
    printf("\n");
} 
double 
{
    printf("\tDOUBLE");
    printf("\t%s", yytext);
    printf("\t");
    printf("\n");
} 
if 
{
    printf("\tIF");
    printf("\t%s", yytext);
    printf("\t");
    printf("\n");
}  
while 
{
    printf("\tWHILE");
    printf("\t%s", yytext);
    printf("\t");
    printf("\n");
}  
for 
{
    printf("\tFOR");
    printf("\t%s", yytext);
    printf("\t");
    printf("\n");
}
read 
{
    printf("\tREAD");
    printf("\t%s", yytext);
    printf("\t");
    printf("\n");
}  
write 
{
    printf("\tWRITE");
    printf("\t%s", yytext);
    printf("\t");
    printf("\n");
}
return
{
    printf("\tRETURN");
    printf("\t%s", yytext);
    printf("\t");
    printf("\n");
}  

//��ʶ��
[A-Za-z]([A-Za-z]|[0-9])*  
{
	int index = -1;
	for (int i = 0; i < id.size(); i++) {
		if (yytext == id[i].name) {
			index = i;
			break;
		}
	}
	if (index == -1) {
		IdStruct temp;
		temp.name = yytext;
		id.push_back(temp);
		index = id.size() - 1;
	}
	printf("\tID");
    printf("\t%s", yytext);
    printf("\t%d", index);
    printf("\n");
}   
// �����
"=" 
{
    printf("\tASSIGN");
    printf("\t%s", yytext);
    printf("\t");
    printf("\n");
} 
"{" 
{
    printf("\tILBRACE");
    printf("\t%s", yytext);
    printf("\t");
    printf("\n");
} 
"}" 
{
    printf("\tRBRACE");
    printf("\t%s", yytext);
    printf("\t");
    printf("\n");
} 
"," 
{
    printf("\tCOMMA");
    printf("\t%s", yytext);
    printf("\t");
    printf("\n");
} 
";" 
{
    printf("\tSQM");
    printf("\t%s", yytext);
    printf("\t");
    printf("\n");
} 
"(" ;
")" ;
// ��������
"+" 
{
    printf("\tPLUS");
    printf("\t%s", yytext);
    printf("\t");
    printf("\n");
} 
"-" 
{
    printf("\tMINUS");
    printf("\t%s", yytext);
    printf("\t");
    printf("\n");
}
"*" 
{
    printf("\tMUL");
    printf("\t%s", yytext);
    printf("\t");
    printf("\n");
}
"/" 
{
    printf("\tDIV");
    printf("\t%s", yytext);
    printf("\t");
    printf("\n");
}
// ȡģ�����λ����
"%" 
{
    printf("\tMOD");
    printf("\t%s", yytext);
    printf("\t");
    printf("\n");
}
"~"  
{
    printf("\tBITNOT");
    printf("\t%s", yytext);
    printf("\t");
    printf("\n");
} 
"&"  
{
    printf("\tBITAND");
    printf("\t%s", yytext);
    printf("\t");
    printf("\n");
} 
"|"  
{
    printf("\tBITOR");
    printf("\t%s", yytext);
    printf("\t");
    printf("\n");
} 
">>"  
{
    printf("\tRSHIFT");
    printf("\t%s", yytext);
    printf("\t");
    printf("\n");
} 
"<<"  
{
    printf("\tLSHIFT");
    printf("\t%s", yytext);
    printf("\t");
    printf("\n");
} 
"^"  
{
    printf("\tEXOR");
    printf("\t%s", yytext);
    printf("\t");
    printf("\n");
} 
// �߼�����
"!"  
{
    printf("\tNOT");
    printf("\t%s", yytext);
    printf("\t");
    printf("\n");
} 
"&&"  
{
    printf("\tAND");
    printf("\t%s", yytext);
    printf("\t");
    printf("\n");
} 
"||"  
{
    printf("\tOR");
    printf("\t%s", yytext);
    printf("\t");
    printf("\n");
} 
// ��ϵ����
">"  
{
    printf("\tMORE");
    printf("\t%s", yytext);
    printf("\t");
    printf("\n");
} 
">="  
{
    printf("\tNOLESS");
    printf("\t%s", yytext);
    printf("\t");
    printf("\n");
} 
"<"  
{
    printf("\tLESS");
    printf("\t%s", yytext);
    printf("\t");
    printf("\n");
} 
"<="  
{
    printf("\tNOMORE");
    printf("\t%s", yytext);
    printf("\t");
    printf("\n");
} 
// ����
([0-9])+ 
{
    printf("\tNUMBER");
    printf("\t%s", yytext);
    printf("\t");
    printf("\n");
} 
// place your Lex rules here 
\"(.+?)\" 
{
	printf("\tCONSTSTR");
    printf("\t%s", yytext);
    printf("\t");
    printf("\n");
} 
%%

/////////////////////////////////////////////////////////////////////////////
// programs section
