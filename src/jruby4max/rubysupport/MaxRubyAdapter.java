package jruby4max.rubysupport;

import java.io.File;
import java.io.IOException;
import java.math.BigInteger;

import org.jruby.RubyArray;
import org.jruby.RubyHash;
import org.jruby.RubySymbol;

/*
Copyright (c) 2008, Adam Murray (adam@compusition.com). All rights reserved.

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
import com.cycling74.max.MaxObject;

import jruby4max.maxsupport.Atomizer;
import jruby4max.util.GlobalVariableStore;
import jruby4max.util.LineBuilder;
import jruby4max.util.Logger;
import jruby4max.util.Utils;

/**
 * The bridge between Max and Ruby.
 *
 * @author Adam Murray (adam@compusition.com)
 */
public class MaxRubyAdapter {

	public static final String NIL = "nil";

	private IScriptEvaluator ruby;

	private LineBuilder code = new LineBuilder();

	private LineBuilder fileInit = new LineBuilder();

	private final MaxObject maxObject;

	private Logger logger;

	private String maxContext;

	private String id;

	public MaxRubyAdapter( MaxObject maxObject, String context, String id) {
		this.maxObject = maxObject;
		if( maxObject instanceof Logger ) {
			this.logger = (Logger)maxObject;
		}
		this.maxContext = context;
		this.id = id;
	}

	private void getEvaluator() {
		ruby = ScriptEvaluatorManager.getRubyEvaluator( maxContext, id, maxObject );
		ruby.declareGlobal( "max_ruby_adapter", this );
		ruby.declareGlobal( "global_variable_store", GlobalVariableStore.getInstance() );
	}

	public Logger getLogger() {
		return logger;
	}

	public void setLogger( Logger logger ) {
		this.logger = logger;
	}

	public String getContext() {
		return maxContext;
	}

	public void setContext( String context ) {
		if( !Utils.equals( this.maxContext, context ) ) {
			// cleanup old context
			ScriptEvaluatorManager.removeRubyEvaluator( maxObject );

			// init new context
			this.maxContext = context;
			getEvaluator();
		}
	}

	public String getId() {
		return id;
	}

	public void setId( String id ) {
		if( !Utils.equals( this.id, id ) ) {
			ScriptEvaluatorManager.updateId( maxObject, id );
			this.id = id;
		}
	}
	
	public void notifyDeleted() {
		ScriptEvaluatorManager.removeRubyEvaluator( maxObject );
	}

	public void exec( CharSequence rubyCode ) {
		eval( rubyCode, false );
	}

	public Object eval( CharSequence rubyCode ) {
		return eval( rubyCode, true );
	}

	/**
	 * @return an Atom or Atom[], it's up to the calling code to check the type
	 */
	public Object eval( CharSequence rubyCode, boolean returnResult ) {
		if( ruby == null || !ruby.isInitialized() ) {
			init();
		}
		Object result;
		synchronized(ruby) {
			// Set the $MaxObject/ID globals correctly in shared contexts:
			ruby.undeclareGlobal( "max_object" );
			ruby.declareGlobal( "max_object", maxObject );
			result = ruby.eval( rubyCode );
		}
		if( returnResult ) {
			return toAtoms( result, true );
		}
		else {
			return null;
		}
	}

	public void init() {
		init( null, Atom.emptyArray );
	}

	public void init( File file, Atom[] args ) {
		if (ruby == null) {
			getEvaluator();
		}
		if( code.isEmpty() ) {
			// setup the $LOAD_PATH
			for( String loadPath : RubyProperties.getLoadPaths() ) {
				code.line( "$: << " + quote( loadPath ) );
			}
			// and include any initializer files:
			for( String initializer : RubyProperties.getInitializerFiles() ) {
				File initFile = Utils.getFile( initializer );
				String initFileFolderPath = pathToContainerFolder( initFile );
				code.line( "$: << " + quote( initFileFolderPath ) );
				String initializationCode = Utils.getFileAsString( initFile );
				code.append( initializationCode );
			}
		}

		if( ruby.isInitialized() ) {
			ScriptEvaluatorManager.notifyContextDestroyedListener( maxContext, maxObject );
			ruby.resetContext();
			// TODO: this prevents using multiple objects with @file from sharing the same @context, which is not really desirable.
			// But we need to do this for @autowatch.
		}
		ruby.setInitialized( true );

		ruby.setScriptFile( file );
		exec( code );

		if( file != null ) {
			String script = Utils.getFileAsString( file );
			fileInit.clear();

			// include the folder containing the @file, so scripts can require files relative to themselves
			String fileFolderPath = pathToContainerFolder( file );
			fileInit.line( "$: << " + quote( fileFolderPath ) );

			// set $0. I'd like to set __FILE__ here too, but that variable cannot be assigned
			//fileInit.line( "$0 = " + quote( file.getAbsolutePath() ) );

			// any set the arguments
			for( Atom arg : args ) {
				fileInit.line( "$* << " + Utils.detokenize( arg ) );
			}

			exec( fileInit );
			exec( script );
		}
	}

	private String pathToContainerFolder( File file ) {
		File folder = file.getParentFile();
		if( folder != null ) {
			String folderPath;
			try {
				folderPath = folder.getCanonicalPath();
			} catch(IOException e) {
				System.err.println( e );
				folderPath = folder.getAbsolutePath();
			}
			return folderPath;
		}
		return null;
	}

	private String quote( Object o ) {
		if( o == null ) return NIL;
		String s = o.toString();
		if( s == null ) return NIL;
		return "'" + s.replace( "\\", "\\\\" ).replace( "'", "\\'" ) + "'";
	}

	/**
	 * Converts the result of a Ruby evaluation into Max data types (Atoms)
	 *
	 * @param obj -
	 *            A Ruby value
	 * @return an Atom or an Atom[]. The calling code needs to figure out what type this is and handle it appropriately
	 */
	public Object toAtoms( Object obj ) {
		return toAtoms( obj, logger );
	}

	public Object toAtoms( Object obj, boolean logCoercions ) {
		return toAtoms( obj, (logCoercions ? logger : null) );
	}

	private static BigInteger MAX_BINT = new BigInteger( Integer.MAX_VALUE + "" );
	private static BigInteger MIN_BINT = new BigInteger( Integer.MIN_VALUE + "" );

	private Object toAtoms( Object obj, Logger logger ) {
		if( obj == null ) {
			return Atom.newAtom( "nil" );
		}
		else if( obj instanceof Atom || obj instanceof Atom[] ) {
			return obj;
		}
		else if( obj instanceof Atomizer ) {
			return ((Atomizer)obj).toAtom();
		}
		else if( obj instanceof Double || obj instanceof Float ) {
			// Not sure if there's a situation where we should coerce to a String,
			// because Max can only handle floats and JRuby always outputs Doubles.
			// Floating point accuracy is very different from the Long wrap-around problem,
			// so letting it downcast seems ok:
			return Atom.newAtom( ((Number)obj).doubleValue() );
		}
		else if( obj instanceof Long || obj instanceof Integer || obj instanceof Short || obj instanceof Byte ) {
			long val = ((Number)obj).longValue();
			if( val > Integer.MAX_VALUE || val < Integer.MIN_VALUE ) {
				if( logger != null ) {
					logger.info( "coerced type " + obj.getClass().getName() + " to String" );
				}
				return Atom.newAtom( obj.toString() );
			}
			else return Atom.newAtom( val );
		}
		else if( obj instanceof BigInteger ) {
			BigInteger bigInt = (BigInteger)obj;
			if( bigInt.compareTo( MAX_BINT ) > 0 || bigInt.compareTo( MIN_BINT ) < 0 ) {
				if( logger != null ) {
					logger.info( "coerced type " + obj.getClass().getName() + " to String" );
				}
				return Atom.newAtom( obj.toString() );
			}
			else return Atom.newAtom( bigInt.intValue() );
		}
		else if( obj instanceof CharSequence ) {
			return Atom.newAtom( obj.toString() );
		}
		else if( obj instanceof RubySymbol ) {
			return Atom.newAtom( ":" + obj );
		}
		else if( obj instanceof Boolean ) {
			return Atom.newAtom( ((Boolean)obj).booleanValue() );
		}
		else if( obj instanceof RubyArray ) {
			RubyArray array = (RubyArray)obj;

			Object[] atomsArray = new Object[array.size()];
			boolean isFlatArray = true;
			for( int i = 0; i < array.size(); i++ ) {
				Object val = toAtoms( array.get( i ), logger );
				if( !(val instanceof Atom) ) {
					isFlatArray = false;
				}
				atomsArray[i] = val;
			}

			if( isFlatArray ) {
				Atom[] atoms = new Atom[array.size()];
				for( int i = 0; i < atomsArray.length; i++ ) {
					atoms[i] = (Atom)atomsArray[i];
				}
				return atoms;
			}
			else {
				if( logger != null ) {
					logger.info( "coerced a nested Array to String" );
				}
				return Atom.newAtom( toArrayString( atomsArray ) );
			}
		}
		else if( obj instanceof RubyHash ) {
			if( logger != null ) {
				logger.info( "coerced a Hash to String" );
			}
			RubyHash hash = (RubyHash)obj;
			StringBuilder s = new StringBuilder();
			for( Object key : hash.keySet() ) {
				if( s.length() > 0 ) {
					s.append( ", " );
				}
				s.append( toArrayString( toAtoms( key ) ) );
				s.append( "=>" );
				s.append( toArrayString( toAtoms( hash.get( key ) ) ) );
			}
			s.insert( 0, "{" );
			s.append( "}" );
			return new Atom[]{ Atom.newAtom( s.toString() ) };
		}
		else {
			if( logger != null ) {
				logger.info( "coerced type " + obj.getClass().getName() + " to String" );
			}
			return Atom.newAtom( obj.toString() );
		}

	}

	private String toArrayString( Object o ) {
		StringBuilder s = new StringBuilder();
		buildArrayString( o, s );
		return s.toString();
	}

	private void buildArrayString( Object o, StringBuilder s ) {
		if( o instanceof Object[] ) {
			s.append( "[" );
			Object[] objs = (Object[])o;
			for( int i = 0; i < objs.length; i++ ) {
				if( i > 0 ) {
					s.append( "," );
				}
				buildArrayString( objs[i], s );
			}
			s.append( "]" );
		}
		else {
			s.append( o.toString() );
		}
	}

	/*
			 public void on_context_destroyed(Object callback) {
					 ScriptEvaluatorManager.registerContextDestroyedListener(maxObject, callback.toString());
			 }
			 */
}
