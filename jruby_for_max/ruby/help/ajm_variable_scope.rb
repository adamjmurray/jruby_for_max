#####################################################################
# ajm.ruby has separate local variable scopes for each evalution
# If you need to remember a value across separate Max messages, you
# need to use constants, globals, or attributes. 
# Note that a constant should only be defined once, and will result 
# in an error if you try to assign a different value later.

Var  = 'constants are remembered'
$var = 'globals are remembered'
@var = 'attributes are remembered'
var  = 'forgotten'

def some_method
  'methods are visible'
end

out0 "local variables are #{var} after a script's evaluation"
