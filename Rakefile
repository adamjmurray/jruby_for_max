require 'rake/clean'
include FileUtils

VERSION = '0.9.2'
BUILD_DATE = Time.now.utc.strftime '%B %d, %Y (%H:%M GMT)'
MANIFEST_DATA = 
"Library: ajm objects (MXJ) for MaxMSP
Version: #{VERSION}
Author: Adam Murray
URL: http://compusition.com
"

SRC     = 'src'
LIB     = 'lib'
PATCHES = 'ajm'
LICENSE = 'license'
BUILD   = 'build'
PACKAGE = "ajm-objects-#{VERSION}"
DIST    = 'dist'

SOURCES   = FileList["#{SRC}/**/*.java"].exclude(/Test\.java$/)
CLASSPATH = FileList["#{LIB}/**/*.jar"].exclude(/^ajm.jar$/)
MANIFEST  = "MANIFEST.MF"
JAR       = "#{LIB}/ajm.jar"


##############################################################################
# TASK DEFINITIONS

CLEAN.include BUILD, JAR, PACKAGE
CLOBBER.include DIST


desc 'compile the java source files'
task :compile do
  mkdir BUILD
  puts "Compiling java sources to #{BUILD}/"  
  `javac -classpath #{CLASSPATH.join ':'} -d #{BUILD} -g -source 1.5 -target 1.5 #{SOURCES}`
end


desc 'construct the jar archive of the compiled java sources'
task :jar => [:clean, :compile] do
  begin
    File.open(MANIFEST, 'w') {|io| io.write MANIFEST_DATA }
    puts "Constructing #{JAR}"
    `jar cvfm #{JAR} #{MANIFEST} -C #{BUILD} .`
  ensure
    File.delete MANIFEST if File.exist? MANIFEST
  end
end


desc 'prepare the files for distribution'
task :package => [:clean, :jar] do
  puts "Preparing distribution package"
  package_lib = "#{PACKAGE}/#{LIB}"  
  mkdir PACKAGE
  mkdir package_lib
  
  # Collect the files
  FileList['*.txt', '*.example'].each do |filename|
    cp filename, PACKAGE
  end
  FileList["#{LIB}/*.jar"].exclude('max.jar', /^.*junit.*jar$/, 'bsf.jar').each do |filename|
    cp filename, package_lib
  end  
  cp_r PATCHES, PACKAGE
  cp_r LICENSE, PACKAGE

  puts "Performing search and replace for the VERSION and BUILD_DATE variables"
  plaintext_filetypes = ['txt', 'maxpat', 'maxhelp']
  files = FileList[ plaintext_filetypes.map{|type| "#{PACKAGE}/**/*.#{type}" } ]
  files.replace_all '@@VERSION', VERSION
  files.replace_all '@@BUILD_DATE', BUILD_DATE
end


desc 'construct the distribution archive'
task :dist => [:clean, :package] do
  mkdir DIST
  archive = "#{DIST}/#{PACKAGE}.zip"
  puts "Constructing distribution archive #{archive}"
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
