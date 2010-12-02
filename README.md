# JRuby for Max #

Ruby support for Max 5 (<http://www.cycling74.com/products/max5>) and Max for Live, built on top of JRuby (<http://jruby.org>)

  
## Author ##

Adam Murray (adam@compusition.com)


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

             git clone http://github.com/adamjmurray/jruby_for_max.git

0. Go to the project folder on the command line:

             cd jruby_for_max

0. Run the rake 'dist' task to build the project:

             java -jar lib/jruby.jar -S rake dist
     
0. Take a look in dist/jruby\_for\_max-{version}/INSTALL.txt for installation instructions to start using
   it with Max/MSP or Max for Live.