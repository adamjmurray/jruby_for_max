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
import com.cycling74.max.MaxQelem;

import ajm.rubysupport.MaxRubyEvaluator;

/**
 * Superclass for objects that support Ruby scripting.
 * 
 * @version 0.85
 * @author Adam Murray (adam@compusition.com)
 */
public abstract class AbstractMaxRubyObject extends AbstractMaxObject {

	protected String context = null;

	protected MaxRubyEvaluator ruby;

	public AbstractMaxRubyObject() {
		super();
		declareAttribute("context", "getcontext", "context");
	}

	// TODO: make a class? see seq vs. rseq. I think it's cleaner to just call initializer.super()
	@Override
	protected MaxQelem getInitializer() {
		return new MaxQelem(new Executable() {
			// see discussion at
			// http://www.cycling74.com/forums/index.php?t=msg&th=31680&rid=5266
			// we need to defer execution of ruby.init() so we can resolve the path to this patch properly
			public void execute() {
				contructRubyEvaluator();
				initialized = true;
			}
		});
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
		ruby.notifyDeleted();
		super.notifyDeleted();
	}
}
