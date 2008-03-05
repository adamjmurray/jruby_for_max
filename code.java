package ajm;

import java.awt.BorderLayout;
import java.awt.Dimension;
import java.awt.Font;
import java.awt.event.ActionEvent;

import javax.swing.AbstractAction;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JTextArea;
import javax.swing.SwingUtilities;

import com.cycling74.max.Atom;

public class code extends AbstractMaxObject {

	public void dblclick() {
		open();
	}

	public void open() {
		if (frame != null) {
			frame.setVisible(true);
		}
		else SwingUtilities.invokeLater(new Runnable() {
			public void run() {
				frame = new JFrame("Editor");
				frame.setDefaultCloseOperation(JFrame.HIDE_ON_CLOSE);
				populateFrame(frame);
				frame.pack();
				frame.setVisible(true);
			}
		});
	}

	public void set(Atom[] args) {
		String text = toString(args);
		if (textArea != null) {
			textArea.setText(text);
		}
		else {
			initText = text;
		}
	}

	private String getText() {
		if (textArea != null) {
			return textArea.getText();
		}
		else {
			return initText;
		}
	}

	public void bang() {
		outlet(0, getText());
	}

	public void save() {
		embedMessage("set", new Atom[] { Atom.newAtom(getText()) });
	}

	private JFrame frame;
	private JTextArea textArea;
	private String initText = "";

	private void populateFrame(JFrame frame) {

		textArea = new JTextArea();
		textArea.setTabSize(2); // this probably isn't appropriate for other languages
		textArea.setFont(new Font("Monospaced", Font.PLAIN, 11));
		textArea.setText(initText);

		JScrollPane scroller = new JScrollPane(textArea);
		scroller.setPreferredSize(new Dimension(300, 400));

		RunAction runAction = new RunAction(this);

		JButton run = new JButton(runAction);
		JPanel buttonPanel = new JPanel();
		buttonPanel.add(run);

		// buttonPanel.add(save);
		// buttonPanel.add(cancel);

		// JPanel framePanel = new JPanel();
		frame.add(scroller, BorderLayout.CENTER);
		frame.add(buttonPanel, BorderLayout.PAGE_END);

	}

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
	};

}
