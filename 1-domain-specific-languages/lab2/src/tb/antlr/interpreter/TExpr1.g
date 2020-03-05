tree grammar TExpr1;

options {
	tokenVocab=Expr;

	ASTLabelType=CommonTree;
    superClass=MyTreeParser;
}

@header {
package tb.antlr.interpreter;
}

prog    : ( e=expr {drukuj ($e.text + " = " + $e.out.toString());} 
          | expr2
          )* 
        ;

expr returns [Integer out]
	      : ^(PLUS  e1=expr e2=expr) {$out = add($e1.out, $e2.out);}
        | ^(MINUS e1=expr e2=expr) {$out = substract($e1.out, $e2.out);}
        | ^(MUL   e1=expr e2=expr) {$out = multiply($e1.out, $e2.out);}
        | ^(DIV   e1=expr e2=expr) {$out = divide($e1.out, $e2.out);}
        | ^(MOD   e1=expr e2=expr) {$out = modulo($e1.out, $e2.out);}
        | INT                      {$out = getInt($INT.text);}
        | ID                       {$out = getValue($ID.text);}
        ;

expr2 
        : ^(VAR  i1=ID)            {declareVar($ID.text);}
        | ^(PODST i1=ID   e2=expr) {setValue($ID.text, $e2.out);}
        ;