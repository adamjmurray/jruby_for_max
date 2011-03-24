package jruby4max.rubysupport;

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

import jruby4max.util.MappedSet;
import org.jruby.CompatVersion;

import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/**
 * Factory for Ruby evaluators that manages shared contexts.
 *
 * Every Ruby evaluator maintains its own set of class/method definitions, and global/constant/attribute variables.
 * Each evaluator is uniquely identified by a context String. This context is either the @context attribute of
 * the Max object, or is generated if no @context is provided. Additionally, every MaxObject has a unique @id, which
 * is stored in the data structures here.
 *
 * This class provides evaluator instances and keeps track of which evaluator goes with which MaxObject.
 *
 * The maxObjectMap in this class is expose to all Ruby scripts via the $max_object_map global variable.
 *
 * @author Adam Murray (adam@compusition.com)
 */
public class ScriptEvaluatorManager {

	private static Map<String, IScriptEvaluator> evaluatorContexts = new HashMap<String, IScriptEvaluator>();

	/**
	 * Map @context => number of evaluators currently using
	 */
	private static Map<String, Integer> evaluatorContextCounter = new HashMap<String, Integer>();

	/**
	 * Map @context => a Set of MaxObjects
	 */
	private static MappedSet<String, Object> objectsUsingEvaluator = new MappedSet<String, Object>();

	/**
	 * Map @context => a Map of ( @id => MaxObject )
	 */
	private static Map<String, Map<String, Object>> maxObjectMap = new HashMap<String, Map<String, Object>>();

	/**
	 * Stores a mapping from max objects to their @context and @id
	 */
	private static Map<Object, String[]> objectMetadata = new HashMap<Object, String[]>();

	// This is a singleton (or more accurately: a static utility class), so no instances allowed to be constructed.
	private ScriptEvaluatorManager() {
	}

	/**
	 * Get a Ruby evaluator for the specified context.
	 *
	 * @return an implementation of IScriptEvaluator
	 */
	public static IScriptEvaluator getRubyEvaluator( String maxContext, String id, Object maxObject, CompatVersion rubyVersion ) {

		Map<String, Object> idMap = maxObjectMap.get( maxContext );
		if( idMap == null ) {
			idMap = new HashMap<String, Object>();
			maxObjectMap.put( maxContext, idMap );
		}
		else {
			ensureIdAvailable( idMap, maxObject, id );
		}
		idMap.put( id, maxObject );
		objectMetadata.put( maxObject, new String[]{ maxContext, id } );

		// if maxContext is null, the evaluatorContext will be some semi-random unique context
		String evaluatorContext = getEvaluatorContext( maxContext, maxObject );

		IScriptEvaluator evaluator = evaluatorContexts.get( evaluatorContext );
		if( evaluator == null ) {
			evaluator = new ScriptEvaluator( rubyVersion );
			evaluatorContexts.put( evaluatorContext, evaluator );
			evaluatorContextCounter.put( evaluatorContext, 1 );
			Set<Object> maxObjects = objectsUsingEvaluator.addValue( evaluatorContext, maxObject );
			evaluator.declareGlobal( "max_objects", maxObjects );
			evaluator.declareGlobal( "max_object_map", maxObjectMap );
		}
		else {
			int count = evaluatorContextCounter.get( evaluatorContext );
			count++;
			evaluatorContextCounter.put( evaluatorContext, count );
			objectsUsingEvaluator.addValue( evaluatorContext, maxObject );
		}
		return evaluator;
	}

	/**
	 * Signal that a MaxObject was destroyed, and terminate the evaluator for this MaxObject if no other objects are
	 * referencing it.
	 */
	public static void removeRubyEvaluator( Object maxObject ) {
		String[] contextAndId = objectMetadata.remove( maxObject );
		if( contextAndId != null ) {
			String maxContext = contextAndId[0];
			String evaluatorContext = getEvaluatorContext( maxContext, maxObject );
			String id = contextAndId[1];
			int count = evaluatorContextCounter.get( evaluatorContext );
			count--;
			if( count > 0 ) {
				evaluatorContextCounter.put( evaluatorContext, count );
				objectsUsingEvaluator.get( evaluatorContext ).remove( maxObject );
			}
			else {
				notifyContextDestroyedListener( maxContext, maxObject );
				objectsUsingEvaluator.remove( evaluatorContext );
				evaluatorContextCounter.remove( evaluatorContext );
				evaluatorContexts.remove( evaluatorContext );
			}

			// We have to manage the map this way instead of relying on the count, because
			// the null maxContext means a different evaluatorContext for each object,
			// so the counts don't accurately reflect what's in this map
			Map<String, Object> idMap = maxObjectMap.get( maxContext );
			idMap.remove( id );
			if( idMap.isEmpty() ) {
				maxObjectMap.remove( maxContext );
			}
		}
	}

	/**
	 * Update the id for an existing MaxObject
	 */
	public static void updateId( Object maxObject, String id ) {
		String[] contextAndId = objectMetadata.get( maxObject );
		if( contextAndId != null ) {
			String maxContext = contextAndId[0];
			String oldId = contextAndId[1];

			Map<String, Object> idMap = maxObjectMap.get( maxContext );
			ensureIdAvailable( idMap, maxObject, id );

			idMap.remove( oldId );
			idMap.put( id, maxObject );
			contextAndId[1] = id;
		}
	}

	/**
	 * Validate that an id is unique within a context.
	 * @param idMap - a map from @id to MaxObject within a specific context
	 * @param maxObject - the MaxObject requesting this id (it's ok for a MaxObject to set its id to its current id)
	 * @param id - the requested id for this MaxObject
	 * @throws IdInUseException if the @id is not available. The message of the Exception provides an available id.
	 */
	protected static void ensureIdAvailable( Map<String, Object> idMap, Object maxObject, String id ) {
		Object existingObject = idMap.get( id );
		if( existingObject != null && !existingObject.equals( maxObject ) ) {
			String base = id;
			long index = 0;
			if( id.matches( ".*\\[\\d*\\]$" ) ) {
				int split = id.lastIndexOf( '[' );
				base = id.substring( 0, split );
				String indexStr = id.substring( split + 1 );
				indexStr = indexStr.substring( 0, indexStr.length() - 1 );
				index = Long.parseLong( indexStr );
			}
			String suggest;
			do {
				index++;
				suggest = base + "[" + index + "]";
			} while( idMap.containsKey( suggest ) );
			throw new IdInUseException( suggest );
		}
	}

	/**
	 * Either return the requested context, or generate one.
	 * @param maxContext - the requested context. May be null in which case a context is generated.
	 * @param maxObject - the MaxObject which will be using thie context.
	 * @return the context String
	 */
	protected static String getEvaluatorContext( String maxContext, Object maxObject ) {
		if( maxContext == null ) {
			return "__" + Integer.toHexString( maxObject.hashCode() );
		}
		else {
			return maxContext;
		}
	}

	/**
	 * Notify a ruby evaluator that a MaxObject has been destroyed.
	 *
	 * NOTE: typically you should use removeRubyEvaluator() instead, but this method is exposed publicly for
	 * the scenario where a MaxObject is being reset when reloading a @file.
	 *
	 * @param maxContext - the context String that identifies a specific evaluator
	 * @param maxObject - the MaxObject being destroyed
	 */
	public static void notifyContextDestroyedListener( String maxContext, Object maxObject ) {
		String evaluatorContext = getEvaluatorContext( maxContext, maxObject );
		IScriptEvaluator ruby = evaluatorContexts.get( evaluatorContext );
		if( ruby != null ) {
			ruby.exit();
		}
	}
}
