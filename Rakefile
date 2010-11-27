require 'rake/clean'
include FileUtils

VERSION = '0.9.2'

SRC   = 'src'
LIB   = 'lib'
BUILD = 'build'
DIST  = 'dist'

SOURCES   = FileList.new( "#{SRC}/**/*.java" ) {|fl| fl.exclude /Test\.java$/ }
CLASSPATH = FileList.new( "#{LIB}/**/*.jar" )  {|fl| fl.exclude /^ajm.jar$/ }
MANIFEST  = "MANIFEST.MF"
JAR       = "#{LIB}/ajm.jar"


CLEAN.include BUILD, JAR
CLOBBER.include DIST


desc 'compile the java source files'
task :compile do
  makedirs BUILD if not File.exist? BUILD
  puts "Compiling classes to #{BUILD}"  
  `javac -classpath #{CLASSPATH.join ':'} -d #{BUILD} -g -source 1.5 -target 1.5 #{SOURCES}`
end


MANIFEST_DATA = 
"Library: ajm objects (MXJ) for MaxMSP
Version: #{VERSION}
Author: Adam Murray
URL: http://compusition.com
"
desc 'create the jar archive'
task :jar => [:compile] do
  begin
    File.open(MANIFEST, 'w') {|f| f.puts MANIFEST_DATA }
    puts "Packaging classes into #{JAR}"
    `jar cvfm #{JAR} #{MANIFEST} -C #{BUILD} .`
  ensure
    File.delete MANIFEST if File.exist? MANIFEST
  end
end
