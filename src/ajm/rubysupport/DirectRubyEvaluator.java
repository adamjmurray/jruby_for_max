package ajm.rubysupport;

/*
Copyright (c) 2009, Adam Murray (adam@compusition.com). All rights reserved.

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

import java.util.ArrayList;

import org.jruby.Ruby;
import org.jruby.RubyNil;
import org.jruby.RubyRuntimeAdapter;
import org.jruby.javasupport.JavaEmbedUtils;
import org.jruby.javasupport.JavaObject;
import org.jruby.runtime.GlobalVariable;
import org.jruby.runtime.builtin.IRubyObject;

/**
 * Evaluator that calls into JRuby's evaluation engine API directly.
 * (instead of using a recommended mechanism like BSF or javax.scripting APIs)
 * 
 * Experimental!
 * 
 * @author Adam Murray (adam@compusition.com)
 */
public class DirectRubyEvaluator extends AbstractScriptEvaluator {

	private Ruby runtime;
	private RubyRuntimeAdapter evaler;
	private IRubyObject nil;

	public DirectRubyEvaluator() {
		runtime = JavaEmbedUtils.initialize(new ArrayList<Object>());
		nil = new RubyNil(runtime);
		resetEngineContext();
	}
	
	protected void resetEngineContext() {
		evaler = JavaEmbedUtils.newRuntimeAdapter();
	}

	protected void declareGlobalInternal(String variableName, Object obj)
	throws Exception {
		runtime.defineVariable(new GlobalVariable(runtime, "$"+variableName, JavaObject.wrap(runtime, obj)));
	}

	protected void undeclareGlobalInternal(String variableName)
			throws Exception {
		runtime.defineVariable(new GlobalVariable(runtime, variableName, nil));
	}

	public Object eval(CharSequence rubyCode) {
		return evaler.eval(runtime, rubyCode.toString());
	}

	public void exit() {
		JavaEmbedUtils.terminate(runtime);
	}
	
	public static void main(String[] args) {
		DirectRubyEvaluator ruby = new DirectRubyEvaluator();
		ruby.resetContext();
		ruby.setInitialized(true);
		ruby.exit();
	}


}
