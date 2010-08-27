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

import org.jruby.CompatVersion;

import ajm.util.MappedSet;

/**
 * Factory for Ruby evaluators that manages shared contexts.
 * 
 * @author Adam Murray (adam@compusition.com)
 */
public class ScriptEvaluatorManager {

	private static Map<String, ScriptEvaluator> evaluatorContexts = new HashMap<String, ScriptEvaluator>();
	private static Map<String, Integer> evaluatorContextCounter = new HashMap<String, Integer>();
	//private static MappedSet<String, String> evaluatorContextDestroyedListeners = new MappedSet<String, String>();
	private static MappedSet<String, Object> objectsUsingEvaluator = new MappedSet<String, Object>();
	private static Map<String, Map<String, Object>> maxObjectMap = new HashMap<String, Map<String, Object>>();
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
	public static ScriptEvaluator getRubyEvaluator(String maxContext, String id, Object maxObject, CompatVersion rubyVersion) {

		Map<String, Object> idMap = maxObjectMap.get(maxContext);
		if (idMap == null) {
			idMap = new HashMap<String, Object>();
			maxObjectMap.put(maxContext, idMap);
		}
		else {
			ensureIdAvailable(idMap, maxObject, id);
		}
		idMap.put(id, maxObject);
		objectMetadata.put(maxObject, new String[] { maxContext, id });

		// if maxContext is null, the evaluatorContext will be some semi-random unique context
		String evaluatorContext = getEvaluatorContext(maxContext, maxObject);

		ScriptEvaluator evaluator = evaluatorContexts.get(evaluatorContext);
		if (evaluator == null) {
			evaluator = newRubyEvaluatorInstance(rubyVersion);
			evaluatorContexts.put(evaluatorContext, evaluator);
			evaluatorContextCounter.put(evaluatorContext, 1);
			Set<Object> maxObjects = objectsUsingEvaluator.addValue(evaluatorContext, maxObject);
			evaluator.declareGlobal("max_objects", maxObjects);
			evaluator.declareGlobal("max_object_map", maxObjectMap);
		}
		else {
			int count = evaluatorContextCounter.get(evaluatorContext);
			count++;
			evaluatorContextCounter.put(evaluatorContext, count);
			objectsUsingEvaluator.addValue(evaluatorContext, maxObject);
		}
		return evaluator;
	}

	/**
	 * 
	 * @return true if the entire context was removed
	 */
	public static void removeRubyEvaluator(Object maxObject) {
		String[] contextAndId = objectMetadata.remove(maxObject);
		if (contextAndId != null) {
			String maxContext = contextAndId[0];
			String evaluatorContext = getEvaluatorContext(maxContext, maxObject);
			String id = contextAndId[1];
			int count = evaluatorContextCounter.get(evaluatorContext);
			count--;
			if (count > 0) {
				evaluatorContextCounter.put(evaluatorContext, count++);
				objectsUsingEvaluator.get(evaluatorContext).remove(maxObject);
			}
			else {
				notifyContextDestroyedListener(maxContext, maxObject);
				objectsUsingEvaluator.remove(evaluatorContext);
				evaluatorContextCounter.remove(evaluatorContext);
				evaluatorContexts.remove(evaluatorContext);
			}

			// We have to manage the map this way instead of relying on the count, because
			// the null maxContext means a different evaluatorContext for each object,
			// so the counts don't accurately reflect what's in this map
			Map<String, Object> idMap = maxObjectMap.get(maxContext);
			idMap.remove(id);
			if (idMap.isEmpty()) {
				maxObjectMap.remove(maxContext);
			}
		}
	}

	public static void updateId(Object maxObject, String id) {
		String[] contextAndId = objectMetadata.get(maxObject);
		if (contextAndId != null) {
			String maxContext = contextAndId[0];
			String oldId = contextAndId[1];

			Map<String, Object> idMap = maxObjectMap.get(maxContext);
			ensureIdAvailable(idMap, maxObject, id);

			idMap.remove(oldId);
			idMap.put(id, maxObject);
			contextAndId[1] = id;
		}
	}

	private static void ensureIdAvailable(Map<String, Object> idMap, Object maxObject, String id) {
		Object existingObject = idMap.get(id);
		if (existingObject != null && !existingObject.equals(maxObject)) {
			String base = id;
			long index = 0;
			if (id.matches(".*\\[\\d*\\]$")) {
				int split = id.lastIndexOf('[');
				base = id.substring(0, split);
				String indexStr = id.substring(split + 1);
				indexStr = indexStr.substring(0, indexStr.length() - 1);
				index = Long.parseLong(indexStr);
			}
			String suggest;
			do {
				index++;
				suggest = base + "[" + index + "]";
			} while (idMap.containsKey(suggest));
			throw new IdInUseException(suggest);
		}
	}

	private static String getEvaluatorContext(String maxContext, Object maxObject) {
		if (maxContext == null) {
			return "__" + Integer.toHexString(maxObject.hashCode());
		}
		else {
			return maxContext;
		}
	}

	/*
	public static void registerContextDestroyedListener(Object maxObject, String callbackMethod) {
		String[] contextAndId = objectMetadata.get(maxObject);
		if (contextAndId != null) {
			String maxContext = contextAndId[0];
			String evaluatorContext = getEvaluatorContext(maxContext, maxObject);
			evaluatorContextDestroyedListeners.addValue(evaluatorContext, callbackMethod);
		}
	}
	*/

	public static void notifyContextDestroyedListener(String maxContext, Object maxObject) {
		String evaluatorContext = getEvaluatorContext(maxContext, maxObject);
		ScriptEvaluator ruby = evaluatorContexts.get(evaluatorContext);
		/*
		Collection<String> callbackMethods = evaluatorContextDestroyedListeners.remove(evaluatorContext);
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
		*/
		if (ruby != null) {
			// The callback method behavior above should be phased out in favor of this:
			ruby.exit();
		}
	}

	private static ScriptEvaluator newRubyEvaluatorInstance(CompatVersion rubyVersion) {
		if (evaluatorConstructor == null) {
			String evaluatorClassName = RubyProperties.getRubyEngine();
			try {
				@SuppressWarnings("unchecked")
				Class<ScriptEvaluator> evaluatorClass = (Class<ScriptEvaluator>) Class.forName(evaluatorClassName);
				evaluatorConstructor = evaluatorClass.getConstructor(CompatVersion.class);
			}
			catch (ClassNotFoundException e) {
				throw new RuntimeException(e);
			}
			catch (NoSuchMethodException e) {
				throw new RuntimeException(e);
			}
		}
		try {
			return evaluatorConstructor.newInstance(rubyVersion);
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
