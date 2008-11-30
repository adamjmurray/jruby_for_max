// I'm using this simple object as a workaround for the lack of a feature in Max:
// There is currently no way to print an arbitrary error message to the Max window
// using something like [print] for error messages.

var prefix = null
if(jsarguments.length > 1) prefix = jsarguments[1] + ": "

function anything() {
	var msg = ""
	if(prefix) msg = prefix
	
	// anything receives a messagename (first atom) and arguments array (remaining atoms):
	msg += messagename + " "
	for(var i=0; i<arguments.length; i++) msg += arguments[i]  + " "
	
	error(msg + "\n")
}