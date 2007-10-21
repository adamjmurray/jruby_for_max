package ajm;

import static ajm.seqparser.Parser.STATE.CHORD;
import static ajm.seqparser.Parser.STATE.DEFAULT;
import static ajm.seqparser.Parser.STATE.REPETITION;
import static ajm.seqparser.Parser.Token.TYPE.*;

import java.util.HashMap;
import java.util.Map;
import java.util.Stack;

import com.cycling74.max.Atom;
import com.cycling74.max.MaxObject;

public class seqparser extends MaxObject {

	public seqparser() {
		createInfoOutlet(false);
	}

	public void list(Atom[] list) {
		anything(null, list);
	}

	public void anything(String msg, Atom[] args) {
		// construct a single String from the input (makes parsing easier)
		StringBuilder input = new StringBuilder();
		if (msg != null) {
			input.append(msg).append(" ");
		}
		for (int i = 0; i < args.length; i++) {
			if (i > 0) {
				input.append(" ");
			}
			input.append(args[i]);
		}

		output(new Parser(input).parse());
	}

	protected void output(String data) {
		outlet(0, Atom.newAtom(data));
	}


	protected static class Parser {


		protected static class Token {

			enum TYPE {
				REPEAT_BEGIN, REPEAT_END, REPEAT_STAR, CHORD_BEGIN, CHORD_END, NEXT, TEXT;
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

			public String getText() {
				return text;
			}

			public int getValue() {
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
						return Integer.parseInt(text);
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

						default:
							break loop;
					}
				}

				int octave = Integer.parseInt(text.substring(i));

				val += (octave + 1) * 12;
				return val;
			}

		}

		enum STATE {
			CHORD, REPETITION, DEFAULT;
		}

		private CharSequence input;
		private int index = -1;
		private boolean lookedAhead = false;
		private Token token;
		Stack<STATE> states = new Stack<STATE>();
		private Stack<StringBuilder> scopes = new Stack<StringBuilder>();
		private StringBuilder currentScope;

		public Parser(CharSequence input) {
			this.input = input;
		}

		protected String parse() {
			currentScope = new StringBuilder();
			states.push(DEFAULT);
			nextToken();
			do {
				switch (token.getType()) {
					case CHORD_BEGIN:
						startScope(CHORD);
						break;

					case CHORD_END:
						endScope(CHORD);
						break;

					case REPEAT_BEGIN:
						startScope(REPETITION);
						break;

					case REPEAT_END:
						endScope(REPETITION);
						break;

					case REPEAT_STAR:
						throw new IllegalStateException("Unexpected '*' at character " + index);

					case NEXT:
						evalRepeat("next");
						break;

					case TEXT:

						String value = null;
						try {
							value = token.getValue() + "";
						}
						catch (NumberFormatException e) {
							value = token.getText();
						}
						evalRepeat(value + "");
						break;

					default:
						throw new IllegalStateException("There is a bug in the parsing algorithm!");

				}
				if (!lookedAhead) {
					nextToken();
				}
				else {
					lookedAhead = false;
				}

			} while (token != null);

			return currentScope.toString().trim();
		}

		private void startScope(STATE state) {
			if (state == CHORD && states.contains(CHORD)) {
				throw new IllegalStateException("nested chords '[' are not allowed, at character " + index);
			}
			states.push(state);
			scopes.push(currentScope);
			currentScope = new StringBuilder();
		}

		private void endScope(STATE state) {

			if (states.pop() != state) {
				throw new IllegalStateException("Unexpected end of " + state + " at character " + index);
			}
			String scope = currentScope.toString().trim();
			if (state == CHORD) {
				scope = '"' + scope + '"';
			}
			currentScope = scopes.pop();
			evalRepeat(scope);
		}

		private void evalRepeat(String text) {
			nextToken();
			int repetitions = 1;
			if (token != null) {
				if (token.getType() == REPEAT_STAR) {
					nextToken();
					if (token.getType() == TEXT) {
						repetitions = token.getValue();
					}
					else {
						throw new IllegalStateException("Expected a number after '*' at character " + index);
					}
				}
				else {
					lookedAhead = true;
				}
			}

			for (int i = 0; i < repetitions; i++) {
				currentScope.append(text).append(" ");
			}
		}


		private static Map<Character, Token> specialCharMap = new HashMap<Character, Token>();
		static {
			specialCharMap.put('[', new Token(CHORD_BEGIN));
			specialCharMap.put(']', new Token(CHORD_END));
			specialCharMap.put('(', new Token(REPEAT_BEGIN));
			specialCharMap.put(')', new Token(REPEAT_END));
			specialCharMap.put('*', new Token(REPEAT_STAR));
			specialCharMap.put('>', new Token(NEXT));
		}

		private void nextToken() {
			token = null;

			StringBuilder buf = new StringBuilder();

			for (index++; index < input.length(); index++) {
				char c = input.charAt(index);

				Token specialToken = specialCharMap.get(c);
				if (specialToken != null) {
					if (buf.length() == 0) {
						token = specialToken;
					}
					else {
						// we've run over into the next token, so back up
						index--;
					}
					break;
				}

				else if (Character.isWhitespace(c)) {
					if (buf.length() > 0) {
						break;
					}
				}

				else {
					buf.append(c);
				}
			}

			if (buf.length() > 0) {
				token = new Token(TEXT, buf.toString());
			}
		}
	}
}
