package ajm.maxsupport;

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

import org.jruby.CompatVersion;

import com.cycling74.max.*;

import ajm.rubysupport.*;

/**
 * Superclass for objects that support Ruby scripting.
 * 
 * @author Adam Murray (adam@compusition.com)
 */
public abstract class AbstractMaxRubyObject extends AbstractMaxObject {

	protected String context = null;
	protected String id = defaultId();
	private boolean autoinit = false;
	
	protected Atom[] rubyVersionValue;
	protected CompatVersion rubyVersion;
  
	protected MaxRubyAdapter ruby;

	protected AbstractMaxRubyObject self = this;

	public AbstractMaxRubyObject() {
		super();
		declareAttribute("context", "getcontext", "context");
		declareAttribute("id", "getid", "id");
		declareAttribute("autoinit");
		declareAttribute("ruby_version", "getruby_version", "ruby_version");
	}

	@Override
	protected Executable getInitializer() {
		return new DefaultRubyInitializer();
	}

	protected class DefaultRubyInitializer extends DefaultInitializer {
		@Override
		public void execute() {
			super.execute();
			try {
				ruby = new MaxRubyAdapter(self, context, id, rubyVersion);
			}
			catch (IdInUseException e) {
				String availableId = e.getMessage();
				error("id " + id + " not available. Using: " + availableId);
				id = availableId;
				ruby = new MaxRubyAdapter(self, context, id, rubyVersion);
			}
			if (autoinit) {
				ruby.init();
				/* Doing this at construction time causes Max to hang for a while if there are many instances of this object.
				   Thus autoinit is false by default.
				   The downside to not init'ing here is there will be a slight delay the first time a script tries to evaluate
				   The hang delay got much shorter with JRuby 1.1. */
			}
		}
	}

	public String getcontext() {
		return context;
	}

	public String context() {
		return context;
	}

	public void context(String context) {
		this.context = context;
		if (ruby != null) {
			ruby.setContext(context);
		} // else we're still initializing and the initalizer should handle this
	}

	public String getid() {
		return id;
	}

	public String id() {
		return id;
	}

	public void id(String id) {
		if (id == null || "".equals(id)) {
			id = defaultId();
		}
		this.id = id;
		if (ruby != null) {
			try {
				ruby.setId(id);
			}
			catch (IdInUseException e) {
				String availableId = e.getMessage();
				error("id " + id + " not available. Using: " + availableId);
				id = availableId;
				ruby.setId(id);
			}
		} // else we're still initializing and the initalizer should handle this
	}

	private String defaultId() {
		return Integer.toHexString(hashCode());
	}
	
  public Atom[] getruby_version() {
    return rubyVersionValue;
  }

  // Using Atom[] is annoying but it avoids an annoying warning in the max menu "coerced float to String" when doing @ruby_version 1.9
  public void ruby_version(Atom[] rubyVersionValue) {
  	if(initialized) {
  		err("ruby_version cannot be changed. Use @ruby_version when creating the object.");
  		return;
  	}  	
  	if(rubyVersionValue == null || rubyVersionValue.length < 1) return;
  	
  	String rubyVersionString = rubyVersionValue[0].toString();
  	while(rubyVersionString.endsWith("0")) {
  		// @ruby_version 1.9 comes through as "1.900000" so we have to chop off the trailing zeros
  		rubyVersionString = rubyVersionString.substring(0, rubyVersionString.length()-1);
  	}
  	
  	this.rubyVersion = RubyProperties.getRubyVersion(rubyVersionString);  	  
  	if(this.rubyVersion == null) {
  		err("Invalid ruby_version '" + rubyVersionString + "'. Only 1_8 and 1_9 supported. " + 
  				"Defaulting to version " + RubyProperties.DEFAULT_RUBY_VERSION_STRING + ".");
  		this.rubyVersionValue = Atom.newAtom(new String[]{RubyProperties.DEFAULT_RUBY_VERSION_STRING});
  		rubyVersion = RubyProperties.DEFAULT_RUBY_VERSION;
  	} else {
  		this.rubyVersionValue = Atom.newAtom(new String[]{rubyVersionString});
  	}
  }

	@Override
	public void notifyDeleted() {
		if (ruby != null) {
			ruby.notifyDeleted();
		}
		super.notifyDeleted();
	}
}
