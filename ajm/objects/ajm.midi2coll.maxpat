{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 25.0, 72.0, 747.0, 346.0 ],
		"bglocked" : 0,
		"defrect" : [ 25.0, 72.0, 747.0, 346.0 ],
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
					"text" : "translate @in notevalues @out ticks",
					"fontname" : "Verdana",
					"presentation_rect" : [ 456.0, 222.0, 0.0, 0.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 521.0, 185.0, 212.0, 20.0 ],
					"fontsize" : 11.1,
					"numoutlets" : 1,
					"id" : "obj-20",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend quantize",
					"fontname" : "Verdana",
					"presentation_rect" : [ 454.0, 244.0, 0.0, 0.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 453.0, 220.0, 108.0, 20.0 ],
					"fontsize" : 11.1,
					"numoutlets" : 1,
					"id" : "obj-19",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"annotation" : "number of tracks",
					"numinlets" : 1,
					"patching_rect" : [ 350.0, 298.0, 25.0, 25.0 ],
					"numoutlets" : 0,
					"id" : "obj-11",
					"comment" : "number of tracks"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "js ajm.error \"ajm.midi2coll: file not found\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 210.0, 188.0, 168.0, 33.0 ],
					"fontsize" : 11.1,
					"numoutlets" : 1,
					"id" : "obj-18",
					"outlettype" : [ "" ],
					"color" : [ 1.0, 0.396078, 0.396078, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"annotation" : "track index",
					"numinlets" : 1,
					"patching_rect" : [ 188.0, 298.0, 25.0, 25.0 ],
					"numoutlets" : 0,
					"id" : "obj-17",
					"comment" : "track index"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route int float",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 453.0, 157.0, 87.0, 20.0 ],
					"fontsize" : 11.1,
					"numoutlets" : 3,
					"id" : "obj-12",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "js ajm.error \"ajm.midi2coll doesn't understand\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 472.0, 97.0, 165.0, 33.0 ],
					"fontsize" : 11.1,
					"numoutlets" : 1,
					"id" : "obj-9",
					"outlettype" : [ "" ],
					"color" : [ 1.0, 0.396078, 0.396078, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "deferlow",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 378.0, 40.0, 58.0, 20.0 ],
					"fontsize" : 11.1,
					"numoutlets" : 1,
					"id" : "obj-26",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route timesig quantize done",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 259.0, 72.0, 232.0, 20.0 ],
					"fontsize" : 11.1,
					"numoutlets" : 4,
					"id" : "obj-16",
					"outlettype" : [ "", "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "patcherargs @timesig 4 4",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 243.0, 16.0, 154.0, 20.0 ],
					"fontsize" : 11.1,
					"numoutlets" : 2,
					"id" : "obj-15",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sprintf symout timesig(%d\\,%d)",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 259.0, 107.0, 194.0, 20.0 ],
					"fontsize" : 11.1,
					"numoutlets" : 1,
					"id" : "obj-13",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "zl reg",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 210.0, 162.0, 42.0, 20.0 ],
					"fontsize" : 11.1,
					"numoutlets" : 2,
					"id" : "obj-10",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route notfound",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 138.0, 119.0, 94.0, 20.0 ],
					"fontsize" : 11.1,
					"numoutlets" : 2,
					"id" : "obj-8",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "opendialog Midi",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 26.0, 88.0, 97.0, 20.0 ],
					"fontsize" : 11.1,
					"numoutlets" : 2,
					"id" : "obj-7",
					"outlettype" : [ "", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route bang timesig quantize",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 26.0, 43.0, 167.0, 20.0 ],
					"fontsize" : 11.1,
					"numoutlets" : 4,
					"id" : "obj-6",
					"outlettype" : [ "", "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "absolutepath",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 138.0, 90.0, 83.0, 20.0 ],
					"fontsize" : 11.1,
					"numoutlets" : 1,
					"id" : "obj-5",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "conformpath native boot",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 26.0, 192.0, 148.0, 20.0 ],
					"fontsize" : 11.1,
					"numoutlets" : 2,
					"id" : "obj-14",
					"outlettype" : [ "", "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"annotation" : "note data (to coll)",
					"numinlets" : 1,
					"patching_rect" : [ 26.0, 298.0, 25.0, 25.0 ],
					"numoutlets" : 0,
					"id" : "obj-3",
					"comment" : "note data (to coll)"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"annotation" : "bang / timesig / quantize / filepath",
					"numinlets" : 0,
					"patching_rect" : [ 26.0, 12.0, 25.0, 25.0 ],
					"numoutlets" : 1,
					"id" : "obj-2",
					"outlettype" : [ "" ],
					"comment" : "bang / timesig / quantize / filepath"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sprintf read '%s'",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 26.0, 228.0, 103.0, 20.0 ],
					"fontsize" : 11.1,
					"numoutlets" : 1,
					"id" : "obj-1",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "mxj ajm.ruby 3 @scriptfile ajm_midi2coll.rb @evaloutlet -1",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 26.0, 268.0, 343.0, 20.0 ],
					"fontsize" : 11.1,
					"numoutlets" : 3,
					"id" : "obj-4",
					"outlettype" : [ "", "", "" ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [ 462.5, 257.0, 35.5, 257.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [ 530.5, 211.0, 462.5, 211.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 1 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [ 496.5, 183.0, 462.5, 183.0 ]
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
					"midpoints" : [ 339.5, 99.0, 462.5, 99.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 2 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"color" : [ 0.239216, 0.643137, 0.709804, 1.0 ],
					"midpoints" : [ 134.166672, 68.0, 212.0, 68.0, 212.0, 8.0, 652.0, 8.0, 652.0, 149.0, 462.5, 149.0 ]
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
					"midpoints" : [ 387.5, 65.0, 268.5, 65.0 ]
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
					"midpoints" : [ 84.833336, 74.0, 253.0, 74.0, 253.0, 99.0, 268.5, 99.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 3 ],
					"destination" : [ "obj-10", 1 ],
					"hidden" : 0,
					"midpoints" : [ 183.5, 82.0, 242.5, 82.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 3 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [ 183.5, 82.0, 147.5, 82.0 ]
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
					"midpoints" : [ 268.5, 142.0, 439.0, 142.0, 439.0, 257.0, 35.5, 257.0 ]
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
