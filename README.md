# JRuby for Max #

Ruby support for [Max](http://cycling74.com/products/maxmspjitter/) and [Max for Live](http://www.ableton.com/products), built on top of [JRuby](http://jruby.org)


## Author ##

Adam Murray (adam@compusition.com)


## More Info ##

[FAQ](http://github.com/adamjmurray/jruby_for_max/wiki/FAQ)

[Examples](http://github.com/adamjmurray/jruby_for_max-examples)


## Status ##

Pre-release, 1.0 alpha. Not quite ready for prime time.

Most of these features are also in the "ajm.ruby" object from my larger collection
of Max/MSP add-ons called "ajm objects" <http://compusition.com/web/software/maxmsp/ajm-objects>.
The "ajm.ruby" object is being phased out in favor of this project. But if you require a stable way to run Ruby code inside Max, I recommend using "ajm.ruby" at least until an official 1.0
version of this project is released. 

If you don't mind getting your hands dirty and doing some beta testing, you can follow the instructions below...


## Building the project

0. Download this project, either:
   * via the download link on [this project's github page](http://github.com/adamjmurray/jruby_for_max)
   * or via git:
      * If this is your first time getting the project with git, use:

                git clone http://github.com/adamjmurray/jruby_for_max.git

      * If you already cloned the project and want the latest version, from the project directory run:

                git pull

0. Go to the project folder on the command line:

             cd jruby_for_max

0. Run the rake 'dist' task to build the project:

             java -jar lib/jruby.jar -S rake dist
     
0. Take a look in dist/jruby\_for\_max-{version}/INSTALL.txt for installation instructions to start using
   it with Max/MSP or Max for Live.

### Notes for Building on Windows

In order to build this project, you must install a JDK and have the JDK's "bin" folder on your path.
You can check by typing "jar" on the command line. If it says something like "jar is not a recognized command", then you need to follow these steps (after installing a JDK if you haven't already done so).

0. Go to Control Panel -> System -> Advanced System Settings
0. Click "Advanced" tab -> Environment Variables...
0. Find the "Path" variable under System Variables and click Edit...
0. Go to the end of the variable value and add ";C:\Program Files\Java\jdk1.6.0_22\bin" (adjust the path as needed for your computer, and make sure you put a semicolon before this path and the preceding part of the variable value)

Now if you open a command prompt and type "jar" you should see usage
instructions for the jar command. That means your JDK and path are setup correctly, and you should be able to build this project.