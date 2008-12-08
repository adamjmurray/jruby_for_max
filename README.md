For more info on this project, see:

<http://compusition.com/web/software/maxmsp/ajm-objects>


# Status #

I've added some new objects, done a lot of testing, 
and more or less finished updating everything for Max 5. 
There's some good new stuff related to sequencing MIDI with Max 5's transport system.

I'm gearing up for the next release pretty soon, version 0.8.5. 
It should be out by the end of the year.

I've been meaning to do Cosy support for Max, but there's just too much still to
do in terms of feature work, debugging, and documentation. Although I already have an
ajm.cosy object here, it's not fully functional and I'm not going to try to finish it
for the 0.8.5 release. I will probably release an update to that separately later.

Still to do:

* More testing, especially on Windows
* Automate the distribution process:
	
	* Not all files in this repository should be included in the release bundle:
	
		* max.jar
		* ant-junit.jar
		* junit-4.5.jar
	
	* JRuby's lib/ruby folder needs to be included 
		(I'm not going to check that into my repository here, but maybe downloading and unpacking
		it can be automated via build.xml)
