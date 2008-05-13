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

import com.cycling74.max.Executable;

import ajm.rubysupport.MaxRubyEvaluator;

/**
 * Superclass for objects that support Ruby scripting.
 * 
 * @version 0.85
 * @author Adam Murray (adam@compusition.com)
 */
public abstract class AbstractMaxRubyObject extends AbstractMaxObject {

	protected String context = null;
	private boolean autoinit = false;

	protected MaxRubyEvaluator ruby;

	public AbstractMaxRubyObject() {
		super();
		declareAttribute("context", "getcontext", "context");
		declareAttribute("autoinit");
	}

	@Override
	protected Executable getInitializer() {
		return new DefaultRubyInitializer();
	}

	protected class DefaultRubyInitializer extends DefaultInitializer {
		@Override
		public void execute() {
			super.execute();
			contructRubyEvaluator();
			if (autoinit) {
				ruby.init();
			}
			/* Doing this at construction time causes Max to hang for a while if there are many instances of this object.
			   Thus autoinit is false by default.
			   The downside to not init'ing here is there will be a slight delay the first time a script tries to evaluate
			   The hang delay got much shorter with JRuby 1.1. */
		}
	}

	protected void contructRubyEvaluator() {
		ruby = new MaxRubyEvaluator(this, context);
	}

	public String getcontext() {
		return context;
	}

	public void context(String context) {
		this.context = context;
		if (ruby != null) {
			ruby.setContext(context);
		} // else we're still initializing and the initalizer should handle this
	}

	@Override
	public void notifyDeleted() {
		if (ruby != null) {
			ruby.notifyDeleted();
		}
		super.notifyDeleted();
	}
}
