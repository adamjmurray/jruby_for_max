{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 152.0, 103.0, 568.0, 448.0 ],
		"bglocked" : 0,
		"defrect" : [ 152.0, 103.0, 568.0, 448.0 ],
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
					"text" : "INF is infinity. Just let one bang through for positive infinity",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"patching_rect" : [ 272.0, 18.0, 189.0, 33.0 ],
					"fontsize" : 11.0,
					"id" : "obj-1",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "uzi",
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "int" ],
					"patching_rect" : [ 209.0, 297.0, 46.0, 20.0 ],
					"fontsize" : 11.0,
					"id" : "obj-2",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "int 1",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 209.0, 272.0, 37.0, 20.0 ],
					"fontsize" : 11.0,
					"id" : "obj-3",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t 1 2 b i",
					"fontname" : "Verdana",
					"numoutlets" : 4,
					"outlettype" : [ "int", "int", "bang", "int" ],
					"patching_rect" : [ 247.0, 190.0, 63.0, 20.0 ],
					"fontsize" : 11.0,
					"id" : "obj-4",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "counter 2 999999",
					"fontname" : "Verdana",
					"numoutlets" : 4,
					"outlettype" : [ "int", "", "", "int" ],
					"patching_rect" : [ 246.0, 236.0, 111.0, 20.0 ],
					"fontsize" : 11.0,
					"id" : "obj-5",
					"numinlets" : 5
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sel 0",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 221.0, 165.0, 46.0, 20.0 ],
					"fontsize" : 11.0,
					"id" : "obj-6",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"annotation" : "seq commands",
					"numoutlets" : 0,
					"patching_rect" : [ 141.0, 366.0, 24.0, 24.0 ],
					"id" : "obj-7",
					"numinlets" : 1,
					"comment" : "seq commands"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route int -INF INF",
					"fontname" : "Verdana",
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 223.0, 51.0, 107.0, 20.0 ],
					"fontsize" : 11.0,
					"id" : "obj-8",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gate",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 221.0, 139.0, 35.0, 20.0 ],
					"fontsize" : 11.0,
					"id" : "obj-9",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t i i",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 223.0, 75.0, 32.0, 20.0 ],
					"fontsize" : 11.0,
					"id" : "obj-10",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : ">= 0",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 221.0, 109.0, 37.0, 20.0 ],
					"fontsize" : 11.0,
					"id" : "obj-11",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 223.0, 21.0, 24.0, 24.0 ],
					"id" : "obj-12",
					"numinlets" : 0,
					"comment" : "ajm.rhythmseq value"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"annotation" : "rhythmic bangs",
					"numoutlets" : 0,
					"patching_rect" : [ 209.0, 367.0, 24.0, 24.0 ],
					"id" : "obj-13",
					"numinlets" : 1,
					"comment" : "rhythmic bangs"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"annotation" : "note duration in bangs",
					"numoutlets" : 0,
					"patching_rect" : [ 358.0, 364.0, 24.0, 24.0 ],
					"id" : "obj-14",
					"numinlets" : 1,
					"comment" : "note duration in bangs"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Non-zero tick amounts are sent out the right outlet so the proper duration of the note can be determined. \n\ncounter/uzi is used so that the duration will be the first non-zero AFTER a sequence of zeros, and the right amount of bangs will be sent for the zeros + non-zero sequence.",
					"linecount" : 11,
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"patching_rect" : [ 8.0, 175.0, 201.0, 154.0 ],
					"fontsize" : 11.0,
					"id" : "obj-15",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Filters out negative numbers (rests).",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"patching_rect" : [ 101.0, 107.0, 121.0, 33.0 ],
					"fontsize" : 11.0,
					"id" : "obj-16",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Non-ints are passed through to their own oulet so they can be used as ajm.seq commands or whatever",
					"linecount" : 3,
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"patching_rect" : [ 341.0, 88.0, 223.0, 47.0 ],
					"fontsize" : 11.0,
					"id" : "obj-17",
					"numinlets" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-4", 2 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [ 218.0, 239.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 3 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [ 300.5, 219.0, 367.5, 219.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 1 ],
					"destination" : [ "obj-5", 2 ],
					"hidden" : 0,
					"midpoints" : [ 271.166656, 227.0, 301.5, 227.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 1 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-9", 1 ],
					"hidden" : 0,
					"midpoints" : [ 232.5, 100.0, 262.0, 100.0, 262.0, 133.0, 246.5, 133.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-3", 1 ],
					"hidden" : 0,
					"midpoints" : [ 256.5, 215.0, 236.5, 215.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-3", 1 ],
					"hidden" : 0,
					"midpoints" : [ 255.5, 265.0, 236.5, 265.0 ]
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
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 1 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 2 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [ 291.166656, 165.0, 429.0, 165.0, 429.0, 405.0, 203.0, 405.0, 203.0, 360.0, 218.5, 360.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 3 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [ 320.5, 134.0, 491.0, 134.0, 491.0, 429.0, 125.0, 429.0, 125.0, 356.0, 150.5, 356.0 ]
				}

			}
 ]
	}

}
