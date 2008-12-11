{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 25.0, 72.0, 736.0, 420.0 ],
		"bglocked" : 0,
		"defrect" : [ 25.0, 72.0, 736.0, 420.0 ],
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
					"maxclass" : "comment",
					"text" : "On my machine, patcherargs sometimes fails to work the first time this patch is loaded. Loadbang seems to fix that.",
					"linecount" : 2,
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"patching_rect" : [ 308.0, 20.0, 348.0, 33.0 ],
					"id" : "obj-25",
					"fontsize" : 11.1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 241.0, 31.0, 61.0, 20.0 ],
					"id" : "obj-21",
					"fontsize" : 11.1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "translate @in notevalues @out ticks",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"patching_rect" : [ 519.0, 238.0, 212.0, 20.0 ],
					"id" : "obj-20",
					"fontsize" : 11.1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend quantize",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"patching_rect" : [ 451.0, 273.0, 108.0, 20.0 ],
					"id" : "obj-19",
					"fontsize" : 11.1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"annotation" : "number of tracks",
					"numoutlets" : 0,
					"patching_rect" : [ 348.0, 351.0, 25.0, 25.0 ],
					"id" : "obj-11",
					"numinlets" : 1,
					"comment" : "number of tracks"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "js ajm.error \"ajm.midi2coll: file not found\"",
					"linecount" : 2,
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"patching_rect" : [ 208.0, 241.0, 168.0, 33.0 ],
					"id" : "obj-18",
					"fontsize" : 11.1,
					"numinlets" : 1,
					"color" : [ 1.0, 0.396078, 0.396078, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"annotation" : "track index",
					"numoutlets" : 0,
					"patching_rect" : [ 186.0, 351.0, 25.0, 25.0 ],
					"id" : "obj-17",
					"numinlets" : 1,
					"comment" : "track index"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route int float",
					"numoutlets" : 3,
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 451.0, 210.0, 87.0, 20.0 ],
					"id" : "obj-12",
					"fontsize" : 11.1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "js ajm.error \"ajm.midi2coll doesn't understand\"",
					"linecount" : 2,
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"patching_rect" : [ 470.0, 150.0, 165.0, 33.0 ],
					"id" : "obj-9",
					"fontsize" : 11.1,
					"numinlets" : 1,
					"color" : [ 1.0, 0.396078, 0.396078, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "deferlow",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"patching_rect" : [ 376.0, 93.0, 58.0, 20.0 ],
					"id" : "obj-26",
					"fontsize" : 11.1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route timesig quantize done",
					"numoutlets" : 4,
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 257.0, 125.0, 232.0, 20.0 ],
					"id" : "obj-16",
					"fontsize" : 11.1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "patcherargs @timesig 4 4",
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 241.0, 69.0, 154.0, 20.0 ],
					"id" : "obj-15",
					"fontsize" : 11.1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sprintf symout timesig(%d\\,%d)",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"patching_rect" : [ 257.0, 160.0, 194.0, 20.0 ],
					"id" : "obj-13",
					"fontsize" : 11.1,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "zl reg",
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 208.0, 215.0, 42.0, 20.0 ],
					"id" : "obj-10",
					"fontsize" : 11.1,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route notfound",
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 136.0, 172.0, 94.0, 20.0 ],
					"id" : "obj-8",
					"fontsize" : 11.1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "opendialog Midi",
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"outlettype" : [ "", "bang" ],
					"patching_rect" : [ 24.0, 141.0, 97.0, 20.0 ],
					"id" : "obj-7",
					"fontsize" : 11.1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route bang timesig quantize",
					"numoutlets" : 4,
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 24.0, 96.0, 167.0, 20.0 ],
					"id" : "obj-6",
					"fontsize" : 11.1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "absolutepath",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"patching_rect" : [ 136.0, 143.0, 83.0, 20.0 ],
					"id" : "obj-5",
					"fontsize" : 11.1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "conformpath native boot",
					"numoutlets" : 2,
					"fontname" : "Verdana",
					"outlettype" : [ "", "int" ],
					"patching_rect" : [ 24.0, 245.0, 148.0, 20.0 ],
					"id" : "obj-14",
					"fontsize" : 11.1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"annotation" : "note data (to coll)",
					"numoutlets" : 0,
					"patching_rect" : [ 24.0, 351.0, 25.0, 25.0 ],
					"id" : "obj-3",
					"numinlets" : 1,
					"comment" : "note data (to coll)"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"annotation" : "bang / timesig / quantize / filepath",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 24.0, 65.0, 25.0, 25.0 ],
					"id" : "obj-2",
					"numinlets" : 0,
					"comment" : "bang / timesig / quantize / filepath"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sprintf read '%s'",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"patching_rect" : [ 24.0, 281.0, 103.0, 20.0 ],
					"id" : "obj-1",
					"fontsize" : 11.1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "mxj ajm.ruby 3 @scriptfile ajm_midi2coll.rb @evaloutlet -1",
					"numoutlets" : 3,
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 24.0, 321.0, 343.0, 20.0 ],
					"id" : "obj-4",
					"fontsize" : 11.1,
					"numinlets" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [ 460.5, 310.0, 33.5, 310.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [ 528.5, 264.0, 460.5, 264.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 1 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [ 494.5, 236.0, 460.5, 236.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 2 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 1 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [ 337.5, 152.0, 460.5, 152.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 2 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"color" : [ 0.239216, 0.643137, 0.709804, 1.0 ],
					"midpoints" : [ 132.166672, 121.0, 210.0, 121.0, 210.0, 61.0, 650.0, 61.0, 650.0, 202.0, 460.5, 202.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 1 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 1 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [ 385.5, 118.0, 266.5, 118.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 3 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 1 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.164706, 1.0, 1.0 ],
					"midpoints" : [ 82.833336, 127.0, 251.0, 127.0, 251.0, 152.0, 266.5, 152.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 3 ],
					"destination" : [ "obj-10", 1 ],
					"hidden" : 0,
					"midpoints" : [ 181.5, 135.0, 240.5, 135.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 3 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [ 181.5, 135.0, 145.5, 135.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 1 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [ 266.5, 195.0, 437.0, 195.0, 437.0, 310.0, 33.5, 310.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 2 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
