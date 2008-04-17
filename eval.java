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

import ajm.data.Item;
import ajm.maxsupport.AbstractMaxObject;
import ajm.util.Parser;

import com.cycling74.max.Atom;

/**
 * The ajm.eval MaxObject
 * 
 * @version 0.7
 * @author Adam Murray (adam@compusition.com)
 */
public class eval extends AbstractMaxObject {

	Parser parser = new Parser();

	public eval(Atom[] args) {
		declareIO(1, 1);
		setInletAssist(new String[] { "message" });
		setOutletAssist(new String[] { "evaluated message" });
		// TODO parsing options
	}

	public void list(Atom[] list) {
		anything(null, list);
	}

	public void anything(String msg, Atom[] args) {
		try {
			List<Item> parsed = parser.parse(msg, args);
			Atom[] atoms = new Atom[parsed.size()];
			for (int i = 0; i < atoms.length; i++) {
				atoms[i] = parsed.get(i).getAtom();
			}
			outlet(0, atoms);
		}
		catch (IllegalStateException e) {
			err("Could not evaluate: " + toString(msg, args) + "\n" + e.getMessage());
		}
	}
}
