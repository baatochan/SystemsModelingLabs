grammar Expr;

options {
  output=AST;
  ASTLabelType=CommonTree;
}

@header {
package tb.antlr;
}

@lexer::header {
package tb.antlr;
}

prog
    : (stat )+ EOF!;

stat
    : expr NL -> expr

//    | VAR ID PODST expr NL -> ^(VAR ID) ^(PODST ID expr)
    | VAR ID NL -> ^(VAR ID)
    | ID PODST expr NL -> ^(PODST ID expr)

    | NL ->
    ;

expr
    : multExpr
      ( PLUS^ multExpr
      | MINUS^ multExpr
      )*
    ;

multExpr
    : atom
      ( MUL^ atom
      | DIV^ atom
      | MOD^ atom
      )*
    ;

atom
    : INT
    | ID
    | LP! expr RP!
    ;

VAR :'var';

ID : ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'0'..'9'|'_')*;

INT : '0'..'9'+;

NL : '\r'? '\n' ;

WS : (' ' | '\t')+ {$channel = HIDDEN;} ;


LP
	:	'('
	;

RP
	:	')'
	;

PODST
	:	'='
	;

PLUS
	:	'+'
	;

MINUS
	:	'-'
	;

MUL
	:	'*'
	;

DIV
  : '/'
  ;

MOD
  : '%'
  ;
