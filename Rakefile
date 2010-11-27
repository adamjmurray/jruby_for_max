require 'rake/clean'
include FileUtils

VERSION = '0.9.2'

SRC_FILES = FileList.new('src/**/*.java') {|fl| fl.exclude /Test\.java$/ }
CLASSPATH = FileList.new('lib/**/*.jar')
BUILD_DIR = File.expand_path 'build'

CLEAN.include('build', 'dist', 'lib/ajm.jar')

desc 'compile the java source files'
task :compile do
  src = SRC_FILES.join ' '
  cp = CLASSPATH.join ':'
  dst = BUILD_DIR
  makedirs dst if not File.exist? dst
  puts "Compiling classes to #{BUILD_DIR}"  
  `javac -classpath #{cp} -d #{dst} -g -source 1.5 -target 1.5 #{src}`
end
