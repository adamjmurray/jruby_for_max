/*
 Copyright (c) 2008-2011, Adam Murray (adam@compusition.com). All rights reserved.

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

import com.cycling74.max.Atom;
import com.cycling74.max.Executable;
import com.cycling74.max.MaxPatcher;
import com.cycling74.max.MaxSystem;
import jruby4max.maxsupport.JRubyMaxObject;
import jruby4max.rubysupport.InputConversionOption;
import jruby4max.util.FileWatcher;
import jruby4max.util.TextBlock;
import jruby4max.util.Utils;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * The jruby4max.ruby MaxObject
 *
 * @author Adam Murray (adam@compusition.com)
 */
public class jruby extends JRubyMaxObject {

	private String filePath;
	private File file;
	private Atom[] fileArgs;

	// Any info outlet messages that need to be sent immediately after initialization, because
	// outlet calls during initialization will be ignored
	private String[] infoOutletMessageOnInit;

	private boolean hasInfoOutlet = false;
	private int evalOutlet = -1;

	private boolean autowatch = false;
	private FileWatcher fileWatcher;

	private String[] textTo;
	private InputConversionOption[] inputConversionOptions;

	private boolean synchronize = false;

	private static final String DEFAULT_EXTENSION = ".rb";

	// Used to buffer any input that needs to be evaluated after initialization completes
	private List<CharSequence> deferredEvals;

	/**
	 * The Constructor
	 *
	 * @param args 1 optional integer arg specifies the number of outlets
	 */
	public jruby( Atom[] args ) {
		super();
		declareAttribute( "evalout", "getevalout", "evalout" );
		declareAttribute( "file", "getfile", "file" );
		declareAttribute( "autowatch", "getautowatch", "autowatch" );

		declareAttribute( "text_to", "gettext_to", "text_to" );
		declareAttribute( "symbols_to", "gettext_to", "text_to" );  // deprecated, use @text_to instead

		declareAttribute( "synchronize" );

		int inlets = 1;
		if( args.length > 0 && args[0].isInt() && args[0].getInt() > 1 ) {
			inlets = args[0].getInt();
		}
		int outlets = 1;
		if( args.length > 1 && args[1].isInt() && args[1].getInt() > 1 ) {
			outlets = args[1].getInt();
		}

		if( args.length > 2 && (args[2].isInt() || args[2].isString()) ) {
			String infoOutletArg = args[2].toString().toLowerCase();
			if( infoOutletArg.equals( "1" ) || infoOutletArg.equals( "true" ) ) {
				hasInfoOutlet = true;
			}
		}
		declareIO( inlets, outlets );
		createInfoOutlet( hasInfoOutlet );

		inputConversionOptions = new InputConversionOption[inlets];
		for( int i = 0; i < inputConversionOptions.length; i++ ) {
			// the default behavior is to treat input literally
			inputConversionOptions[i] = InputConversionOption.DEFAULT;
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
			if( file != null ) {
				initFile();
			}
			if( hasInfoOutlet ) {
				if( infoOutletMessageOnInit != null ) {
					outlet( getInfoIdx(), infoOutletMessageOnInit );
					infoOutletMessageOnInit = null;
				}
				outlet( getInfoIdx(), "initialized", "bang" );
			}
			if( deferredEvals != null) {
				for(CharSequence input : deferredEvals ) {
					evalRuby( input );
				}
				deferredEvals = null;
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

	public void evalout( int evalout ) {
		if( evalout >= getNumOutlets() ) {
			err( "Invalid evalout " + evalout );
		}
		else {
			this.evalOutlet = evalout;
		}
	}

	public String getfile() {
		if( file != null ) {
			return file.getAbsolutePath();
		}
		else {
			return null;
		}
	}

	public void file( Atom[] args ) {
		if( args != null && args.length > 0 ) {
			filePath = args[0].toString();
			file = Utils.getFile( filePath, getParentPatcher(), true, DEFAULT_EXTENSION );
			fileArgs = Atom.removeFirst( args );
			if( file == null ) {
				err( "File not found: " + filePath );
				if( Utils.isPatcherSaved( getParentPatcher() ) ) {
					info( "Send the \"createfile\" message to create the file \"" + getFileToBeCreated() + "\"" );
				}
				else {
					info( "Save the patcher and send the \"createfile\" message" );
					info( "...to create the file \"" + filePath + "\" in the patcher's folder." );
				}

				if( hasInfoOutlet ) {
					if( initialized ) {
						outlet( getInfoIdx(), "filenotfound", filePath );
					}
					else {
						infoOutletMessageOnInit = new String[]{"filenotfound", filePath};
					}
				}
			}
		}
		else {
			filePath = null;
			file = Utils.getFile( null );
			fileArgs = Atom.emptyArray;
		}

		if( file != null && initialized ) {
			initFile();
		} // if not initialized initFile() will be called by the Initializer
	}

	public boolean getautowatch() {
		return autowatch;
	}

	public void autowatch( boolean autowatch ) {
		this.autowatch = autowatch;
		if( initialized ) {
			if( autowatch ) {
				startFileWatcher();
			}
			else {
				stopFileWatcher();
			}
		}
	}

	public String[] gettext_to() {
		return textTo;
	}

	public void text_to( String[] params ) {
		for( int i = 0; i < params.length; i++ ) {
			String param = params[i];

			if( i >= inputConversionOptions.length ) {
				err( "More @text_to arguments than inlets, ignoring extra arguments." );
				break;
			}

			InputConversionOption option = InputConversionOption.fromString( param );
			if( option == null ) {
				err( "Invalid @text_to argument '" + param + "'. Defaulting to " + InputConversionOption.DEFAULT );
				// it was already initialized to the default in the constructor so there's nothing to do
				continue;
			}
			else if( option == InputConversionOption.REMAINING_INLETS ) {
				if( i > 0 ) {
					InputConversionOption previousOption = inputConversionOptions[i - 1];
					for( int j = i; j < inputConversionOptions.length; j++ ) {
						inputConversionOptions[j] = previousOption;
					}
				}
				// else the first arg is a '*' in which case there's nothing to do (everything remains the default)

				if( i < params.length - 1 ) {
					err( "Ignoring @symbols_to argument(s) after the " + InputConversionOption.REMAINING_INLETS );
				}
				// and we're done:
				break;
			}
			else {
				// handle all non-REMAINING_INLETS options:
				inputConversionOptions[i] = option;
			}
		}
		textTo = new String[inputConversionOptions.length];
		for( int i = 0; i < textTo.length; i++ ) {
			textTo[i] = inputConversionOptions[i].toString();
		}
	}

	private void startFileWatcher() {
		if( fileWatcher == null ) {
			if( file != null && autowatch ) {
				fileWatcher = new FileWatcher( file, fileWatcherCallback );
				fileWatcher.start();
			}
		}
		else {
			fileWatcher.setFile( file ); // in case a new file was loaded - see scriptfile() / initFile()
			fileWatcher.resumeWatching();
		}
	}

	private void stopFileWatcher() {
		if( fileWatcher != null ) {
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
		info( "loading script '" + file + "' on " + new Date() );
		try {
			ruby.init( file, fileArgs );
			if( hasInfoOutlet ) {
				outlet( getInfoIdx(), "fileloaded", "bang" );
			}
		} catch( Exception e ) {
			err( "Error evaluating script file: " + file.getPath() );
			if( hasInfoOutlet ) {
				outlet( getInfoIdx(), "error", e.getMessage() );
			}
			// It seems that System.err.flush() takes care of printing out the error message.
//      if(verbose) {
//      	printRubyException(e);
//      }
		}
		flush();
	}

	public void bang() {
		evalRuby( "bang()" );
	}

	public void list( Atom[] args ) {
		StringBuilder s = new StringBuilder();
		int inletIdx = getInlet();
		if( inletIdx <= 9 ) {
			s.append( "in" ).append( inletIdx ).append( "(" );
		}
		else {
			s.append( "inlet(" ).append( inletIdx ).append( "," );
		}
		joinArgs( args, s, 0 );
		s.append( ")" );
		evalRuby( s );
	}

	public void symbol( Atom[] args ) {
		// a convenience for scenarios like attaching a 'coll' directly to this object
		list( args );
	}

	/**
	 * @param args - method methods_args
	 */
	public void call( Atom[] args ) {
		if( args.length < 1 || args[0] == null ) return;
		StringBuilder s = new StringBuilder();
		s.append( args[0] );
		s.append( "(" );
		joinArgs( args, s, 1 );
		s.append( ")" );
		evalRuby( s );
	}

	/**
	 * @param args - receiver method methods_args
	 */
	public void send( Atom[] args ) {
		if( args.length < 2 || args[0] == null || args[1] == null ) return;
		StringBuilder s = new StringBuilder();
		s.append( args[0] ).append( "." ).append( args[1] );
		s.append( "(" );
		joinArgs( args, s, 2 );
		s.append( ")" );
		evalRuby( s );
	}

	public void eval( Atom[] args ) {
		StringBuilder input = new StringBuilder();
		for( Atom arg : args ) {
			input.append( Utils.detokenize( arg.toString() ) ).append( " " );
		}
		evalRuby( input.toString().trim() );
	}

	private void joinArgs( Atom[] args, StringBuilder s, int startIndex ) {
		for( int i = startIndex; i < args.length; i++ ) {
			if( i > startIndex ) {
				s.append( "," );
			}
			Atom arg = args[i];
			if( arg == null ) {
				continue;
			}
			String value = arg.toString();

			if( arg.isString() ) {
				switch( inputConversionOptions[getInlet()] ) {
					case STRING:
						if( value.startsWith( "\"" ) && value.endsWith( "\"" ) ) {
							value = value.substring( 1, value.length()-1 );
						}
						value = "'" + value.replaceAll( "'", "\\\\'" ) + "'";
						break;

					case INTERPOLATED:
						if( !(value.startsWith( "\"" ) && value.endsWith( "\"" )) ) {
							// This might not work well with evaluated strings #{} if the double quotes is part of the evaluated expression.
							// In that case a workaround could be to try to refer to the quote with the unicode escape code?
							value = '"' + value.replaceAll( "\"", "\\\\\"" ) + '"';
						}
						break;

					case SYMBOL:
						value = ':' + value.replaceAll( " ", "_" );
						break;

					default:
						value = Utils.detokenize( value );
				}
			}

			s.append( value );
		}
	}

	public void text( String script ) {
		evalRuby( script.trim() );
	}

	public void textblock( String name ) {
		String script = TextBlock.get( name );
		if( script != null ) {
			evalRuby( script );
		}
		else {
			error( "No textblock named '" + name + "'" );
		}
	}

	protected void evalRuby( CharSequence input ) {
		try {
			if( ruby == null ) {
				if( deferredEvals == null) deferredEvals = new ArrayList<CharSequence>();
				deferredEvals.add( input );
//				err( "not initialized yet. Did not evaluate: " + input
//						+ ". If you are loadbanging a script, try using the 'info outlet', or a deferlow object." );
				return;
			}
			CharSequence code = input;
			if( synchronize ) {
				// automatically synchronize all evaluations:
				code = "$_LOCK_.synchronize do\n" + input + "\nend";
			}

			Object val = ruby.eval( code, evalOutlet >= 0 );
			if( evalOutlet >= 0 ) {
				if( val instanceof Atom[] ) {
					outlet( evalOutlet, (Atom[]) val );
				}
				else {
					outlet( evalOutlet, (Atom) val );
				}
			}
			// else negative numbers to suppress eval output

		} catch( Exception e ) {
			err( "could not evaluate: " + input );
			if( hasInfoOutlet ) {
				outlet( getInfoIdx(), "error", e.getMessage() );
			}
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
			if( file != null ) {
				String filePath = file.getAbsolutePath();
				info( "Attempting to open file '" + filePath + "'" );
				Process p;
				if( MaxSystem.isOsWindows() ) {
					// "file editor" is a dummy argument, I guess it controls the window title if a command prompt is opened.
					// This dummy argument has to contain spaces or be explicitly wrapped in double quotes.
					p = Runtime.getRuntime().exec( new String[]{"cmd", "/c", "start", "file editor", filePath} );
				}
				else {
					p = Runtime.getRuntime().exec( new String[]{"open", filePath} );
				}
				try {
					p.waitFor();
					if( p.exitValue() != 0 ) {
						err( Utils.getInputStreamAsString( p.getErrorStream() ) );
					}
				} catch( InterruptedException e ) {
					err( e.getMessage() );
				}
			}
		} catch( IOException e ) {
			throw new RuntimeException( e );
		}
	}

	public void createfile() {
		MaxPatcher patcher = getParentPatcher();
		if( !Utils.isPatcherSaved( patcher ) ) {
			err( "patcher must be saved before creating a file" );
			return;
		}
		if( filePath == null ) {
			err( "@file attribute must be a filename (or relative path)" );
			return;
		}
		File file = getFileToBeCreated();
		if( file.exists() ) {
			err( "File exists \"" + file + "\"" );
			return;
		}
		info( "creating file: " + file, true );
		try {
			if( file.createNewFile() ) {
				this.file = file;
			}
		} catch( IOException e ) {
			throw new RuntimeException( e );
		}
	}

	private File getFileToBeCreated() {
		MaxPatcher patcher = getParentPatcher();
		if( patcher != null ) {
			File folder = new File( patcher.getPath() );
			String path = filePath;
			if( !path.endsWith( DEFAULT_EXTENSION ) ) {
				path += DEFAULT_EXTENSION;
			}
			return new File( folder, path );
		}
		return null;
	}
}
