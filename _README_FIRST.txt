
                      ajm objects for Max/MSP

                           Version 0.8.1

-----------------------------------------------------------------------------

FIRST TIME INSTALLATION

 (1) Copy all contents of the lib folder to:
       {Max installation}/Cycling '74/java/lib
    
 (2) Put the ajm folder somewhere on your Max search path
     - See File Preferences under Max's Options menu.
       
 (3) Restart Max/MSP and open ajm/ajm.overview.pat


UPGRADING FROM A PREVIOUS VERSION

 (1) If you have written any Ruby scripts and saved them under 
     {Max installation}/Cycling '74/java/lib/ruby
     move them up to another location. 
     ajm objects 0.8 can find scripts anywhere on the Max search path.
  
 (2) Delete the entire ruby directory structure
     {Max installation}/Cycling '74/java/lib/ruby
     
 (3) Delete the old ajm folder (old patches/help files) 
     
 (4) Proceed with the first time installation instructions. 
     The following jar files will be replaced: ajm.jar, bsf.jar, jruby.jar
 
------------------------------------------------------------------------------

REQUIREMENTS

 * Max/MSP 4.6 or Max 5

 * Java 5 or higher

------------------------------------------------------------------------------

NOTES

Sequencing with good timing
  When using a [metro] to drive the sequencers, you should enable Overdrive
  from Max's Options menu. If Overdrive is not enabled, interacting with your
  Max patch (clicking a GUI object) can cause timing delays and ruin the
  sense of rhythm. This is normal Max scheduler behavior, so this advice
  applies whenever you need good timing from [metro].

Installing Ruby Gems for ajm.ruby 
  (1) Download JRuby 1.1.2 from http://jruby.codehaus.org
  (2) Add jruby/bin to your path. 
       From the OS X terminal or the Cygwin shell on Windows, run:
        $ export PATH=/path/to/jruby-1.1.2/bin:$PATH
        $ which gem
        /path/to/jruby-1.1.2/bin/gem   
  (3) Install gems as usual (see Ruby Gems documentation for details):
        $ gem install drp
  (4) Replace the {Max installation}/Cycling '74/java/lib/ruby folder with
      /path/to/jruby-1.1.2/lib/ruby
  (5) Restart Max/MSP

------------------------------------------------------------------------------

DEPENDENCIES

JRuby (version 1.1.2 included)
  The 100% Java implementation of Ruby. License info can be found under
  the thirdparty folder. Documentation and source code is available at
  http://jruby.codehaus.org/
  
  JRuby in turn depends on other libraries. I included the license info
  for bsf.jar under the thirdparty folder. You can find license info for
  the Ruby language at:
    http://www.ruby-lang.org/en/LICENSE.txt
    http://www.ruby-lang.org/en/COPYING.txt
    
------------------------------------------------------------------------------    

Copyright (c) 2008, Adam Murray (adam@compusition.com). 
 
All rights reserved.

Redistribution and use of ajm objects in source and binary forms, with or
without modification, are permitted provided that the following conditions
are met:

1. Redistributions of source code must retain the above copyright
   notice, this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright
   notice, this list of conditions and the following disclaimer in
   the documentation and/or other materials provided with the
   distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
"AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER
OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
