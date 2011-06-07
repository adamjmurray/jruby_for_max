require 'rake/clean'
require 'tempfile'
require 'rbconfig'
include FileUtils

PROJECT_VERSION = '1.0_beta2'
BUILD_DATE = Time.now.utc.strftime '%B %d, %Y (%H:%M GMT)'
MANIFEST = 
"Library: JRuby for Max
Version: #{PROJECT_VERSION}
Built-Date: #{BUILD_DATE}
Author: Adam Murray
URL: http://compusition.com
"
LIB     = 'lib'
PATCHES = 'jruby_for_max'
LICENSE = 'license'
BUILD   = 'build'
TESTS_BUILD = 'build_test'
DIST    = 'dist'
PROJ    =  "jruby_for_max-#{PROJECT_VERSION}"
PACKAGE = "#{DIST}/#{PROJ}"

JAR      = "jruby4max.jar"
JAR_FILE = "#{LIB}/#{JAR}"

SOURCES   = FileList['src/**/*.java']
TESTS     = FileList['test/**/*.java']
CLASSPATH = FileList["#{LIB}/**/*.jar"].exclude(/^#{JAR}$/)
TESTS_CLASSPATH = CLASSPATH.clone.add(BUILD)

WINDOWS = Config::CONFIG['host_os'] =~ /mswin/
CLASSPATH_SEPARATOR = if WINDOWS then ';' else ':' end

##############################################################################
# TASK DEFINITIONS

CLEAN.include BUILD, TESTS_BUILD, JAR_FILE, DIST
CLOBBER.include 'out' # default IntelliJ build folder


desc 'Compile java source files'
task :compile do
  puts "Compiling java source files"
  javac CLASSPATH, SOURCES, BUILD
end


task :jar => [:clean, :compile] do
  manifest = Tempfile.new('manifest')
  write_file manifest, MANIFEST
  puts "Archiving build: #{JAR_FILE}"
  jar JAR_FILE, manifest, BUILD
end


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
  FileList["#{LIB}/jruby.jar", JAR_FILE].each do |filename|
    cp filename, package_lib
  end  
  cp_r PATCHES, PACKAGE
  cp_r LICENSE, PACKAGE
end


task :replace_vars => [:package] do
  puts "Performing search and replace for the VERSION and BUILD_DATE variables"
  plaintext_filetypes = ['txt', 'maxpat', 'maxhelp']
  files = FileList[ plaintext_filetypes.map{|type| "#{PACKAGE}/**/*.#{type}" } ]
  files.replace_all '@@VERSION', PROJECT_VERSION
  files.replace_all '@@BUILD_DATE', BUILD_DATE
end


desc 'Build distribution archive'
task :dist => [:replace_vars] do
  mkdir DIST
  archive = "#{PROJ}.zip"
  puts "Archiving distribution: #{DIST}/#{archive}"

  # NOTE: this only works on OS X. It might work with the correct Cygwin setup on Windows but I never tested this.
  `cd #{DIST} && zip -l -m -r #{archive} #{PROJ}`
  # The -l option converts newlines to crlf, which should display correctly on both OS X and Windows.
  # Otherwise, since I write these txt files on OS X, newlines would disappear when viewed in Notepad on Windows.
end


task :compile_tests => [:compile] do
  puts 'Compiling java test files'
  javac TESTS_CLASSPATH, TESTS, TESTS_BUILD
end

desc 'Run unit tests'
task :test => [:compile_tests] do
  puts 'Running tests'
  junit_class_path = TESTS_CLASSPATH.clone.add(TESTS_BUILD)
  test_classes = FileList["#{TESTS_BUILD}/**/*.class"]
  test_classnames = test_classes.map{|path| path.sub("#{TESTS_BUILD}/", '').sub(".class", '').gsub('/', '.') }
  puts java junit_class_path, 'org.junit.runner.JUnitCore', test_classnames
end



##############################################################################
# SUPPORT CODE:

def write_file file, contents
  File.open(file.path, 'w') {|io| io.write contents }
end

def java classpath, main_class, args
  `java -classpath #{classpath.join CLASSPATH_SEPARATOR} #{main_class} #{args}`
end

def javac classpath, src_files, dst_folder
  mkdir dst_folder
  `javac -classpath #{classpath.join CLASSPATH_SEPARATOR} -d #{dst_folder} -g -source 1.5 -target 1.5 #{src_files}`
end

def jar filename, manifest, dst_folder
  `jar cvfm #{filename} #{manifest.path} -C #{dst_folder} .`
end

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

