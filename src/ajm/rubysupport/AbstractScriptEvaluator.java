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

/**
 * Superclass for script evaluator implementations.
 * 
 * @author Adam Murray (adam@compusition.com)
 */
public abstract class AbstractScriptEvaluator implements ScriptEvaluator {

	private boolean initialized = false;
	private Map<String, Object> persitentGlobals = new HashMap<String, Object>();

	protected abstract void resetEngineContext();

	protected abstract void declareGlobalInternal(String variableName, Object obj) throws Exception;

	protected abstract void undeclareGlobalInternal(String variableName) throws Exception;

	public void resetContext() {
		resetEngineContext();
		try {
			for (Map.Entry<String, Object> global : persitentGlobals.entrySet()) {
				String name = global.getKey();
				undeclareGlobal(name);
				declareGlobalInternal(name, global.getValue());
			}
		}
		catch (Exception e) {
			throw new RubyException(e);
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
			declareGlobalInternal(variableName, obj);
		}
		catch (Exception e) {
			throw new RubyException(e);
		}
		persitentGlobals.put(variableName, obj);
	}

	public void undeclareGlobal(String variableName) {
		try {
			undeclareGlobalInternal(variableName);
		}
		catch (Exception e) {
			throw new RubyException(e);
		}
		persitentGlobals.remove(variableName);
	}
}
