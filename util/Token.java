package ajm.util;

import ajm.data.Item;

import com.cycling74.max.Atom;

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
		int quarterSteps = 0;
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
