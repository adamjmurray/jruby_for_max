package ajm;

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

import java.util.List;

import ajm.maxsupport.AbstractMaxRubyObject;
import ajm.seqsupport.Item;
import ajm.seqsupport.Parser;
import ajm.util.Utils;

import com.cycling74.max.Atom;
import com.cycling74.max.Executable;

/**
 * The ajm.eval MaxObject
 * 
 * @version 0.8
 * @author Adam Murray (adam@compusition.com)
 */
public class eval extends AbstractMaxRubyObject {

	Parser parser = new Parser();

	public eval(Atom[] args) {
		declareIO(1, 1);
		setInletAssist(new String[] { "message" });
		setOutletAssist(new String[] { "evaluated message" });
		// TODO parsing options
	}

	@Override
	protected Executable getInitializer() {
		return new EvalInitializer();
	}

	protected class EvalInitializer extends DefaultRubyInitializer {
		@Override
		public void execute() {
			super.execute();
			parser.setRubyEvaluator(ruby);
		}
	}

	public void list(Atom[] list) {
		anything(null, list);
	}

	public void anything(String msg, Atom[] args) {
		try {
			List<Item> items = parser.parse(msg, args);
			Atom[] atoms = new Atom[items.size()];
			for (int i = 0; i < atoms.length; i++) {
				Item item = items.get(i);
				item.getValue(); // evaluate ruby, if needed
				atoms[i] = item.toAtom();
			}
			outlet(0, atoms);
		}
		catch (Exception e) {
			err("Could not evaluate: " + Utils.detokenize(msg, args) + "\n" + e.getMessage());
		}
	}
}
