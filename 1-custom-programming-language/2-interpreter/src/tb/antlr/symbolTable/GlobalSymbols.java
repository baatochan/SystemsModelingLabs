package tb.antlr.symbolTable;

import java.util.HashMap;

public class GlobalSymbols {
	
	HashMap<String, Integer> memory = new HashMap<>();

	public GlobalSymbols() {
	}
	
	public boolean hasSymbol(String name) {
		return memory.containsKey(name);
	}

	public void newSymbol(String name) throws RuntimeException{
		if (! hasSymbol(name))
			memory.put(name, null);
		else
			throw new RuntimeException("Variable " + name +" exists!");
	}
	
	public void setSymbol(String name, Integer value) throws RuntimeException {
		if( hasSymbol(name))
			memory.put(name, value);
		else
			throw new RuntimeException("Variable " + name +" does not exist!");
	}
	
	public Integer getSymbol(String name) throws RuntimeException {
		if( hasSymbol(name))
			return memory.get(name);
		else
			throw new RuntimeException("Variable " + name +" does not exist!");
	}
	
}
