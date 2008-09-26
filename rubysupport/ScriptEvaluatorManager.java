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

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import ajm.util.MappedSet;

/**
 * Factory for Ruby evaluators that manages shared contexts.
 * 
 * @version 0.9
 * @author Adam Murray (adam@compusition.com)
 */
public class ScriptEvaluatorManager {

	private static Map<String, ScriptEvaluator> contexts = new HashMap<String, ScriptEvaluator>();
	private static Map<String, Integer> contextCounter = new HashMap<String, Integer>();
	private static MappedSet<String, String> contextDestroyedListeners = new MappedSet<String, String>();
	private static MappedSet<String, Object> javaObjectsUsingContext = new MappedSet<String, Object>();
	private static Map<String, Map<String, Object>> objectMap = new HashMap<String, Map<String, Object>>();
	private static Constructor<ScriptEvaluator> evaluatorConstructor;

	/**
	 * Stores a mapping from max objects to their context and id
	 */
	private static Map<Object, String[]> objectMetadata = new HashMap<Object, String[]>();

	// This is a singleton, so no instances allowed.
	private ScriptEvaluatorManager() {
	}

	/**
	 * Get a Ruby evaluator for the specified context.
	 * 
	 * @return
	 */
	public static ScriptEvaluator getRubyEvaluator(String context, String id, Object maxObject) {
		context = getContext(context, maxObject);
		id = getId(id, maxObject);
		objectMetadata.put(maxObject, new String[] { context, id });

		ScriptEvaluator evaluator = contexts.get(context);
		if (evaluator == null) {
			evaluator = newRubyEvaluatorInstance();
			contexts.put(context, evaluator);
			contextCounter.put(context, 1);
			Set<Object> javaObjs = javaObjectsUsingContext.addValue(context, maxObject);
			evaluator.declareGlobal("max_objects", javaObjs);

			Map<String, Object> idMap = new HashMap<String, Object>();
			objectMap.put(context, idMap);
			evaluator.declareGlobal("max_object_map", objectMap);
		}
		else {
			int count = contextCounter.get(context);
			count++;
			contextCounter.put(context, count);
			javaObjectsUsingContext.addValue(context, maxObject);
		}
		objectMap.get(context).put(id, maxObject);
		return evaluator;
	}

	/**
	 * 
	 * @return true if the entire context was removed
	 */
	public static void removeRubyEvaluator(Object maxObject) {
		String[] contextAndId = objectMetadata.remove(maxObject);
		if (contextAndId != null) {
			String context = contextAndId[0];
			String id = contextAndId[1];
			int count = contextCounter.get(context);
			count--;
			if (count > 0) {
				contextCounter.put(context, count++);
				javaObjectsUsingContext.get(context).remove(maxObject);
				objectMap.get(context).remove(id);
			}
			else {
				notifyContextDestroyedListener(context);
				javaObjectsUsingContext.remove(context);
				contextCounter.remove(context);
				contexts.remove(context);
				objectMap.remove(context);
			}
		}
	}

	public static void updateId(Object maxObject, String id) {
		String[] contextAndId = objectMetadata.get(maxObject);
		if (contextAndId != null) {
			String context = contextAndId[0];
			String oldId = contextAndId[1];
			contextAndId[1] = id;
			Map<String, Object> idMap = objectMap.get(context);
			idMap.remove(oldId);
			idMap.put(id, maxObject);
		}
	}

	private static String getContext(String context, Object maxObject) {
		if (context == null) {
			context = "__" + Integer.toHexString(maxObject.hashCode());
		}
		return context;
	}

	private static String getId(String id, Object maxObject) {
		if (id == null) {
			id = Integer.toHexString(maxObject.hashCode());
		}
		return id;
	}

	public static void registerContextDestroyedListener(Object maxObject, String callbackMethod) {
		String[] contextAndId = objectMetadata.get(maxObject);
		if (contextAndId != null) {
			String context = contextAndId[0];
			contextDestroyedListeners.addValue(context, callbackMethod);
		}
	}

	public static void notifyContextDestroyedListener(String context) {
		ScriptEvaluator ruby = contexts.get(context);
		Collection<String> callbackMethods = contextDestroyedListeners.remove(context);
		if (ruby != null && callbackMethods != null) {
			for (String callbackMethod : callbackMethods) {
				try {
					ruby.eval(callbackMethod);
				}
				catch (Exception e) {
					System.err.println("on_context_destroyed method '" + callbackMethod + "' failed:\n"
							+ e.getMessage());
				}
			}
		}
	}

	private static ScriptEvaluator newRubyEvaluatorInstance() {
		if (evaluatorConstructor == null) {
			String evaluatorClassName = RubyProperties.getRubyEngine();
			try {
				@SuppressWarnings("unchecked")
				Class<ScriptEvaluator> evaluatorClass = (Class<ScriptEvaluator>) Class.forName(evaluatorClassName);
				evaluatorConstructor = evaluatorClass.getConstructor();
			}
			catch (ClassNotFoundException e) {
				throw new RuntimeException(e);
			}
			catch (NoSuchMethodException e) {
				throw new RuntimeException(e);
			}
		}
		try {
			return evaluatorConstructor.newInstance();
		}
		catch (InstantiationException e) {
			throw new RuntimeException(e);
		}
		catch (IllegalAccessException e) {
			throw new RuntimeException(e);
		}
		catch (InvocationTargetException e) {
			throw new RuntimeException(e);
		}
	}
}
