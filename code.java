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

import java.awt.BorderLayout;
import java.awt.Dimension;
import java.awt.Font;
import java.awt.event.ActionEvent;
import java.util.ArrayList;
import java.util.List;

import javax.swing.AbstractAction;
import javax.swing.JButton;
import javax.swing.JComponent;
import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTabbedPane;
import javax.swing.JTextArea;
import javax.swing.SwingUtilities;

import ajm.maxsupport.AbstractMaxObject;
import ajm.maxsupport.TextBlock;
import ajm.util.Utils;

import com.cycling74.max.Atom;

/**
 * Multi-tab plaintext editor.
 * 
 * @version 0.8
 * @author Adam Murray (adam@compusition.com)
 */
public class code extends AbstractMaxObject {

	// TODO: remember the current index in embedMessage

	// TODO: after clicking a tab, put focus on the text area.
	// tried it doesn't work, maybe TextArea needs to be made focusable?
	// try focusing on something else and see if it's just broken in max

	private static int NUM_TABS = 6;

	private JFrame frame;
	private JTabbedPane tabs;
	private List<JTextArea> textAreas = new ArrayList<JTextArea>();
	// private String initText = "";
	private RunAction run = new RunAction(this);

	public code(Atom[] args) {

		declareIO(1, 2);

		if (args.length > 0 && args[0].isInt()) {
			NUM_TABS = args[0].getInt();
		}

		frame = new JFrame("Editor");
		frame.setDefaultCloseOperation(JFrame.HIDE_ON_CLOSE);

		tabs = new JTabbedPane();
		/* Doesn't seem to work. Is it a Max thing?
		tabs.addChangeListener(new ChangeListener() {
			public void stateChanged(ChangeEvent e) {
				System.out.println(tabs.getSelectedIndex());
				activeTextArea().requestFocus();
			}
		});
		*/
		for (int i = 0; i < NUM_TABS; i++) {
			tabs.add(i + "", createEditor());
		}
		frame.add(tabs, BorderLayout.CENTER);

		JPanel buttonPanel = new JPanel();
		buttonPanel.add(new JButton(run));
		frame.add(buttonPanel, BorderLayout.PAGE_END);

		SwingUtilities.invokeLater(new Runnable() {
			public void run() {
				frame.pack();
				// frame.setVisible(true);
			}
		});
	}

	@Override
	protected void notifyDeleted() {
		/*
		SwingUtilities.invokeLater(new Runnable() {
			public void run() {
				frame.dispose();
			}
		});
		*/
		super.notifyDeleted();
	};

	private final String OBJ_ID = hashCode() + "";

	private String getTextBlockName(int tabIndex) {
		return OBJ_ID + "::tab." + tabIndex;
	}

	public void dblclick() {
		open();
	}

	public void open() {
		// if (frame != null) {
		frame.setVisible(true);
		// }
	}

	public void set(Atom[] args) {
		if (args.length > 1 && args[0].isInt()) {
			int index = args[0].getInt();
			if (index > 0 && index < textAreas.size()) {
				textAreas.get(index).setText(Utils.detokenize(Atom.removeFirst(args)));
				return;
			}
		}
		activeTextArea().setText(Utils.detokenize(args));

	}

	public void run(Atom[] args) {
		int index = tabs.getSelectedIndex();
		if (args.length > 0 && args[0].isInt()) {
			int i = args[0].getInt();
			if (i > 0 && i < textAreas.size()) {
				index = i;
			}
		}
		output(index);
	}

	public void bang() {
		output(tabs.getSelectedIndex());
	}

	private void output(int tabIndex) {
		String textblock = getTextBlockName(tabIndex);
		TextBlock.set(textblock, textAreas.get(tabIndex).getText());
		outlet(1, tabIndex);
		outlet(0, "textblock", getTextBlockName(tabIndex));
	}

	private JTextArea activeTextArea() {
		return textAreas.get(tabs.getSelectedIndex());
	}

	private String getText(int tabIndex) {
		return textAreas.get(tabIndex).getText();
	}

	public void save() {
		Atom[] contents = new Atom[NUM_TABS];
		for (int i = 0; i < NUM_TABS; i++) {
			String text = getText(i);
			// This is completely broken. Max pretty much makes it impossible for me to embed
			// arbitrary strings. Maybe it will work in Max 5...
			System.out.println("TEXT = " + text);
			// text = text.replaceAll("\"", "\\\\\"");
			// text = text.replaceAll(" ", "\\\\ ");
			System.out.println("Escaped text = " + text);
			contents[i] = Atom.newAtom(text);
			System.out.println(contents[i].toString());
		}
		embedMessage("settabs", contents);
	}

	public void settabs(Atom[] args) {
		for (int i = 0; i < args.length && i < NUM_TABS; i++) {
			System.out.println("Setting text: " + args[i].toString());
			textAreas.get(i).setText(args[i].toString());
		}
	}

	private JComponent createEditor() {
		JTextArea textArea = new JTextArea();
		textArea.setTabSize(2); // this probably isn't appropriate for other languages
		textArea.setFont(new Font("Monospaced", Font.PLAIN, 11));
		// textArea.setText(initText);
		textAreas.add(textArea);

		JScrollPane scroller = new JScrollPane(textArea);
		scroller.setPreferredSize(new Dimension(300, 400));
		return scroller;
	}

	@SuppressWarnings("serial")
	private static class RunAction extends AbstractAction {
		private code thisObj;

		public RunAction(code obj) {
			super("Run");
			putValue(SHORT_DESCRIPTION, "Send the code out this object's outlet");
			thisObj = obj;
		}

		public void actionPerformed(ActionEvent e) {
			thisObj.bang();
		}
	}

}
