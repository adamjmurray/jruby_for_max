$LOAD_PATH.unshift File.dirname($0) # put this folder on the LOAD_PATH
require 'ajm_webserver'
require 'ajm_servlets'
require 'pathname'

###########################################################
# set root to the folder containing this script file
this_file = Pathname.new($0)
WEB_ROOT = this_file.parent
# You might normally want to use a subdirectory:
# WEB_ROOT = this_file.parent + Pathname.new('webroot')
# or set absolute path:
# WEB_ROOT = '/Users/user/some/path'

PORT = if ARGV[0] then ARGV[0] else 9000 end

###########################################################
# All you need to set is a port and directory.
# See WEBrick documentation for more config options.
server = AjmWebServer.new({
  :Port => PORT,
  :DocumentRoot => WEB_ROOT,
  :Logger => WEBrick::Log.new($stdout, WEBrick::Log::INFO),
  :AccessLog => []
})


###########################################################
# Some example servlets showing custom request handling
server.servlet '/to_max', OutputToMax,  WEB_ROOT
server.servlet '/source', SourceViewer, WEB_ROOT

###########################################################
# The most important part! 
# Needs to happen after the servlets are registered
server.start


###########################################################
# Expose methods to Max to set attributes that can be used 
# in .rhtml files:

$ATTR = {}
def setattr(name,val=nil)
  if(val)
    $ATTR[name] = val
  else
    $ATTR.delete(name)
  end
end

def getattr(name)
  $ATTR[name]
end

# convenience method to set attrs with minimal syntax:
def list(args)
  if args.length > 2
    $ATTR[args[0]] = args[1..-1]   
  elsif args.length == 2
    $ATTR[args[0]] = args[1]   
  elsif args.length == 1
    $ATTR.delete(args[0])
  end
end
