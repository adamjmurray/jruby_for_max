{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 25.0, 72.0, 609.0, 333.0 ],
		"bglocked" : 0,
		"defrect" : [ 25.0, 72.0, 609.0, 333.0 ],
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
					"text" : "deferlow",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 378.0, 36.0, 58.0, 20.0 ],
					"fontsize" : 11.1,
					"id" : "obj-26",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sprintf symout @%s",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 470.0, 97.0, 124.0, 20.0 ],
					"fontsize" : 11.1,
					"id" : "obj-17",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "error",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 470.0, 121.0, 38.0, 20.0 ],
					"fontsize" : 11.1,
					"id" : "obj-18",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route timesig done",
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 259.0, 68.0, 230.0, 20.0 ],
					"fontsize" : 11.1,
					"id" : "obj-16",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "patcherargs @timesig 4 4",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 243.0, 12.0, 154.0, 20.0 ],
					"fontsize" : 11.1,
					"id" : "obj-15",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sprintf symout timesig(%d\\,%d)",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 259.0, 103.0, 194.0, 20.0 ],
					"fontsize" : 11.1,
					"id" : "obj-13",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Send a bad path to the object to print a user friendly error message",
					"linecount" : 3,
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"patching_rect" : [ 220.0, 177.0, 150.0, 47.0 ],
					"fontsize" : 11.1,
					"id" : "obj-11",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "zl reg",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 210.0, 158.0, 42.0, 20.0 ],
					"fontsize" : 11.1,
					"id" : "obj-10",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route notfound",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 138.0, 115.0, 94.0, 20.0 ],
					"fontsize" : 11.1,
					"id" : "obj-8",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "opendialog Midi",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"patching_rect" : [ 26.0, 84.0, 97.0, 20.0 ],
					"fontsize" : 11.1,
					"id" : "obj-7",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route bang timesig",
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 26.0, 39.0, 131.0, 20.0 ],
					"fontsize" : 11.1,
					"id" : "obj-6",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "absolutepath",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 138.0, 86.0, 83.0, 20.0 ],
					"fontsize" : 11.1,
					"id" : "obj-5",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "conformpath native boot",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"outlettype" : [ "", "int" ],
					"patching_rect" : [ 26.0, 188.0, 148.0, 20.0 ],
					"fontsize" : 11.1,
					"id" : "obj-14",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numoutlets" : 0,
					"patching_rect" : [ 26.0, 294.0, 25.0, 25.0 ],
					"id" : "obj-3",
					"numinlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 26.0, 8.0, 25.0, 25.0 ],
					"id" : "obj-2",
					"numinlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sprintf read '%s'",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 26.0, 224.0, 103.0, 20.0 ],
					"fontsize" : 11.1,
					"id" : "obj-1",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "mxj ajm.ruby @scriptfile ajm_midi2coll.rb @evaloutlet -1",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 26.0, 264.0, 332.0, 20.0 ],
					"fontsize" : 11.1,
					"id" : "obj-4",
					"numinlets" : 1
				}

			}
 ],
		"lines" : [ 			{
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
					"midpoints" : [ 268.5, 138.0, 439.0, 138.0, 439.0, 253.0, 35.5, 253.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [ 387.5, 61.0, 268.5, 61.0 ]
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
					"source" : [ "obj-6", 1 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.164706, 1.0, 1.0 ],
					"midpoints" : [ 91.5, 70.0, 253.0, 70.0, 253.0, 95.0, 268.5, 95.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 2 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 2 ],
					"destination" : [ "obj-10", 1 ],
					"hidden" : 0,
					"midpoints" : [ 147.5, 79.0, 242.5, 79.0 ]
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
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-7", 0 ],
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
					"source" : [ "obj-16", 2 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
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
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [ 219.5, 215.0, 35.5, 215.0 ]
				}

			}
 ]
	}

}
