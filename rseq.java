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

import java.util.Arrays;
import java.util.List;

import ajm.seqsupport.Item;
import ajm.util.MappedList;
import ajm.util.Utils;

import com.cycling74.max.Atom;
import com.cycling74.max.Executable;

/**
 * The ajm.rseq MaxObject
 * 
 * @version 0.85
 * @author Adam Murray (adam@compusition.com)
 */
public class rseq extends seq {

	public rseq(Atom[] args) {
		super(args); // declares seq attributes
		parser.setEvalNotes(false);
	}

	@Override
	protected Executable getInitializer() {
		return new RseqInitializer();
	}

	protected class RseqInitializer extends SeqInitializer {
		@Override
		public void execute() {
			super.execute();
		}
	}

	protected int count = 0;
	protected int duration = 0;

	@Override
	protected void onSeqChange() {
		super.onSeqChange();
		if (seq.size() > 0) {
			boolean allZeros = true;
			for (Item item : seq) {
				Object val = item.getValue();
				if (val instanceof Atom) {
					Atom atom = (Atom) val;
					if (Utils.isNumber(atom) && atom.toInt() != 0) {
						allZeros = false;
						break;
					}
				}
			}
			if (allZeros) {
				seq.add(new Item(1)); // prevents infinite loops
			}
		}
	}

	@Override
	public void bang() {
		if (!seq.isEmpty()) {
			if (count >= duration) {
				if (duration > 0) { // auto increment has issues with setIndex (rethink?)
					index(index + step);
				}
				else {
					// handle case where index is set before seq
					index(index);
				}
			}

			if (count == 0) {
				output();
				if (step % seq.size() != 0) {
					while (duration == 0) {
						// a list of all 0s (which would cause infinite loops) is prevented when setting the seq
						index(index + step);
						output();
					}
					// infinite loops are still possible (think step==2 and every other val is 0),
					// so just record the start index when duration==0 and break
					// loop if we ever hit that index again. then we don't need to mess with the seq when all 0s
				}
				// else we'd have an infinite loop
			}
			count++;
		}
	}

	@Override
	public void index(int idx) {
		if (seq.size() > 0) {
			index = idx;
			fixIndexBounds();

			Object val = seq.get(index).getValue();
			if (val instanceof Atom) {
				Atom atom = (Atom) val;
				// Strings will be coerced to 0, which is exactly what we want (output immediately and advance)
				duration = Math.abs(atom.toInt());
			}
			else {
				duration = 0;
			}
			count = 0;
		}
	}

	@Override
	public void reset() {
		super.reset();
		count = 0;
		duration = 0;
	}

	public boolean equals(Object obj) {
		if (obj instanceof rseq) {
			return Arrays.equals(getseq(), ((rseq) obj).getseq());
		}
		else {
			return false;
		}
	}
}
