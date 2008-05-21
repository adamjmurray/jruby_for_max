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

import static ajm.seqsupport.Parser.STATE.*;
import static ajm.seqsupport.Token.TYPE.*;

import java.io.PrintStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Stack;

import ajm.rubysupport.MaxRubyEvaluator;

import com.cycling74.max.Atom;

/**
 * A Parser for the ajm objects sequencing syntax.
 * 
 * @version 0.8
 * @author Adam Murray (adam@compusition.com)
 */
public class Parser {

	public Parser() {
		evalNotes = true;
	}

	private MaxRubyEvaluator ruby;

	public void setRubyEvaluator(MaxRubyEvaluator ruby) {
		this.ruby = ruby;
	}

	enum STATE {
		CHORD, REPETITION, RUBY, DEFAULT;
	}

	private boolean evalNotes = true;
	private CharSequence input;
	private int index;
	private boolean lookedAhead;
	private Token token;
	Stack<STATE> states = new Stack<STATE>();
	private Stack<List<Item>> scopes = new Stack<List<Item>>();
	private List<Item> topScope = new ArrayList<Item>();
	private List<Item> currentScope;

	public List<Item> parse(Atom[] list) {
		return parse(null, list);
	}

	public List<Item> parse(String msg, Atom[] args) {
		// construct a single String from the input (makes parsing easier)
		StringBuilder input = new StringBuilder();
		if (msg != null && (msg.trim().length() > 0 || args.length > 0)) {
			// the last 2 constraints above are to handle a whitespace only String
			// like an empty string. This is to handle the " " value for empty ajm.seq

			if (msg.contains(" ") && !msg.contains("[") && !msg.contains("{")) {
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

			if (arg.isString()) {
				String str = arg.toString();
				if (str.contains(" ") && !str.contains("[") && !str.contains("{")) {
					// this is a chord
					input.append("[").append(arg).append("]");
				}
				else {
					input.append(arg);
				}
			}
			else {
				input.append(arg);
			}
		}

		return parse(input);
	}

	public List<Item> parse(CharSequence inputStr) {
		input = inputStr;
		topScope.clear();
		currentScope = topScope;
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
				throw new IllegalStateException("Unexpected '*' (index=" + index
						+ "): Did you forget to put something before the '*'?");

			case NEXT:
				evalRepeat(new Item("next"));
				break;

			case PREV:
				evalRepeat(new Item("prev"));
				break;

			case RUBY_BEGIN:
				startScope(RUBY);
				break;

			case RUBY_END:
				endScope(RUBY);
				break;

			case TEXT:
				Item item;

				if (states.peek() == RUBY) {
					String rubyCode = token.getText();
					// debug("RUBY CODE = " + rubyCode);
					item = new Item(rubyCode, ruby);
				}
				else if (evalNotes) {
					item = new Item(token.getValue());
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

		if (currentScope != topScope) {
			throw new IllegalStateException(
					"Input ended unexpectedly. Did you type '[' or '(' without a matching ']' or ')'?");
		}
		return topScope;
	}

	private void startScope(STATE state) {
		if (state == CHORD && states.contains(CHORD)) {
			throw new IllegalStateException("Unexpected '[' (index=" + index + "): nested chords are not allowed.");
		}
		states.push(state);
		scopes.push(currentScope);
		currentScope = new ArrayList<Item>();
	}

	private void endScope(STATE state) {
		if (states.pop() != state) {
			throw new IllegalStateException("Unexpected end of " + state + " (index=" + index + ")");
		}
		List<Item> scope = currentScope;
		if (state == CHORD) {
			// TODO: this could be optimized
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
				try {
					if (token == null || token.getType() != TEXT) {
						throw new NumberFormatException();
					}
					repetitions = token.getInt();
				}
				catch (NumberFormatException e) {
					throw new IllegalStateException("Expected an integer after '*' (index=" + index + ")");
				}
			}
			else {
				lookedAhead = true;
			}
		}
		return repetitions;
	}

	private static final char RUBY_END_CHAR = '}';
	private static final Token RUBY_END_TOKEN = new Token(RUBY_END);

	private static Map<Character, Token> specialCharMap = new HashMap<Character, Token>();
	static {
		specialCharMap.put('[', new Token(CHORD_BEGIN));
		specialCharMap.put(']', new Token(CHORD_END));
		specialCharMap.put('(', new Token(REPEAT_BEGIN));
		specialCharMap.put(')', new Token(REPEAT_END));
		specialCharMap.put('*', new Token(REPEAT_STAR));
		specialCharMap.put('>', new Token(NEXT));
		specialCharMap.put('<', new Token(PREV));
		specialCharMap.put('{', new Token(RUBY_BEGIN));
		specialCharMap.put(RUBY_END_CHAR, RUBY_END_TOKEN);
	}

	private void nextToken() {
		token = null;

		StringBuilder buf = new StringBuilder();
		if (states.peek() == RUBY) {
			for (index++; index < input.length(); index++) {
				char c = input.charAt(index);

				// TODO: need to handle escaped } character
				if (c == RUBY_END_CHAR) {
					if (buf.length() == 0) {
						token = RUBY_END_TOKEN;
					}
					else {
						index--;
					}
					break;
				}
				else {
					buf.append(c);
				}
			}
		}
		else for (index++; index < input.length(); index++) {
			char c = input.charAt(index);

			if (Character.isWhitespace(c)) {
				if (buf.length() > 0) {
					break;
				}
			}
			else {
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
				else {
					buf.append(c);
				}
			}
		}

		if (buf.length() > 0) {
			token = new Token(TEXT, buf.toString());
		}
	}

	public boolean getEvalNotes() {
		return evalNotes;
	}

	public void setEvalNotes(boolean evalNotes) {
		this.evalNotes = evalNotes;
	}

	// for use with debugging unit tests, must be set from the test after instantiation
	private PrintStream debugOut;

	protected void setDebugOut(PrintStream debugOut) {
		this.debugOut = debugOut;
	}

	public void debug(String message) {
		if (debugOut != null) {
			debugOut.println(message);
		}
	}
}
