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

var patchname = "ajm.polyroute";
var MAX_VOICES = 255; 

// autowatch = 1; 
// post("Loaded " + patchname + ".js on: " + new Date() + "\n");

function msg_int(voices) {
	var zlReg = patcher.getnamed("zl-reg");
	if(!zlReg) {
		post("ERROR in " + patchname + ": required object named 'zl-reg' was not found.\n");
		return;
	}
	var zlSlice = patcher.getnamed("zl-slice");
	if(!zlSlice) {
		post("ERROR in " + patchname + ": required object named 'zl-slice' was not found.\n");
		return;
	}
	var out = patcher.getnamed("outlet");
	if(!out) {
		post("ERROR in " + patchname + ": required object named 'outlet' was not found.\n");
		return;
	}

	if(voices < 1) {
		voices = 1;
	}
	if(voices > MAX_VOICES) {
		voices = MAX_VOICES;	
	}
	
	var args = new Array();
	for(var i=1; i<=voices; i++) {
		args.push("/"+i);
	}
	var voiceRoute = patcher.newobject("newex", 71, 170, 617, 196617, "OSC-route", args);

	patcher.connect(zlReg, 0, voiceRoute, 0);
	for(var i=1; i<=voices; i++) {
		var prepend = patcher.newobject("newex", i*66, 220, 61, 196617, "prepend", i);	
		patcher.connect(voiceRoute, i-1, prepend, 0);
		patcher.connect(prepend, 0, zlSlice, 0);
	}
	// and pass anything that doesn't match to the outlet:
	patcher.connect(voiceRoute, voices, out, 0);
} 
