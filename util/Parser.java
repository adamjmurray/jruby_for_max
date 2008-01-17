package ajm.util;

import static ajm.util.Parser.STATE.CHORD;
import static ajm.util.Parser.STATE.DEFAULT;
import static ajm.util.Parser.STATE.REPETITION;
import static ajm.util.Token.TYPE.*;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Stack;

import com.cycling74.max.Atom;

public class Parser {

	public Parser() {
		evaluateNotes = true;
	}

	public Parser(boolean evaluateNotes) {
		this.evaluateNotes = evaluateNotes;
	}

	enum STATE {
		CHORD, REPETITION, DEFAULT;
	}

	private boolean evaluateNotes = true;
	private CharSequence input;
	private int index;
	private boolean lookedAhead;
	private Token token;
	Stack<STATE> states = new Stack<STATE>();
	private Stack<List<Item>> scopes = new Stack<List<Item>>();
	private List<Item> currentScope = new ArrayList<Item>();

	public List<Item> parse(Atom[] list) {
		return parse(null, list);
	}

	public List<Item> parse(String msg, Atom[] args) {
		// construct a single String from the input (makes parsing easier)
		StringBuilder input = new StringBuilder();
		if (msg != null) {
			if (msg.contains(" ")) {
				// this is a chord
				input.append("[").append(msg).append("]");
			}
			else {
				input.append(msg);
			}
			input.append(" ");
		}
		for (int i = 0; i < args.length; i++) {
			if (i > 0) {
				input.append(" ");
			}
			Atom arg = args[i];
			if (arg.isString() && arg.toString().contains(" ")) {
				// this is a chord
				input.append("[").append(arg).append("]");
			}
			else {
				input.append(arg);
			}
		}

		return parse(input);
	}

	protected List<Item> parse(CharSequence inputStr) {
		input = inputStr;
		currentScope.clear();
		index = -1;
		lookedAhead = false;
		states.clear();
		scopes.clear();

		states.push(DEFAULT);
		nextToken();
		while (token != null) {
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
					evalRepeat(new Item("next"));
					break;

				case TEXT:
					Item item;
					if (evaluateNotes) {
						item = token.getValue();
					}
					else {
						item = token.getItem();
					}
					evalRepeat(item);
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
		}

		return currentScope;
	}

	private void startScope(STATE state) {
		if (state == CHORD && states.contains(CHORD)) {
			throw new IllegalStateException("nested chords '[' are not allowed, at character " + index);
		}
		states.push(state);
		scopes.push(currentScope);
		currentScope = new ArrayList<Item>();
	}

	private void endScope(STATE state) {
		if (states.pop() != state) {
			throw new IllegalStateException("Unexpected end of " + state + " at character " + index);
		}
		List<Item> scope = currentScope;
		if (state == CHORD) {
			// TODO: this is bad! If we know we're in the chord state, then we should be adding to the current Item!
			Atom[] chord = new Atom[scope.size()];
			for (int i = 0; i < scope.size(); i++) {
				chord[i] = scope.get(i).getAtom();
			}
			scope.clear();
			scope.add(new Item(chord));
		}
		currentScope = scopes.pop();
		evalRepeat(scope);
	}


	private void evalRepeat(Item item) {
		int repetitions = getRepititions();
		for (int i = 0; i < repetitions; i++) {
			currentScope.add(item);
		}
	}

	private void evalRepeat(List<Item> subseq) {
		int repetitions = getRepititions();
		for (int i = 0; i < repetitions; i++) {
			currentScope.addAll(subseq);
		}
	}

	private int getRepititions() {
		nextToken();
		int repetitions = 1;
		if (token != null) {
			if (token.getType() == REPEAT_STAR) {
				nextToken();
				if (token.getType() == TEXT) {
					repetitions = token.getInt();
				}
				else {
					throw new IllegalStateException("Expected a number after '*' at character " + index);
				}
			}
			else {
				lookedAhead = true;
			}
		}
		return repetitions;
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
