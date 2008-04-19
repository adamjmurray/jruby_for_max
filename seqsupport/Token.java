package ajm.seqsupport;

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

import com.cycling74.max.Atom;

/**
 * A token in the ajm objects sequencing syntax.
 * 
 * @version 0.7
 * @author Adam Murray (adam@compusition.com)
 */
public class Token {

	enum TYPE {
		REPEAT_BEGIN, REPEAT_END, REPEAT_STAR, CHORD_BEGIN, CHORD_END, NEXT, PREV, TEXT;
	}

	private TYPE type;
	private String text;

	public Token(TYPE type) {
		this(type, null);
	}

	public Token(TYPE type, String text) {
		this.type = type;
		this.text = text;
	}

	public TYPE getType() {
		return type;
	}

	public int getInt() {
		return Integer.parseInt(text);
	}

	public String getText() {
		return text;
	}

	public Item getItem() {
		try {
			if (text.contains(".")) {
				return new Item(Float.parseFloat(text));
			}
			else {
				return new Item(Integer.parseInt(text));
			}
		}
		catch (NumberFormatException e) {
			return new Item(text);
		}
	}

	public Atom getAtom() {
		try {
			if (text.contains(".")) {
				return Atom.newAtom(Float.parseFloat(text));
			}
			else {
				return Atom.newAtom(Integer.parseInt(text));
			}
		}
		catch (NumberFormatException e) {
			return Atom.newAtom(text);
		}
	}

	public Atom getValue() {
		int val;
		switch (Character.toUpperCase(text.charAt(0))) {
		case 'C':
			val = 0;
			break;

		case 'D':
			val = 2;
			break;

		case 'E':
			val = 4;
			break;

		case 'F':
			val = 5;
			break;

		case 'G':
			val = 7;
			break;

		case 'A':
			val = 9;
			break;

		case 'B':
			val = 11;
			break;

		default:
			return getAtom();

		}

		int i = 1;
		int quarterSteps = 0;
		loop: for (; i < text.length(); i++) {
			switch (text.charAt(i)) {
			case '#':
				val++;
				break;

			case 'b':
				val--;
				break;

			case '+':
				quarterSteps++;
				break;

			case '_':
				quarterSteps--;
				break;

			default:
				break loop;
			}
		}

		try {
			int octave = Integer.parseInt(text.substring(i));
			val += (octave + 1) * 12;
			// only convert to float if absolutely necessary (floats introduce round off error)
			if (quarterSteps % 2 == 0) {
				return Atom.newAtom(val + quarterSteps / 2);
			}
			else {
				return Atom.newAtom(val + quarterSteps / 2.0f);
			}
		}
		catch (NumberFormatException e) {
			return Atom.newAtom(text);
		}
	}
}
