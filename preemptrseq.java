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

import java.util.ArrayList;
import java.util.List;

import ajm.seqsupport.Item;

import com.cycling74.max.Atom;

/**
 * Preemptive rseq, sends positive values out one bang early.
 * 
 * @version 0.85
 * @author Adam Murray (adam@compusition.com)
 */
public class preemptrseq extends rseq {

	List<Item> actualSeq = new ArrayList<Item>();

	public preemptrseq(Atom[] args) {
		super(args);
	}

	@Override
	public void set(Atom[] list) {
		try {
			List<Item> newSeq = parser.parse(list);

			actualSeq.clear();
			actualSeq.addAll(newSeq);
			setPreemptiveSeq();

			onSeqChange();
		}
		catch (IllegalStateException e) {
			err("Could not evaluate: " + toString(list) + "\n" + e.getMessage());
		}
	}

	// This shouldn't be necessary
	@Override
	public void resetseq() {
		actualSeq.clear();
		actualSeq.addAll(defaultSeq);
		setPreemptiveSeq();
		onSeqChange();
		outputSeq();
	}

	// The seq needs to look the same externally
	// but internally transform positive numbers n into -(n-1), -1
	// e.g. 16 4 3 -> -15 1 -3 1 -2 1
	private void setPreemptiveSeq() {
		seq.clear();
		for (Item item : actualSeq) {
			Atom atom = item.getAtom();
			if (isNumber(atom)) {
				int val = atom.toInt();
				if (val > 1) {
					seq.add(new Item(-(val - 1)));
					seq.add(new Item(1));
				}
				else {
					seq.add(item);
				}
			}
			else {
				seq.add(item);
			}
		}
	}

	@Override
	public Atom[] getseq() {
		Atom[] atoms = new Atom[actualSeq.size()];
		for (int i = 0; i < actualSeq.size(); i++) {
			atoms[i] = actualSeq.get(i).getAtom();
		}
		return atoms;
	}

}
