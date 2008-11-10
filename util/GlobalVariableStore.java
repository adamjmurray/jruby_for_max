package ajm.util;

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
import java.util.Set;

/**
 * A singleton map for sharing global variables across any object in the JVM.
 * 
 * @version 0.9
 * @author Adam Murray (adam@compusition.com)
 */
public class GlobalVariableStore {

	private static GlobalVariableStore instance;

	private GlobalVariableStore() {
	}

	public synchronized static GlobalVariableStore getInstance() {
		if (instance == null) {
			instance = new GlobalVariableStore();
		}
		return instance;
	}

	private Map<String, Object> variableStore = new HashMap<String, Object>();

	public synchronized Object get(String name) {
		return variableStore.get(name);
	}

	public synchronized Object set(String name, Object value) {
		return variableStore.put(name, value);
	}

	public synchronized boolean delete(String name) {
		Object value = variableStore.remove(name);
		return value != null;
	}

	public synchronized boolean defined(String name) {
		return variableStore.containsKey(name);
	}

	public synchronized Set<String> names() {
		return variableStore.keySet();
	}
}
