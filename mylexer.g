lexer grammar mylexer;

options {
  language = Java;
}

/*----------------------*/
/*   Reserved Keywords  */
/*----------------------*/
INT_TYPE  : 'int';          // integer -> int
CHAR_TYPE : 'char';
VOID_TYPE : 'void';
FLOAT_TYPE: 'float';
WHILE_    : 'WHILE';
MAIN_FUNC : 'main';
AUTO  : 'auto';
DOUBLE_TYPE : 'double';
STRUCT  : 'struct';
BREAK : 'break';
ELSE  : 'else';
LONG  : 'long';
SWITCH  : 'switch';
CASE  : 'case';
ENUM  : 'enum';
REGISTER  : 'register';
TYPEDEF:  'typedef';
EXTERN  : 'extern';
RETURN  : 'return';
UNION : 'union';
CONTINUE  : 'continue';
FOR : 'for';
SIGNED  : 'signed';
DO  : 'do';
IF  : 'if';
STATIC  : 'static';
DEFAULT : 'default';
GOTO  : 'goto';
SIZEOF  : 'sizeof';
VOLATILE  : 'volatile';
CONST : 'const';
SHORT_TYPE :  'short';
UNSIGN_TYPE : 'unsigned';

/*----------------------*/
/*  Compound Operators  */
/*----------------------*/

EQ_OP : '==';
LE_OP : '<=';
GE_OP : '>=';
NE_OP : '!=';
PP_OP : '++';
MM_OP : '--'; 
RSHIFT_OP : '<<';
LSHIFT_OP : '>>';
BIN_AND : '&';
BIN_OR  : '|';
FUNCTION_CALL_OP  : '('|')';
SUBSCRIPT_OP  : '['|']';
ELEMENT_SELECTOR  : '->';
BOOLEAN_NOT : '!';
BINARY_NOT  : '~';

MULTI : '*';
DIV : '/';
ADD : '+';
SUB : '-';
AND : '&&';
OR  : '||';
CD_OP : '?:';
ASS_OP  : '=';
COMMA : ',';
END_of_line : ';';
CURELY_BRACKETS : '{'|'}';
QUOTATION : '"';
MOD : '%';
LESS_THAN : '<';
LARGE_THAN  : '>';
COLON : ':';
CD_LINE  : '\\n';
Apostrophe  : '\'';

NULL  : 'NULL';
ADDRESS_OP  : '&'(LETTER)+;

DEC_NUM : ('0' | ('1'..'9')(DIGIT)*);

ID : (LETTER)(LETTER | DIGIT)*;

FLOAT_NUM: FLOAT_NUM1 | FLOAT_NUM2 | FLOAT_NUM3;
fragment FLOAT_NUM1: (DIGIT)+'.'(DIGIT)*;
fragment FLOAT_NUM2: '.'(DIGIT)+;
fragment FLOAT_NUM3: (DIGIT)+;

NEW_LINE: '\n';

/* Comments */
COMMENT1 : '//'(.)*'\n';
COMMENT2 : '/*' (options{greedy=false;}: .)* '*/';



fragment LETTER : 'a'..'z' | 'A'..'Z' | '_';
fragment DIGIT : '0'..'9';


WS  : (' '|'\r'|'\t')+
    ;

/*New lexer */
INCLUDE :  '#include';
LIB_TYPE2 : ((LETTER)|(DIGIT))+'.h';
VAR_TYPE  : '%'(LETTER)+;