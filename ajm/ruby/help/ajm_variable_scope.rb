#####################################################################
# ajm.ruby has separate variable scopes for each thread.
# @autowatch reloads script files from the background thread that
# watches the file, so any local variables from the file will not be
# available in Max. To work around this, use constants or globals
# for any top-level variables that need to be accessible in Max.

Var  = 'constants are visible'
$var = 'globals are visible'
var  = 'not visible across threads'

def method
  'methods are visible'
  # x is still invisible here
end
