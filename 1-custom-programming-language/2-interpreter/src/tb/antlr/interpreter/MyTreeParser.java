package tb.antlr.interpreter;

import org.antlr.runtime.*;
import org.antlr.runtime.tree.*;

import tb.antlr.symbolTable.GlobalSymbols;

public class MyTreeParser extends TreeParser {
	
	private GlobalSymbols globalSymbols = new GlobalSymbols();

    public MyTreeParser(TreeNodeStream input) {
        super(input);
    }

    public MyTreeParser(TreeNodeStream input, RecognizerSharedState state) {
        super(input, state);
    }

    protected void drukuj(String text) {
        System.out.println(text.replace('\r', ' ').replace('\n', ' '));
    }

	protected Integer getInt(String text) {
		return Integer.parseInt(text);
	}
	
	protected Integer add(Integer a, Integer b) {
		return a+b;
	}
	
	protected Integer substract(Integer a, Integer b) {
		return a-b;
	}
	
	protected Integer multiply(Integer a, Integer b) {
		return a*b;
	}
	
	protected Integer modulo(Integer a, Integer b) {
		return a%b;
	}
	
	protected Integer divide(Integer a, Integer b) {
		if (b == 0) {
			throw new RuntimeException("Nie można dzielić przez 0.");
		}
		return a/b;
	}
	
	protected void declareVar(String n) {
		globalSymbols.newSymbol(n);
	}
	
	protected void setValue(String n, Integer v) {
		try {
			globalSymbols.getSymbol(n);
		} catch (Exception e) {
			declareVar(n);
		}
		globalSymbols.setSymbol(n, v);
	}
	
	protected Integer getValue(String n) {
		return globalSymbols.getSymbol(n);
	}
}
