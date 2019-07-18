package jruby4max.maxsupport;

import java.io.PrintStream;

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
import com.cycling74.max.Executable;
import com.cycling74.max.MaxObject;
import com.cycling74.max.MaxQelem;

import jruby4max.rubysupport.IdInUseException;
import jruby4max.rubysupport.MaxRubyAdapter;
import jruby4max.util.Logger;
import jruby4max.util.Utils;

/**
 * Superclass for objects that support Ruby scripting.
 *
 * @author Adam Murray (adam@compusition.com)
 */
public abstract class JRubyMaxObject extends MaxObject implements Logger {

	protected String context = null;
	protected String id = defaultId();
	private boolean autoinit = false;

	protected MaxRubyAdapter ruby;

	protected JRubyMaxObject self = this;


	protected boolean verbose = false;

	protected boolean initialized = false;
	protected MaxQelem initializer = getInitializerQelem();


	public JRubyMaxObject() {
		declareAttribute( "verbose" );
		if( initializer == null ) {
			// The initializer should never be null inside Max, but needs to be null in unit tests
			initialized = true;
		}
		else {
			initializer.set();
		}
		declareAttribute( "context", "getcontext", "context" );
		declareAttribute( "id", "getid", "id" );
		declareAttribute( "autoinit" );
		declareAttribute( "ruby_version", "getruby_version", "ruby_version" );
	}

	private final MaxQelem getInitializerQelem() {
		Executable initializer = getInitializer();
		return initializer == null ? null : new MaxQelem( initializer );
	}

	/**
	 * A subclass can override this method to return a MaxQelem that can do operations not normally available in the
	 * constructor, such as outputting messages. See discussion at
	 * http://www.cycling74.com/forums/index.php?t=rview&goto=114649 Note that if this method is overriden, it is the
	 * responsibility of the initializer code to set initialized = true.
	 *
	 * @return an Executable that executes initialization code. Must not be null.
	 */
	protected Executable getInitializer() {
		return new DefaultRubyInitializer();
	}

	protected class DefaultRubyInitializer implements Executable {
		public void execute() {
			initialized = true;
			try {
				ruby = new MaxRubyAdapter( self, context, id );
			} catch(IdInUseException e) {
				String availableId = e.getMessage();
				error( "id " + id + " not available. Using: " + availableId );
				id = availableId;
				ruby = new MaxRubyAdapter( self, context, id );
			}
			if( autoinit ) {
				ruby.init();
				/* Doing this at construction time causes Max to hang for a while if there are many instances of this object.
															 Thus autoinit is false by default.
															 The downside to not init'ing here is there will be a slight delay the first time a script tries to evaluate
															 The hang delay got much shorter with JRuby 1.1. */
			}
		}
	}

	@Override
	protected void notifyDeleted() {
		if( ruby != null ) {
			ruby.notifyDeleted();
		}
		if( initializer != null ) {
			initializer.release();
		}
	}

	// for use with debugging unit tests, must be set from the test after instantiation
	private PrintStream debugOut;

	/**
	 * Unit tests can set this output stream back to system.out (or a log file) for testing purposes outside of the Max
	 * environment. Normally any MaxObject will "steal" System.out and set it to the Max output stream (which is not
	 * actually available outside of Max).
	 *
	 * @param debugOut
	 */
	protected void setDebugOut( PrintStream debugOut ) {
		this.debugOut = debugOut;
	}

	public void debug( String message ) {
		if( debugOut != null ) {
			debugOut.println( message );
		}
	}

	/**
	 * Automatically prepends the object name to the beginning of error messages.
	 *
	 * @param message the error message
	 */
	public void info( String message ) {
		info( message, false );
	}

	public void info( String message, boolean force ) {
		if( verbose || force ) {
			post( this.getClass().getName() + ": " + message );
		}
	}

	/**
	 * Automatically prepends the object name to the beginning of error messages.
	 *
	 * @param message the error message
	 */
	public void err( String message ) {
		error( this.getClass().getName() + ": " + message );
	}

	public String toString() {
		return getClass().getName() + "#<" + Integer.toHexString( hashCode() ) + ">";
	}

	public Atom[] getcontext() {
		return Atom.newAtom( new String[]{ context } );
	}

	public String context() {
		return context;
	}

	public void context( Atom[] params ) {
		String context = Utils.toString( params );
		this.context = context;
		if( ruby != null ) {
			ruby.setContext( context );
		} // else we're still initializing and the initalizer should handle this
	}

	public Atom[] getid() {
		return Atom.newAtom( new String[]{ id } );
	}

	public String id() {
		return id;
	}

	public void id( Atom[] params ) {
		String id = Utils.toString( params );
		if( id == null || "".equals( id ) ) {
			id = defaultId();
		}
		this.id = id;
		if( ruby != null ) {
			try {
				ruby.setId( id );
			} catch(IdInUseException e) {
				String availableId = e.getMessage();
				error( "id " + id + " not available. Using: " + availableId );
				id = availableId;
				ruby.setId( id );
			}
		} // else we're still initializing and the initalizer should handle this
	}

	private String defaultId() {
		return Integer.toHexString( hashCode() );
	}
}
