package jruby4max.util;

/*
Copyright (c) 2008-2009, Adam Murray (adam@compusition.com). All rights reserved.

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
import java.awt.Toolkit;

import javax.swing.JFrame;
import javax.swing.JScrollPane;
import javax.swing.JTextArea;
import javax.swing.SwingUtilities;

/**
 * A Swing-based popup window for viewing text.
 * 
 * @author Adam Murray (adam@compusition.com)
 */
public class TextViewer {

	private JFrame frame;
	private JTextArea textArea;
	private boolean packed = false;
	private int width;
	private int height;
	Dimension dim;
	
	public TextViewer(String name) {
		frame = new JFrame(name);
		frame.setDefaultCloseOperation(JFrame.HIDE_ON_CLOSE);
		width = 600;
		height = 450;
		
		textArea = new JTextArea();
		textArea.setEditable(false);
		textArea.setFont(new Font("Monospaced", Font.PLAIN, 11));
		
		JScrollPane scroller = new JScrollPane(textArea);
		scroller.setPreferredSize(new Dimension(width, height));
		
		frame.add(scroller, BorderLayout.CENTER);
	}

	public void show() {
		SwingUtilities.invokeLater(new Runnable() {
			public void run() {
				if(!packed) {
					frame.pack();
					packed = true;
				}
				frame.setVisible(true);
			}
		});
	}
	
	public void hide() {
		frame.setVisible(false);
	}

	public void setText(String text) {
		textArea.setText(text);
	}
	
	private int WINDOW_PADDING = 10;
	public void setCenter(int x, int y) {
		x -= width/2;
		y -= height/2;

		if(x < WINDOW_PADDING) x = WINDOW_PADDING;
		if(y < WINDOW_PADDING) y = WINDOW_PADDING;

		Toolkit toolkit = Toolkit.getDefaultToolkit();
		Dimension resolution = toolkit.getScreenSize();
		int maxX = resolution.width - width - WINDOW_PADDING;
		int maxY = resolution.height - height - WINDOW_PADDING;
		if(x > maxX) x = maxX;
		if(y > maxY) y = maxY;
	
		frame.setLocation(x,y);	
	}
}
