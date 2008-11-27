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

// based on mymatrix.js from the tutorials

//autowatch = 1
//post("reloaded " + jsarguments[0] + " at " + new Date())

inlets = 0
outlets = 4
setoutletassist(0, "recall number")
setoutletassist(1, "store number")
setoutletassist(2, "the queue")
setoutletassist(3, "queue on/off")

var MAX_ROW_COL = 32;

var cols=4; // default columns
var rows=4; // default rows
var bgcolor = [0,0,0,1];
var offcolor = [.4,.4,.4,1];
var oncolor = [1,1,1,1];
var textcolor = [0,0,0,1];
var storecolor = [1,.2,.2,1];
var queuecolor = [1,1,0,1];
var activeIdx = 0;
var storingIdx = null;
var storing = false;

var redraw = new Task(function(){storingIdx = null;draw();}, this);
var idxQueue = new Array();
var enqueue = false;

declareattribute("cols","getcols","setcols");
declareattribute("rows","getrows","setrows");
if(jsarguments.length > 1) {
	setcols(jsarguments[1]);
}
if(jsarguments.length > 2) {
	setrows(jsarguments[2]);
}			
sketch.default2d();
draw();

function getrows() {
	return rows;
}
function setrows(val) {
	if(arguments.length)  {
		var n = arguments[0];
		if(n < 1 || n > MAX_ROW_COL) {
			post("rows must be between 1 and " + MAX_ROW_COL + " (inclusive)\n");
		} else {
			rows=arguments[0];
			draw();
		}
	}
}

function getcols() {
	return cols;
}
function setcols(val) {
	if(arguments.length)  {
		var n = arguments[0];
		if(n < 1 || n > MAX_ROW_COL) {
			post("cols must be between 1 and " + MAX_ROW_COL + " (inclusive)\n");
		} else {
			cols=arguments[0];
			draw();
		}
	}
}

function brgb(r,g,b) {
	setcolor(bgcolor, r, g, b);
}
function offrgb(r,g,b) {
	setcolor(offcolor, r, g, b);
}
function onrgb(r,g,b) {
	setcolor(oncolor, r, g, b);
}
function textrgb(r,g,b) {
	setcolor(textcolor, r, g, b);
}
function storergb(r,g,b) {
	setcolor(storecolor, r, g, b);
}
function queuergb(r,g,b) {
	setcolor(queuecolor, r, g, b);
}
function setcolor(colorArray, r, g, b) {
	colorArray[0] = r/255.;
	colorArray[1] = g/255.;
	colorArray[2] = b/255.;
	draw(); 
}
setcolor.local = 1;

function draw() {
	with (sketch) {
		glclearcolor(bgcolor);
		glclear(); 
		textalign("center","center");
		font("Arial Black");
		fontsize(10);
		colstep = 2./cols; 
		rowstep = 2./rows; 		
		for(i=0;i<cols;i++) {
			for(j=0;j<rows;j++) {
				idx = i + cols*j + 1;
				moveto((i*colstep + colstep/2)-1.0, 1.0 - (j*rowstep + rowstep/2), 0.); 
				
				if(idx == activeIdx) {
					glcolor(oncolor);				
				} 
				else {
					glcolor(offcolor);				
					for(q=0; q<idxQueue.length; q++) {
						if(idx == idxQueue[q]) {
							var oWeight = q/idxQueue.length;
							var qWeight = 1 - oWeight;
							glcolor(queuecolor[0]*qWeight + offcolor[0]*oWeight,
							        queuecolor[1]*qWeight + offcolor[1]*oWeight,
							        queuecolor[2]*qWeight + offcolor[2]*oWeight, 1);
							break;
						}
					}
				}
				if(idx == storingIdx) {
					glcolor(storecolor)
				}
				
				circle(0.7/Math.max(rows,cols)); 
				glcolor(textcolor);				
				text(idx+"");
			}
		}
	}	
	refresh();
	if(storingIdx) {
		redraw.schedule(500)
	}
}
draw.local = 1

function onresize(w,h) {
	draw(); 
}
onresize.local = 1;

function onclick(x,y, button, mod1, shift) {
	worldx = sketch.screentoworld(x,y)[0];
	worldy = sketch.screentoworld(x,y)[1];
	colwidth = 2./cols; 
	rowheight = 2./rows; 
	x_click = Math.floor((worldx+1.)/colwidth); // which column we clicked
	y_click = Math.floor((1.-worldy)/rowheight); // which row we clicked
	var idx = x_click + cols*y_click + 1;

	if(shift) {
		store(idx);
	} 
	else { // recalling
		recall(idx);
	}
}
onclick.local = 1; 

function bang() {
	if(idxQueue.length > 0) {
		activeIdx = idxQueue.shift()
		outputQueue()
		outlet(0, activeIdx)
		draw()
	} else {
		outputQueue()
	}
}

function queue(isEnabled) { 
	enqueue = isEnabled
	if(!isEnabled) {
		// clear the queue when queuing is disabled
		idxQueue.splice(0)
		outputQueue()
		draw()
	}
}

function msg_int(idx) {
	recall(idx)
}

function set(idx) {
	activeIdx = idx
	draw()
}

function setq(args) {
	idxQueue = arrayfromargs(arguments)
	if(!enqueue & idxQueue.length > 0) {
		enqueue = true
	}
	//outputQueue()
	draw()
}

function store(idx) {
	activeIdx = idx
	storingIdx = idx
	outlet(1, activeIdx)
	draw()
}

function recall(idx) {
	if(enqueue) {
		idxQueue.push(idx)
		outputQueue()
	} else {
		activeIdx = idx;
		outlet(0, activeIdx);
	}
	draw(); 
}

function outputQueue() {
	if(idxQueue.length > 0) {
		outlet(2, idxQueue)
	} else {
		outlet(2, " ")
	}
}
outputQueue.local = 1

function ondblclick(x,y,button,mod1,shift) {
	onclick(x,y,button,mod1,shift)
}
ondblclick.local = 1 