package jruby4max.rubysupport;

/*
 Copyright (c) 2010, Adam Murray (adam@compusition.com). All rights reserved.

 Redistribution and use in source and binary forms, with or without
 modification, are permitted provided that the following conditions are met:

 1. Redistributions of source code must retain the above copyright notice, 
 this list of conditions and the following disclaimer.

 2. Redistributions in binary form must reproduce the above copyright notice,
 this list of conditions and the following disclaimer in the documentation
 and/or other materials provided with the distribution.

 THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
 A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR
 CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
 PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
 PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
 LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
 NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
 SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

 */

public enum SymbolConversionOption {
	
	/** 
	 * Convert incoming Max symbols to Ruby strings
	 */
	STRING  ("string"),
	
	/** 
	 * Convert incoming Max symbols to Ruby symbols
	 */	
  SYMBOL  ("symbol"),
  
  /** 
	 * Don't modify incoming Max symbols (so they can be interpreted as literal numbers, reference method names, etc)
	 */	  
  LITERAL ("literal"),
  
  /** 
	 * Apply the previous setting to the remaining inlets
	 */	    
  REMAINING_INLETS ("*");
	
	public static SymbolConversionOption DEFAULT = LITERAL;
	
  SymbolConversionOption(String stringValue) {
  	this.stringValue = stringValue;
  }
    
  /**
	 * The string value of this enumerated value.
	 */
  public String toString() {
  	return stringValue;
  }
  private final String stringValue;
  
  public static SymbolConversionOption fromString(String stringValue) {
  	if(STRING.stringValue.equals(stringValue)) {
  		return STRING;
  	}
  	else if(SYMBOL.stringValue.equals(stringValue)) {
  		return SYMBOL;
  	}
  	else if(LITERAL.stringValue.equals(stringValue)) {
  		return LITERAL;
  	}
  	else if(REMAINING_INLETS.stringValue.equals(stringValue)) {
  		return REMAINING_INLETS;
  	}
  	else {
  		return null;
  	}
  }

}
