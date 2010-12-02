# JRuby for Max #

Ruby support for Max 5 (<http://www.cycling74.com/products/max5>), built on top of JRuby (<http://jruby.org>)

  
## Author ##

Adam Murray (adam@compusition.com)


## Status ##

Pre-release, 1.0 alpha. Not ready for prime time.

I recently split this project off of my larger collection of add-on objects for Max/MSP called "ajm objects" <http://compusition.com/web/software/maxmsp/ajm-objects>, because I want to focus on this one object instead
of the larger collection. I simply copied my ajm objects project and am in the middle of removing the rest of
the objects from this project.

If you want to use Ruby with Max/MSP, please use ajm objects instead for now, or check back in early 2011.


## Building the project

0. Download this project, either:
   * via the download link on [this project's github page](http://github.com/adamjmurray/jruby_for_max)
   * or via git:

             git clone http://github.com/adamjmurray/jruby_for_max.git
             cd jruby_for_max

0. Run the rake 'dist' task to build the project:

             java -jar lib/jruby.jar -S rake dist
     
0. Take a look in dist/jruby\_for\_max-{version}/INSTALL.txt for installation instructions