package ajm;

/*
 Copyright (c) 2008-2009, Adam Murray (adam@compusition.com). All rights reserved.

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

import java.io.File;
import java.io.IOException;
import java.util.Date;

import ajm.maxsupport.AbstractMaxRubyObject;
import ajm.rubysupport.SymbolConversionOption;
import ajm.util.FileWatcher;
import ajm.util.TextBlock;
import ajm.util.Utils;

import com.cycling74.max.Atom;
import com.cycling74.max.Executable;
import com.cycling74.max.MaxSystem;

/**
 * The ajm.ruby MaxObject
 * 
 * @author Adam Murray (adam@compusition.com)
 */
public class ruby extends AbstractMaxRubyObject {

  private File scriptFile;
  private Atom[] scriptFileArgs;
  
  private int evalOutlet = -1;

  private boolean autowatch = false;
  private FileWatcher fileWatcher;
  
  private String[] symbolsTo;
  private SymbolConversionOption[] symbolConversionOptions;
  
  /**
   * The Constructor
   * 
   * @param args
   *          1 optional integer arg specifies the number of outlets
   */
  public ruby(Atom[] args) {
    super();
    declareAttribute("evalout", "getevalout", "evalout");
    declareAttribute("evaloutlet", "getevalout", "evalout");  // deprecated, for backward compatibility
    declareAttribute("file", "getfile", "file"); 
    declareAttribute("scriptfile", "getfile", "file"); // deprecated, for backward compatibility    
    declareAttribute("autowatch", "getautowatch", "autowatch");
    declareAttribute("symbols_to", "getsymbols_to", "symbols_to");
    
    int inlets = 1;
    if (args.length > 0 && args[0].isInt() && args[0].getInt() > 1) {
    	inlets = args[0].getInt();
    }        
    int outlets = 1;
    if (args.length > 1 && args[1].isInt() && args[1].getInt() > 1) {
    	outlets = args[1].getInt();
    }
    declareIO(inlets, outlets);    
    createInfoOutlet(false);
    
    symbolConversionOptions = new SymbolConversionOption[inlets];
    for(int i=0; i<symbolConversionOptions.length; i++) {
    	// the default behavior is to treat input literally
    	symbolConversionOptions[i] = SymbolConversionOption.DEFAULT;
    }
  }

  @Override
  protected Executable getInitializer() {
    return new RubyInitializer();
  }

  protected class RubyInitializer extends DefaultRubyInitializer {
    @Override
    public void execute() {
      super.execute();
      if (scriptFile != null) {
        initFile();
      }
    }
  }

  @Override
  public void notifyDeleted() {
    stopFileWatcher();
    super.notifyDeleted();
  }
  
  public int getevalout() {
    return evalOutlet;
  }

  public void evalout(int evalout) {
    if (evalout >= getNumOutlets()) {
      err("Invalid evalout " + evalout);
    }
    else {
      this.evalOutlet = evalout;
    }
  }

  public String getfile() {
  	if(scriptFile != null) {
  		return scriptFile.getAbsolutePath();
  	} else {
  		return null;
  	}
  }

  public void file(Atom[] args) {
    if (args != null && args.length > 0) {
      scriptFile = Utils.getFile(args[0].toString(), this.getParentPatcher());
      scriptFileArgs = Atom.removeFirst(args);
    }
    else {
      scriptFile = Utils.getFile(null);
      scriptFileArgs = Atom.emptyArray;
    }

    if (scriptFile != null && initialized) {
      initFile();
    } // if not initialized initFile() will be called by the Initializer
  }

  public boolean getautowatch() {
    return autowatch;
  }

  public void autowatch(boolean autowatch) {
    this.autowatch = autowatch;
    if (initialized) {
      if (autowatch) {
        startFileWatcher();
      }
      else {
        stopFileWatcher();
      }
    }
  }
  
  public String[] getsymbols_to() {
  	return symbolsTo;
  }
  
  public void symbols_to(String[] params) {
  	for(int i=0; i<params.length; i++) {
  		String param = params[i];
  		
  		if(i >= symbolConversionOptions.length) {
  			err("More @symbols_to arguments than inlets, ignoring extra arguments.");
  			break;
  		}  		
  		
  		SymbolConversionOption option = SymbolConversionOption.fromString(param);  		
  		if(option == null) {
  			err("Invalid @symbols_to argument '" + param + "'. Defaulting to " + SymbolConversionOption.DEFAULT);
  			// it was already initialized to the default in the constructor so there's nothing to do
  			continue;
  		}
  		else if(option == SymbolConversionOption.REMAINING_INLETS) {
  			if(i > 0) {  			
  				SymbolConversionOption previousOption = symbolConversionOptions[i-1];
  				for(int j=i; j<symbolConversionOptions.length; j++) {
  					symbolConversionOptions[j] = previousOption;
  				}  				
  			}
  			// else the first arg is a '*' in which case there's nothing to do (everything remains the default)
  			
  			if(i < params.length-1) {
  				err("Ignoring @symbols_to argument(s) after the " + SymbolConversionOption.REMAINING_INLETS);
  			}
  			// and we're done:
  			break;
  		}
  		else {
  			// handle all non-REMAINING_INLETS options:
  			symbolConversionOptions[i] = option;
  		}  		
  	} 
  	symbolsTo = new String[symbolConversionOptions.length];
  	for(int i=0; i<symbolsTo.length; i++) {
  		symbolsTo[i] = symbolConversionOptions[i].toString();
  	}
  }

  private void startFileWatcher() {
    if (fileWatcher == null) {
      if (scriptFile != null && autowatch) {
        fileWatcher = new FileWatcher(scriptFile, fileWatcherCallback);
        fileWatcher.start();
      }
    }
    else {
      fileWatcher.setFile(scriptFile); // in case a new file was loaded - see scriptfile() / initFile()
      fileWatcher.resumeWatching();
    }
  }

  private void stopFileWatcher() {
    if (fileWatcher != null) {
      fileWatcher.pauseWatching();
    }
  }

  private Executable fileWatcherCallback = new Executable() {
    public void execute() {
      loadFile();
    }
  };

  private void initFile() {
    stopFileWatcher();
    loadFile();
    startFileWatcher();
  }

  private synchronized void loadFile() {
    info("loading script '" + scriptFile + "' on " + new Date());
    try {
      ruby.init(scriptFile, scriptFileArgs);
    } catch (Exception e) { 
      err("Error evaluating script file: " + scriptFile.getPath());      
      // It seems that System.err.flush() takes care of printing out the error message.
//      if(verbose) {
//      	printRubyException(e);
//      }
    }
    flush();
  } 

  public void bang() {
    evalRuby("bang()");
  }

  public void list(Atom[] args) {
  	StringBuilder s = new StringBuilder();
  	int inletIdx = getInlet();  	
  	if(inletIdx <= 9) {
  		s.append("in").append(inletIdx).append("(");
  	}
  	else {
  		s.append("inlet(").append(inletIdx).append(",");
  	}
  	joinArgs(args, s, 0);
  	s.append(")");
  	evalRuby(s);
  }

	/** 
	 * @param args - method methods_args
	 */	
	public void call(Atom[] args) {
		if(args.length < 1 || args[0] == null) return;		
		StringBuilder s = new StringBuilder();
		s.append(args[0]);
		s.append("(");		
		joinArgs(args, s, 1);
		s.append(")");
		evalRuby(s);
	}
	
	/**
	 * @param args - receiver method methods_args
	 */
	public void send(Atom[] args) {
		if(args.length < 2 || args[0] == null || args[1] == null) return;		
		StringBuilder s = new StringBuilder();
		s.append(args[0]).append(".").append(args[1]);
		s.append("(");		
		joinArgs(args, s, 2);
		s.append(")");
		evalRuby(s);
	}
	
	public void eval(Atom[] args) {
		StringBuilder input = new StringBuilder();
		for (Atom arg : args) {
			input.append( Utils.detokenize(arg.toString()) ).append(" ");
		}
		evalRuby(input.toString().trim());
	}
	
	private void joinArgs(Atom[] args, StringBuilder s, int startIndex) {
		for (int i = startIndex; i < args.length; i++) {
			if (i > startIndex) {
				s.append(",");
			}
			Atom arg = args[i];
			if(arg == null) {
				continue;
			}
			String value = arg.toString();			
			switch (symbolConversionOptions[getInlet()]) {
				case STRING:
					// This might not work well with evaluated strings #{} if the double quotes is part of the evaluated expression.
					// In that case a workaround could be to try to refer to the quote with the unicode escape code?
					value = '"' + value.replaceAll("\"", "\\\\\"") + '"';
					break;

				case SYMBOL:
					value = ':' + value.replaceAll(" ", "_");
					break;
				
				default:
					value = Utils.detokenize(value);
			}
			s.append(value);
		}
	}
  
	public void text(String script) {
		evalRuby(script.trim());
	}
	
  public void textblock(String name) {
    String script = TextBlock.get(name);
    if (script != null) {
      evalRuby(script);
    }
    else {
      error("No textblock named '" + name + "'");
    }
  }

  protected void evalRuby(CharSequence input) {
    try {
      if (ruby == null) {
        err("not initialized yet. Did not evaluate: " + input
            + ". If you are loadbanging a script, try using a deferlow.");
        return;
      }
      Object val = ruby.eval(input, evalOutlet >= 0);
      if (evalOutlet >= 0) {       
        if (val instanceof Atom[]) {
          outlet(evalOutlet, (Atom[]) val);
        }
        else {
          outlet(evalOutlet, (Atom) val);
        }
      }
      // else negative numbers to suppress eval output
     
    } catch (Exception e) {
    	err("could not evaluate: " + input);
      // It seems that System.err.flush() takes care of printing out the error message.
//      if(verbose) {
//      	printRubyException(e);
//      }
    }
    flush();
  }
  
  /*
  private void printRubyException(Exception e) {
  	Throwable t = e;
  	if(t instanceof RubyException && t.getCause() != null) { 
  		t = t.getCause();
  	}
  	if (t.getCause() instanceof RaiseException) {
  		t = t.getCause();
    } 
  	String st = Utils.getStackTrace(t);
    for (String s : st.split("\n")) {
    	// strip out some generic jruby error strings that aren't useful:
    	if (!s.equals("	...internal jruby stack elided...") && !s.startsWith("	from (unknown).(unknown)(:")) { 
    		error(s);
    	}
    }
  }
  */
  
  private void flush() {
  	 System.out.flush();
     System.err.flush();
  }

	@Override
	protected void dblclick() {
		try {
			if(scriptFile != null) {
				String filePath = scriptFile.getAbsolutePath();
				info("Attempting to open file '" + filePath + "'");
				Process p;
				if (MaxSystem.isOsWindows()) {
					// "file editor" is a dummy argument, I guess it controls the window title if a command prompt is opened.
					// This dummy argument has to contain spaces or be explicitly wrapped in double quotes.
					p = Runtime.getRuntime().exec(new String[]{"cmd", "/c", "start", "file editor", filePath});					
				}
				else {
					p = Runtime.getRuntime().exec(new String[]{"open", filePath});
				}
				try {
					p.waitFor();
					if(p.exitValue() != 0) {
						err(Utils.getInputStreamAsString(p.getErrorStream()));
					}
				}
				catch(InterruptedException e) {
					err(e.getMessage());
				}				
			}
		} catch(IOException e) {
			throw new RuntimeException(e);
		}
	}
}
