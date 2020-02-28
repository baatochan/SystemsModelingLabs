grammar Baato;

@members {
	class DivBy0Exception extends RuntimeException {
		DivBy0Exception() {
			System.out.println("Błędna wartość dzielnika! Dzielnik nie może być 0.");	
		}
	}
}

plik	:
	((
		expr {System.out.println("Wynik " + $expr.text + " = " + $expr.res);} 
		NL
	))* 
	EOF
	;

expr returns [Integer res]	:
	t1 = term {$res = $t1.res;}
	((
		PLUS t2 = term {$res += $t2.res;} 
		| MINUS t3 = term {$res -= $t3.res;}
	))*
	;
	catch [DivBy0Exception foo] {$res = 0;}
	
term returns [Integer res]	:
	t1 = term2 {$res = $t1.res;} 
	((
		MUL t2 = term2 {$res *= $t2.res;} 
		| DIV t3 = term2 {
			if ( $t3.res != 0) {
				$res /= $t3.res;
			} else {
				throw new DivBy0Exception();
			} 
		}
	))*
	;
	
term2 returns [Integer res]	:
	a1 = atom {$res = $a1.res;} 
	(( MOD a2 = atom {$res = $res \% $a2.res;} ))*
	;

atom returns [Integer res]	:
	INT {$res = Integer.parseInt($INT.text);} 
	| (
		LP 
		expr {$res = $expr.res;} 
		RP
	)
	;

ID  :
	('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'0'..'9'|'_')*
    ;

INT :
	'0'..'9'+
    ;

COMMENT
    :   '//' ~('\n'|'\r')* '\r'? '\n' {$channel=HIDDEN;}
    |   '/*' ( options {greedy=false;} : . )* '*/' {$channel=HIDDEN;}
    ;

WS  :   ( ' '
        | '\t'
        | '\r'
        ) {$channel=HIDDEN;}
    ;
    
PLUS	:	'+';
MINUS	:	'-';
MUL	:	'*';
DIV	:	'/';
MOD :	'%';

LP	:	'(';
RP	:	')';

NL	:	'\n';
