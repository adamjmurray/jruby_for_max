{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 114.0, 90.0, 748.0, 504.0 ],
		"bglocked" : 0,
		"defrect" : [ 114.0, 90.0, 748.0, 504.0 ],
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
					"maxclass" : "outlet",
					"annotation" : "everything other than pitch and velocity",
					"patching_rect" : [ 155.0, 168.0, 25.0, 25.0 ],
					"numinlets" : 1,
					"presentation_rect" : [ 151.0, 165.0, 0.0, 0.0 ],
					"numoutlets" : 0,
					"id" : "obj-26",
					"comment" : "everything else"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route list",
					"fontname" : "Verdana",
					"patching_rect" : [ 36.0, 133.0, 60.0, 20.0 ],
					"fontsize" : 11.1,
					"numinlets" : 1,
					"numoutlets" : 2,
					"id" : "obj-21",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "fromsymbol",
					"fontname" : "Verdana",
					"patching_rect" : [ 36.0, 104.0, 77.0, 20.0 ],
					"fontsize" : 11.1,
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-22",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route symbol",
					"fontname" : "Verdana",
					"patching_rect" : [ 36.0, 38.0, 84.0, 20.0 ],
					"fontsize" : 11.1,
					"numinlets" : 1,
					"numoutlets" : 2,
					"id" : "obj-23",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "zl iter 1",
					"fontname" : "Verdana",
					"patching_rect" : [ 36.0, 76.0, 53.0, 20.0 ],
					"fontsize" : 11.1,
					"numinlets" : 2,
					"numoutlets" : 2,
					"id" : "obj-25",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "+ 0",
					"fontname" : "Verdana",
					"patching_rect" : [ 36.0, 383.0, 32.5, 20.0 ],
					"fontsize" : 11.1,
					"numinlets" : 2,
					"numoutlets" : 1,
					"id" : "obj-20",
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "* 1.",
					"fontname" : "Verdana",
					"patching_rect" : [ 73.0, 383.0, 33.0, 20.0 ],
					"fontsize" : 11.1,
					"numinlets" : 2,
					"numoutlets" : 1,
					"id" : "obj-18",
					"outlettype" : [ "float" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"annotation" : "transpose | velscale | durscale",
					"patching_rect" : [ 278.0, 165.0, 25.0, 25.0 ],
					"numinlets" : 0,
					"numoutlets" : 1,
					"id" : "obj-19",
					"outlettype" : [ "" ],
					"comment" : "transpose | velscale | durscale"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "* 1.",
					"fontname" : "Verdana",
					"patching_rect" : [ 110.0, 391.0, 33.0, 20.0 ],
					"fontsize" : 11.1,
					"numinlets" : 2,
					"numoutlets" : 1,
					"id" : "obj-16",
					"outlettype" : [ "float" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "zl slice 2",
					"fontname" : "Verdana",
					"patching_rect" : [ 36.0, 251.0, 59.0, 20.0 ],
					"fontsize" : 11.1,
					"numinlets" : 2,
					"numoutlets" : 2,
					"id" : "obj-11",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "translate notevalues ms",
					"fontname" : "Verdana",
					"patching_rect" : [ 248.0, 354.0, 145.0, 20.0 ],
					"fontsize" : 11.1,
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-8",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route float int",
					"fontname" : "Verdana",
					"patching_rect" : [ 76.0, 276.0, 87.0, 20.0 ],
					"fontsize" : 11.1,
					"numinlets" : 1,
					"numoutlets" : 3,
					"id" : "obj-7",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Split chords into separate \n\"pitch velocity duration\" lists",
					"linecount" : 2,
					"fontname" : "Verdana",
					"patching_rect" : [ 44.0, 208.0, 173.0, 33.0 ],
					"fontsize" : 11.1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-17"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend transport",
					"fontname" : "Verdana",
					"patching_rect" : [ 248.0, 253.0, 111.0, 20.0 ],
					"fontsize" : 11.1,
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-15",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sprintf symout @%s",
					"fontname" : "Verdana",
					"patching_rect" : [ 423.0, 247.0, 124.0, 20.0 ],
					"fontsize" : 11.1,
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-12",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route transport transpose velscale durscale done",
					"fontname" : "Verdana",
					"patching_rect" : [ 248.0, 197.0, 283.0, 20.0 ],
					"fontsize" : 11.1,
					"numinlets" : 1,
					"numoutlets" : 6,
					"id" : "obj-24",
					"outlettype" : [ "", "", "", "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "patcherargs",
					"fontname" : "Verdana",
					"patching_rect" : [ 190.0, 170.0, 77.0, 20.0 ],
					"fontsize" : 11.1,
					"numinlets" : 1,
					"numoutlets" : 2,
					"id" : "obj-14",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"annotation" : "velocity",
					"patching_rect" : [ 110.0, 445.0, 25.0, 25.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-6",
					"comment" : "velocity"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"annotation" : "pitch",
					"patching_rect" : [ 36.0, 445.0, 25.0, 25.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-5",
					"comment" : "pitch"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"annotation" : "Make notes for the input list in the format: \"pitch1 velocity1 duration1\" ... \"pitchN velocityN durationN\" where duration is specified in transport beats. Each set of 3 note parameters is a single symbol. Other parameters may be sent to this object and will be passed out the right outlet.",
					"patching_rect" : [ 36.0, 6.0, 25.0, 25.0 ],
					"numinlets" : 0,
					"numoutlets" : 1,
					"id" : "obj-1",
					"outlettype" : [ "" ],
					"comment" : "\"pitch velocity duration\" or anything (symbol)"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "zl iter 3",
					"fontname" : "Verdana",
					"patching_rect" : [ 36.0, 191.0, 53.0, 20.0 ],
					"fontsize" : 11.1,
					"numinlets" : 2,
					"numoutlets" : 2,
					"id" : "obj-3",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "makenote",
					"fontname" : "Verdana",
					"patching_rect" : [ 36.0, 413.0, 93.0, 20.0 ],
					"fontsize" : 11.1,
					"numinlets" : 3,
					"numoutlets" : 2,
					"id" : "obj-2",
					"outlettype" : [ "int", "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "beats to ticks",
					"fontname" : "Verdana",
					"patching_rect" : [ 120.0, 323.0, 90.0, 20.0 ],
					"fontsize" : 11.1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-34"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "* 480.",
					"fontname" : "Verdana",
					"patching_rect" : [ 110.0, 305.0, 47.0, 20.0 ],
					"fontsize" : 11.1,
					"numinlets" : 2,
					"numoutlets" : 1,
					"id" : "obj-10",
					"outlettype" : [ "float" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "unpack 0 0",
					"fontname" : "Verdana",
					"patching_rect" : [ 36.0, 331.0, 72.0, 20.0 ],
					"fontsize" : 11.1,
					"numinlets" : 1,
					"numoutlets" : 2,
					"id" : "obj-4",
					"outlettype" : [ "int", "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "translate ticks ms",
					"fontname" : "Verdana",
					"patching_rect" : [ 110.0, 353.0, 110.0, 20.0 ],
					"fontsize" : 11.1,
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-9",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "js ajm.error \"ajm.makenote: doesn't understand\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"patching_rect" : [ 423.0, 278.0, 174.0, 33.0 ],
					"fontsize" : 11.1,
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-13",
					"background" : 1,
					"color" : [ 1.0, 0.52549, 0.52549, 1.0 ],
					"outlettype" : [ "" ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-23", 1 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [ 110.5, 65.0, 45.5, 65.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 1 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [ 86.5, 158.0, 164.5, 158.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-2", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 1 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [ 98.5, 359.0, 82.5, 359.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [ 257.5, 379.0, 119.5, 379.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-2", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [ 257.5, 345.0, 119.5, 345.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 1 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 1 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 1 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [ 85.5, 299.0, 119.5, 299.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 2 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 1 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 5 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [ 521.5, 234.0, 432.5, 234.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 1 ],
					"destination" : [ "obj-20", 1 ],
					"hidden" : 0,
					"color" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 2 ],
					"destination" : [ "obj-18", 1 ],
					"hidden" : 0,
					"color" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 3 ],
					"destination" : [ "obj-16", 1 ],
					"hidden" : 0,
					"color" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
					"midpoints" : [  ]
				}

			}
 ]
	}

}
