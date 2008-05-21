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
 * Factory for Ruby evaluators that manages shared contexts.
 * 
 * @version 0.8
 * @author Adam Murray (adam@compusition.com)
 */
public class RubyEvaluatorFactory {

	private static Map<String, RubyEvaluator> contexts = new HashMap<String, RubyEvaluator>();
	private static Map<String, Integer> contextCounter = new HashMap<String, Integer>();

	private RubyEvaluatorFactory() {
	}

	public static RubyEvaluator getRubyEvaluator(String context) {
		RubyEvaluator evaluator = contexts.get(context);
		if (evaluator == null) {
			evaluator = new RubyEvaluator();
			contexts.put(context, evaluator);
			contextCounter.put(context, 1);
		}
		else {
			int count = contextCounter.get(context);
			count++;
			contextCounter.put(context, count);
		}
		return evaluator;
	}

	public static void removeRubyEvaluator(String context) {
		int count = contextCounter.get(context);
		count--;
		if (count > 0) {
			contextCounter.put(context, count++);
		}
		else {
			contextCounter.remove(context);
			contexts.remove(context); // lets the garbage collector do its job
		}
	}
}
