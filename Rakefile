require 'rake/clean'
require 'tempfile'
include FileUtils

PROJECT_VERSION = '1.0_alpha1'
BUILD_DATE = Time.now.utc.strftime '%B %d, %Y (%H:%M GMT)'
MANIFEST = 
"Library: JRuby for Max
Version: #{PROJECT_VERSION}
Built-Date: #{BUILD_DATE}
Author: Adam Murray
URL: http://compusition.com
"

SRC     = 'src'
LIB     = 'lib'
PATCHES = 'jruby_for_max'
LICENSE = 'license'
BUILD   = 'build'
DIST    = 'dist'
PACKAGE = "#{DIST}/jruby_for_max-#{PROJECT_VERSION}"

SOURCES   = FileList["#{SRC}/**/*.java"].exclude(/Test\.java$/)
CLASSPATH = FileList["#{LIB}/**/*.jar"].exclude(/^jruby_for_max.jar$/)
JAR       = "#{LIB}/jruby_for_max.jar"


##############################################################################
# TASK DEFINITIONS

CLEAN.include BUILD, JAR, DIST


desc 'compile the java source files'
task :compile do
  mkdir BUILD
  puts "Building java classes"  
  `javac -classpath #{CLASSPATH.join ':'} -d #{BUILD} -g -source 1.5 -target 1.5 #{SOURCES}`
end


desc 'construct the jar archive of the compiled java sources'
task :jar => [:clean, :compile] do
  manifest = Tempfile.new('manifest')
  File.open(manifest.path, 'w') {|io| io.write MANIFEST }
  puts "Archiving build: #{JAR}"
  `jar cvfm #{JAR} #{manifest.path} -C #{BUILD} .`  
end


desc 'prepare the files for distribution'
task :package => [:jar] do
  puts "Preparing distribution"
  package_lib = "#{PACKAGE}/#{LIB}"  
  mkdir DIST
  mkdir PACKAGE
  mkdir package_lib
  
  # Collect the files
  FileList['*.txt', '*.example'].each do |filename|
    cp filename, PACKAGE
  end
  FileList["#{LIB}/jruby.jar", JAR].each do |filename|
    cp filename, package_lib
  end  
  cp_r PATCHES, PACKAGE
  cp_r LICENSE, PACKAGE
end


desc 'search and replace variable values in text files'
task :replace_vars => [:package] do
  puts "Performing search and replace for the VERSION and BUILD_DATE variables"
  plaintext_filetypes = ['txt', 'maxpat', 'maxhelp']
  files = FileList[ plaintext_filetypes.map{|type| "#{PACKAGE}/**/*.#{type}" } ]
  files.replace_all '@@VERSION', PROJECT_VERSION
  files.replace_all '@@BUILD_DATE', BUILD_DATE
end


desc 'construct the distribution archive'
task :dist => [:replace_vars] do
  mkdir DIST
  archive = "#{PACKAGE}.zip"
  puts "Archiving distribution: #{archive}"
  `zip -l -r #{archive} #{PACKAGE}`
  # The -l option converts newlines to crlf, which should display correctly on both OS X and Windows.
  # Otherwise, since I write these txt files on OS X, newlines would disappear when viewed in Notepad on Windows.
end 


##############################################################################
# SUPPORT CODE:

# I find it annoying that I always have to check if a directory exists
# before creating it, so I monkey patch mkdir() to handle it automatically:
alias original_mkdir mkdir 
def mkdir(dir)
  original_mkdir dir if not File.exist? dir
end


class FileList
  # Replaces all occurrences of token with value
  def replace_all(token, value)
    self.each do |filename|
      next if File.directory? filename
      contents = IO.read filename
      if contents.include? token
        contents.gsub! token, value
        File.open(filename, 'w') do |io|
          io.write contents
        end
      end    
    end
  end
end
