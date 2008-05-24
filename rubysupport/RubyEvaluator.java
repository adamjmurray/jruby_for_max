package ajm.rubysupport;

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

import java.util.HashMap;
import java.util.Map;

import org.apache.bsf.BSFException;
import org.apache.bsf.BSFManager;

/**
 * JRuby/BSF wrapper.
 * 
 * @version 0.8
 * @author Adam Murray (adam@compusition.com)
 */
public class RubyEvaluator {

	private BSFManager manager;
	private boolean initialized = false;
	private Map<String, Object> persitentGlobals = new HashMap<String, Object>();

	public RubyEvaluator() {
		BSFManager.registerScriptingEngine("ruby", "org.jruby.javasupport.bsf.JRubyEngine", new String[] { "rb" });
		manager = new BSFManager();
	}

	public void resetContext() {
		manager = new BSFManager();
		for (Map.Entry<String, Object> global : persitentGlobals.entrySet()) {
			declareGlobal(global.getKey(), global.getValue());
		}
	}

	public boolean isInitialized() {
		return initialized;
	}

	public void setInitialized(boolean initialized) {
		this.initialized = initialized;
	}

	public void declareGlobal(String variableName, Object obj) {
		try {
			manager.declareBean(variableName, obj, obj.getClass());
		}
		catch (BSFException e) {
			// convert to unchecked and hide the details of the BSF implementation
			throw new RubyException(e);
		}
	}

	public void declarePersistentGlobal(String variableName, Object obj) {
		declareGlobal(variableName, obj);
		persitentGlobals.put(variableName, obj);
	}

	public void undeclareGlobal(String variableName) {
		try {
			manager.undeclareBean(variableName);
			persitentGlobals.remove(variableName);
		}
		catch (BSFException e) {
			// convert to unchecked and hide the details of the BSF implementation
			throw new RubyException(e);
		}
	}

	public Object eval(CharSequence rubyCode) {
		try {
			return manager.eval("ruby", getClass().getName(), 1, 1, rubyCode);
		}
		catch (BSFException e) {
			// convert to unchecked and hide the details of the BSF implementation
			throw new RubyException(e);
		}
	}
}
