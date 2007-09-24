package ajm;

import java.util.ArrayList;
import java.util.List;

import com.cycling74.max.Atom;
import com.cycling74.max.MaxObject;

public class seqparser extends MaxObject {

	public void list(Atom[] list) {
		Parser p = new Parser(list);
		// post("Finished parsing: " + p.getRoot());

		output(p.evaluate());
	}

	public void anything(String msg, Atom[] args) {
		Parser p = new Parser(msg, args);
		// post("Finished parsing: " + p.getRoot());
		output(p.evaluate());
	}

	protected void output(List<String> data) {
		outlet(0, Atom.newAtom(data.toArray(new String[data.size()])));
	}


	protected static class Parser {

		enum TOKEN {
			REPEAT_BEGIN, REPEAT_END, REPEAT_STAR, REPEAT_COUNT, NEXT_SECTION, DATA
		}

		private Node root;
		private Node previousRepeat;
		private TOKEN previous;
		private Node currentParent;

		public Parser(Atom[] list) {
			this(null, list);
		}

		public Parser(String msg, Atom[] args) {
			root = Node.newRoot();
			Node section = Node.newSection();
			root.addChild(section);
			currentParent = section;

			if (msg != null) {
				parse(msg);
			}
			for (Atom atom : args) {
				parse(atom.toString());
			}
		}

		private void parse(String text) {
			// post("tokenizing: " + text);
			StringBuilder data = new StringBuilder();
			char[] chars = text.toCharArray();

			boolean needsQuotes = false;

			for (int i = 0; i < chars.length; i++) {
				char c = chars[i];
				switch (c) {
					case '(':
						flush(data, needsQuotes);
						Node repeat = Node.newRepeat();
						currentParent.addChild(repeat);
						currentParent = repeat;
						previous = TOKEN.REPEAT_BEGIN;
						break;

					case ')':
						flush(data, needsQuotes);
						previousRepeat = currentParent;
						currentParent = currentParent.getParent();
						previous = TOKEN.REPEAT_END;
						break;

					case '*':
						if (previous == TOKEN.REPEAT_END) {
							previous = TOKEN.REPEAT_STAR;
						}
						else {
							// error?
							data.append(c);
						}
						break;

					case '>':
						flush(data, needsQuotes);
						if (currentParent.type == Node.TYPE.REPEAT) {
							throw new IllegalStateException(
									"Illegal syntax: > cannot be used inside a repeated section (between parentheses)");
						}
						Node section = Node.newSection();
						currentParent.getParent().addChild(section);
						currentParent = section;
						previous = TOKEN.NEXT_SECTION;
						break;

					case ' ':
						needsQuotes = true;
						data.append(c);
						break;

					default:
						data.append(c);
				}
			}

			flush(data, needsQuotes);
		}

		private void flush(StringBuilder data, boolean needsQuotes) {
			if (data.length() > 0) {
				if (previous == TOKEN.REPEAT_STAR) {
					previousRepeat.setValue(Integer.parseInt(data.toString()));
					previous = TOKEN.REPEAT_COUNT;
				}
				else {
					if (needsQuotes) {
						data.insert(0, '"');
						data.append('"');
					}
					currentParent.addChild(Node.newTerminal(data));
					previous = TOKEN.DATA;
				}
				data.setLength(0);
			}
		}

		protected Node getRoot() {
			return root;
		}

		protected List<String> evaluate() {
			List<String> result = new ArrayList<String>();
			for (Node child : root.getChildren()) {
				result.add(child.eval());
			}
			return result;
		}

		protected static class Node {

			enum TYPE {
				ROOT, SECTION, REPEAT, TERMINAL
			};

			private final TYPE type;
			private String data;
			private int value;
			private final List<Node> children;
			private Node parent;

			private Node(TYPE type, String data, int value, List<Node> children) {
				this.type = type;
				this.data = data;
				this.value = value;
				this.children = children;
			}

			static Node newRoot() {
				return new Node(TYPE.ROOT, null, -1, new ArrayList<Node>());
			}

			static Node newSection() {
				return new Node(TYPE.SECTION, null, -1, new ArrayList<Node>());
			}

			static Node newTerminal(CharSequence data) {
				return new Node(TYPE.TERMINAL, data.toString(), -1, null);
			}

			static Node newRepeat() {
				return new Node(TYPE.REPEAT, null, 1, new ArrayList<Node>());
			}

			public String getData() {
				return data;
			}

			public void setData(String data) {
				this.data = data;
			}

			public int getValue() {
				return value;
			}

			public void setValue(int value) {
				this.value = value;
			}

			public TYPE getType() {
				return type;
			}

			public List<Node> getChildren() {
				return children;
			}

			public void addChild(Node n) {
				children.add(n);
				n.parent = this;
			}

			public Node getParent() {
				return parent;
			}

			public String eval() {
				switch (type) {
					case ROOT:
						throw new IllegalStateException("The root node cannot be evaluated");

					case SECTION:
						StringBuilder s = new StringBuilder();
						for (int i = 0; i < children.size(); i++) {
							if (i > 0) {
								s.append(" ");
							}
							s.append(children.get(i).eval());
						}
						return s.toString();


					case REPEAT:
						s = new StringBuilder();
						for (int i = 0; i < children.size(); i++) {
							if (i > 0) {
								s.append(" ");
							}
							s.append(children.get(i).eval());
						}
						String seq = s.toString();
						for (int i = 1; i < value; i++) {
							s.append(" ").append(seq); // expand the repitition
						}
						return s.toString();

					default:
						return data;
				}
			}


			public String toString() {
				StringBuilder s = new StringBuilder();
				switch (type) {
					case ROOT:
						for (int i = 0; i < children.size(); i++) {
							if (i > 0) {
								s.append(",");
							}
							s.append(children.get(i).toString());
						}
						break;

					case SECTION:
						s.append("SECTION<");
						for (int i = 0; i < children.size(); i++) {
							if (i > 0) {
								s.append(",");
							}
							s.append(children.get(i).toString());
						}
						s.append(">");
						break;

					case REPEAT:
						s.append("REPEAT(");
						for (int i = 0; i < children.size(); i++) {
							if (i > 0) {
								s.append(",");
							}
							s.append(children.get(i).toString());
						}
						s.append(")*").append(value);
						break;

					default:
						s.append(data);
				}
				return s.toString();
			}

		}
	}

}
