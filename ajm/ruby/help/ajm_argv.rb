return if ARGV[0] == :mute
puts ' '
puts 'These variables are set:'
puts '$0 = ' + $0.inspect
puts '__FILE__ = ' + __FILE__.inspect
puts '$* = ' + $*.inspect
puts 'ARGV = ' + ARGV.inspect
puts "$LOAD_PATH << #{$LOAD_PATH.last.inspect}   # path to the file"
