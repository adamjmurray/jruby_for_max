{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 114.0, 90.0, 601.0, 340.0 ],
		"bglocked" : 0,
		"defrect" : [ 114.0, 90.0, 601.0, 340.0 ],
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
					"text" : "+ 0",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 33.0, 235.0, 32.5, 20.0 ],
					"fontsize" : 11.1,
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
					"numinlets" : 2,
					"patching_rect" : [ 70.0, 235.0, 33.0, 20.0 ],
					"fontsize" : 11.1,
					"numoutlets" : 1,
					"id" : "obj-18",
					"outlettype" : [ "float" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"annotation" : "transpose | velscale | durscale",
					"numinlets" : 0,
					"patching_rect" : [ 275.0, 17.0, 25.0, 25.0 ],
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
					"numinlets" : 2,
					"patching_rect" : [ 107.0, 243.0, 33.0, 20.0 ],
					"fontsize" : 11.1,
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
					"numinlets" : 2,
					"patching_rect" : [ 33.0, 103.0, 59.0, 20.0 ],
					"fontsize" : 11.1,
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
					"numinlets" : 1,
					"patching_rect" : [ 245.0, 206.0, 145.0, 20.0 ],
					"fontsize" : 11.1,
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
					"numinlets" : 1,
					"patching_rect" : [ 73.0, 128.0, 87.0, 20.0 ],
					"fontsize" : 11.1,
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
					"numinlets" : 1,
					"patching_rect" : [ 41.0, 60.0, 173.0, 33.0 ],
					"fontsize" : 11.1,
					"numoutlets" : 0,
					"id" : "obj-17"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend transport",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 245.0, 105.0, 111.0, 20.0 ],
					"fontsize" : 11.1,
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
					"numinlets" : 1,
					"patching_rect" : [ 420.0, 99.0, 124.0, 20.0 ],
					"fontsize" : 11.1,
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
					"numinlets" : 1,
					"patching_rect" : [ 245.0, 49.0, 283.0, 20.0 ],
					"fontsize" : 11.1,
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
					"numinlets" : 1,
					"patching_rect" : [ 187.0, 22.0, 77.0, 20.0 ],
					"fontsize" : 11.1,
					"numoutlets" : 2,
					"id" : "obj-14",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"patching_rect" : [ 107.0, 297.0, 25.0, 25.0 ],
					"numoutlets" : 0,
					"id" : "obj-6",
					"comment" : "velocity"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"patching_rect" : [ 33.0, 297.0, 25.0, 25.0 ],
					"numoutlets" : 0,
					"id" : "obj-5",
					"comment" : "pitch"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"annotation" : "Make notes for the input list in the format: \"pitch1 velocity1 duration1 ... pitchN velocityN durationN\" where duration is specified in transport beats.",
					"numinlets" : 0,
					"patching_rect" : [ 33.0, 15.0, 25.0, 25.0 ],
					"numoutlets" : 1,
					"id" : "obj-1",
					"outlettype" : [ "" ],
					"comment" : "pitch velocity duration (list)"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "zl iter 3",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 33.0, 43.0, 53.0, 20.0 ],
					"fontsize" : 11.1,
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
					"numinlets" : 3,
					"patching_rect" : [ 33.0, 265.0, 93.0, 20.0 ],
					"fontsize" : 11.1,
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
					"numinlets" : 1,
					"patching_rect" : [ 117.0, 175.0, 90.0, 20.0 ],
					"fontsize" : 11.1,
					"numoutlets" : 0,
					"id" : "obj-34"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "* 480.",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 107.0, 157.0, 47.0, 20.0 ],
					"fontsize" : 11.1,
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
					"numinlets" : 1,
					"patching_rect" : [ 33.0, 183.0, 72.0, 20.0 ],
					"fontsize" : 11.1,
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
					"numinlets" : 1,
					"patching_rect" : [ 107.0, 205.0, 110.0, 20.0 ],
					"fontsize" : 11.1,
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
					"numinlets" : 1,
					"patching_rect" : [ 420.0, 130.0, 174.0, 33.0 ],
					"fontsize" : 11.1,
					"numoutlets" : 1,
					"id" : "obj-13",
					"outlettype" : [ "" ],
					"background" : 1,
					"color" : [ 1.0, 0.52549, 0.52549, 1.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-24", 3 ],
					"destination" : [ "obj-16", 1 ],
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
					"source" : [ "obj-24", 1 ],
					"destination" : [ "obj-20", 1 ],
					"hidden" : 0,
					"color" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
					"midpoints" : [  ]
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
					"source" : [ "obj-24", 5 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [ 518.5, 86.0, 429.5, 86.0 ]
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
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-15", 0 ],
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
					"source" : [ "obj-7", 2 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [ 82.5, 151.0, 116.5, 151.0 ]
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
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-11", 0 ],
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
					"source" : [ "obj-11", 1 ],
					"destination" : [ "obj-7", 0 ],
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
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [ 254.5, 197.0, 116.5, 197.0 ]
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
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [ 254.5, 231.0, 116.5, 231.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 1 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [ 95.5, 211.0, 79.5, 211.0 ]
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
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-20", 0 ],
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
 ]
	}

}
