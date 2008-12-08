{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 223.0, 55.0, 445.0, 531.0 ],
		"bglocked" : 0,
		"defrect" : [ 223.0, 55.0, 445.0, 531.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 11.1,
		"default_fontface" : 0,
		"default_fontname" : "Verdana",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "thispatcher",
					"fontname" : "Verdana",
					"hidden" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 40.0, 515.0, 73.0, 20.0 ],
					"fontsize" : 11.1,
					"numoutlets" : 2,
					"id" : "obj-32",
					"outlettype" : [ "", "" ],
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "ajm.bring-to-front-listener ajm.polyroute",
					"fontname" : "Verdana",
					"hidden" : 1,
					"numinlets" : 0,
					"patching_rect" : [ 40.0, 489.0, 241.0, 20.0 ],
					"fontsize" : 11.1,
					"numoutlets" : 1,
					"id" : "obj-33",
					"outlettype" : [ "front" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"lockeddragscroll" : 1,
					"numinlets" : 0,
					"args" : [  ],
					"patching_rect" : [ 293.0, 436.0, 127.0, 49.0 ],
					"numoutlets" : 0,
					"id" : "obj-1",
					"name" : "ajm.helplinks.maxpat"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Abstraction + JavaScript",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 22.0, 37.0, 132.0, 17.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"id" : "obj-2"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "route messages to multiple poly~ targets using OSC's regex-like syntax",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 177.0, 19.0, 181.0, 28.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"id" : "obj-3"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "ajm.polyroute",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 22.0, 13.0, 134.0, 27.0 ],
					"fontsize" : 18.0,
					"numoutlets" : 0,
					"id" : "obj-4"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/1? first of two digits is '1'",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 39.0, 294.0, 138.0, 15.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"id" : "obj-5",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "print polyroute",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 66.0, 422.0, 78.0, 17.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"id" : "obj-6"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "gswitch2",
					"numinlets" : 2,
					"patching_rect" : [ 37.0, 380.0, 39.0, 32.0 ],
					"numoutlets" : 2,
					"id" : "obj-7",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "poly~ ajm.polyprint 20",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 18.0, 451.0, 114.0, 17.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"id" : "obj-8",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "midinote 60 100, midinote 70 100, midinote 70 0, midinote 60 0",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 41.0, 137.0, 165.0, 26.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"id" : "obj-9",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "note 60 100, note 70 100, note 80 100",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 18.0, 116.0, 189.0, 15.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"id" : "obj-10",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"hidden" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 326.0, 277.0, 15.0, 15.0 ],
					"numoutlets" : 1,
					"id" : "obj-11",
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "help OSC-route",
					"fontname" : "Verdana",
					"hidden" : 1,
					"numinlets" : 2,
					"patching_rect" : [ 326.0, 297.0, 78.0, 15.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"id" : "obj-12",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"hidden" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 309.0, 154.0, 15.0, 15.0 ],
					"numoutlets" : 1,
					"id" : "obj-13",
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "Download from CNMAT",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 309.0, 133.0, 113.0, 15.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"id" : "obj-14",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\rmax launchbrowser http://www.cnmat.berkeley.edu/MAX/downloads/",
					"linecount" : 2,
					"fontname" : "Verdana",
					"hidden" : 1,
					"numinlets" : 2,
					"patching_rect" : [ 309.0, 175.0, 341.0, 26.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"id" : "obj-15",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "OSC-route",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 308.0, 117.0, 59.0, 17.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"id" : "obj-16"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"fontname" : "Verdana",
					"hidden" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 326.0, 317.0, 45.0, 17.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"id" : "obj-17",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "OSC-route.help",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 326.0, 258.0, 78.0, 15.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"id" : "obj-18",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/[135] to first\\, third\\, and fifth",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 40.0, 235.0, 164.0, 15.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"id" : "obj-19",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/* to all",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 36.0, 319.0, 49.0, 15.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"id" : "obj-20",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "ajm.polyroute 20",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 18.0, 350.0, 88.0, 17.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"id" : "obj-21",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/[1-5] 1-5",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 38.0, 266.0, 61.0, 15.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"id" : "obj-22",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/1 this message goes to the first voice",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 40.0, 210.0, 186.0, 15.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"id" : "obj-23",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Click the message boxes and watch the max window",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 16.0, 65.0, 334.0, 21.0 ],
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"id" : "obj-24"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Argument is the number of voices in the poly (defaults to 4, coerced to range 1-255)",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 111.0, 347.0, 211.0, 28.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"id" : "obj-25"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Dependencies:",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 290.0, 97.0, 100.0, 19.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"id" : "obj-26"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Click here to see the messages coming out of polyroute",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 82.0, 383.0, 153.0, 28.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"id" : "obj-27"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "All the normal poly messages are supported:",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 18.0, 97.0, 221.0, 17.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"id" : "obj-28"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Or use OSC-route syntax to target specific voices:",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 39.0, 181.0, 133.0, 28.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"id" : "obj-29"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "For syntax details, see:",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 301.0, 245.0, 100.0, 28.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"id" : "obj-30"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"shadow" : 3,
					"numinlets" : 1,
					"patching_rect" : [ 7.0, 8.0, 362.0, 45.0 ],
					"border" : 1,
					"rounded" : 7,
					"numoutlets" : 0,
					"id" : "obj-31",
					"bgcolor" : [ 0.729412, 0.890196, 0.815686, 1.0 ],
					"background" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [ 49.5, 256.0, 27.5, 256.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [ 50.5, 169.0, 27.5, 169.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [ 45.5, 339.0, 27.5, 339.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [ 47.5, 285.0, 27.5, 285.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [ 49.5, 229.0, 27.5, 229.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [ 48.5, 312.0, 27.5, 312.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-7", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 1 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
