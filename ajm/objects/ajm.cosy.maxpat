{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 101.0, 71.0, 552.0, 447.0 ],
		"bglocked" : 0,
		"defrect" : [ 101.0, 71.0, 552.0, 447.0 ],
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
					"hint" : "other values (numbers, strings)",
					"annotation" : "other values (numbers, strings)",
					"patching_rect" : [ 250.0, 320.0, 25.0, 25.0 ],
					"id" : "obj-10",
					"numinlets" : 1,
					"numoutlets" : 0,
					"comment" : "other values (numbers, strings)"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "The [sprintf] adds a space to force the detokenizer to wrap in quotes. If I use [sprintf] to wrap in quotes, then I can end up with doubly wrapped quotes. It seems there is always some situation where things can get screwed. This is the best compromise I found so far.",
					"linecount" : 4,
					"patching_rect" : [ 68.0, 370.0, 408.0, 60.0 ],
					"id" : "obj-8",
					"fontname" : "Verdana",
					"fontsize" : 11.1,
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sprintf symout \"%s \"",
					"patching_rect" : [ 71.0, 204.0, 127.0, 20.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-6",
					"fontname" : "Verdana",
					"fontsize" : 11.1,
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend sequence",
					"patching_rect" : [ 71.0, 233.0, 113.0, 20.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-5",
					"fontname" : "Verdana",
					"fontsize" : 11.1,
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route text",
					"patching_rect" : [ 71.0, 99.0, 66.0, 20.0 ],
					"outlettype" : [ "", "" ],
					"id" : "obj-4",
					"fontname" : "Verdana",
					"fontsize" : 11.1,
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "restart",
					"patching_rect" : [ 431.0, 238.0, 48.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-3",
					"fontname" : "Verdana",
					"fontsize" : 11.1,
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sel 1",
					"patching_rect" : [ 367.0, 180.0, 37.0, 20.0 ],
					"outlettype" : [ "bang", "" ],
					"id" : "obj-54",
					"fontname" : "Verdana",
					"fontsize" : 11.1,
					"numinlets" : 2,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "onebang",
					"patching_rect" : [ 367.0, 204.0, 58.0, 20.0 ],
					"outlettype" : [ "bang", "bang" ],
					"id" : "obj-49",
					"fontname" : "Verdana",
					"fontsize" : 11.1,
					"numinlets" : 2,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b",
					"patching_rect" : [ 431.0, 204.0, 26.0, 20.0 ],
					"outlettype" : [ "bang" ],
					"id" : "obj-48",
					"fontname" : "Verdana",
					"fontsize" : 11.1,
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"hint" : "restart (anything)",
					"annotation" : "restart (anything)",
					"patching_rect" : [ 431.0, 175.0, 25.0, 25.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-47",
					"numinlets" : 0,
					"numoutlets" : 1,
					"comment" : "restart (anything)"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "deferlow",
					"patching_rect" : [ 133.0, 47.0, 58.0, 20.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-45",
					"fontname" : "Verdana",
					"fontsize" : 11.1,
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route sequence loop",
					"patching_rect" : [ 133.0, 74.0, 124.0, 20.0 ],
					"outlettype" : [ "", "", "" ],
					"id" : "obj-44",
					"fontname" : "Verdana",
					"fontsize" : 11.1,
					"numinlets" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "patcherargs",
					"patching_rect" : [ 75.0, 18.0, 77.0, 20.0 ],
					"outlettype" : [ "", "" ],
					"id" : "obj-43",
					"fontname" : "Verdana",
					"fontsize" : 11.1,
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "loop",
					"text" : "pattr @name loop @autorestore 0",
					"patching_rect" : [ 255.0, 114.0, 201.0, 20.0 ],
					"outlettype" : [ "", "", "" ],
					"id" : "obj-41",
					"fontname" : "Verdana",
					"fontsize" : 11.1,
					"numinlets" : 1,
					"numoutlets" : 3,
					"restore" : [ 0 ],
					"saved_object_attributes" : 					{

					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"hint" : "loop",
					"annotation" : "loop",
					"patching_rect" : [ 255.0, 39.0, 25.0, 25.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-40",
					"numinlets" : 0,
					"numoutlets" : 1,
					"comment" : "loop"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "sequence",
					"text" : "pattr @name sequence @autorestore 0",
					"linecount" : 2,
					"patching_rect" : [ 71.0, 165.0, 149.0, 33.0 ],
					"outlettype" : [ "", "", "" ],
					"id" : "obj-39",
					"fontname" : "Verdana",
					"fontsize" : 11.1,
					"numinlets" : 1,
					"numoutlets" : 3,
					"restore" : [ 0 ],
					"saved_object_attributes" : 					{

					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gate",
					"patching_rect" : [ 255.0, 167.0, 43.0, 20.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-38",
					"fontname" : "Verdana",
					"fontsize" : 11.1,
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"hint" : "bangs play sequene",
					"annotation" : "bangs play sequene",
					"patching_rect" : [ 34.0, 65.0, 25.0, 25.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-37",
					"numinlets" : 0,
					"numoutlets" : 1,
					"comment" : "bangs play sequene"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"hint" : "sequence (cosy)",
					"annotation" : "sequence (cosy)",
					"patching_rect" : [ 71.0, 65.0, 25.0, 25.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-36",
					"numinlets" : 0,
					"numoutlets" : 1,
					"comment" : "sequence (cosy)"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"hint" : "pitches",
					"annotation" : "pitches",
					"patching_rect" : [ 71.0, 322.0, 25.0, 25.0 ],
					"id" : "obj-34",
					"numinlets" : 1,
					"numoutlets" : 0,
					"comment" : "pitches"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"hint" : "velocity",
					"annotation" : "velocity",
					"patching_rect" : [ 131.0, 321.0, 25.0, 25.0 ],
					"id" : "obj-33",
					"numinlets" : 1,
					"numoutlets" : 0,
					"comment" : "velocity"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"hint" : "duration (in bangs)",
					"annotation" : "duration (in bangs)",
					"patching_rect" : [ 191.0, 321.0, 25.0, 25.0 ],
					"id" : "obj-32",
					"numinlets" : 1,
					"numoutlets" : 0,
					"comment" : "duration (in bangs)"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"hint" : "parsed successfully",
					"annotation" : "parsed successfully",
					"patching_rect" : [ 370.0, 296.0, 25.0, 25.0 ],
					"id" : "obj-29",
					"numinlets" : 1,
					"numoutlets" : 0,
					"comment" : "parsed successfully"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"hint" : "bang when sequence done",
					"annotation" : "bang when sequence done",
					"patching_rect" : [ 310.0, 334.0, 25.0, 25.0 ],
					"id" : "obj-16",
					"numinlets" : 1,
					"numoutlets" : 0,
					"comment" : "bang when sequence done"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "iter",
					"patching_rect" : [ 71.0, 294.0, 29.0, 20.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-2",
					"fontname" : "Verdana",
					"fontsize" : 11.1,
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "b",
					"patching_rect" : [ 255.0, 191.0, 32.5, 20.0 ],
					"outlettype" : [ "bang", "bang" ],
					"id" : "obj-26",
					"fontname" : "Verdana",
					"fontsize" : 11.1,
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "tosymbol",
					"patching_rect" : [ 71.0, 141.0, 61.0, 20.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-23",
					"fontname" : "Verdana",
					"fontsize" : 11.1,
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "autorestart",
					"patching_rect" : [ 269.0, 233.0, 73.0, 18.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-9",
					"fontname" : "Verdana",
					"fontsize" : 11.1,
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "mxj ajm.ruby 6 @evaloutlet -1 @scriptfile ajm_cosy.rb",
					"patching_rect" : [ 71.0, 267.0, 318.0, 20.0 ],
					"outlettype" : [ "", "", "", "", "", "" ],
					"id" : "obj-1",
					"fontname" : "Verdana",
					"fontsize" : 11.1,
					"numinlets" : 1,
					"numoutlets" : 6
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [ 440.5, 259.0, 80.5, 259.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [ 43.5, 259.0, 80.5, 259.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [ 264.5, 259.0, 80.5, 259.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 1 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 2 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [ 278.5, 259.0, 80.5, 259.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 5 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 4 ],
					"destination" : [ "obj-49", 1 ],
					"hidden" : 0,
					"midpoints" : [ 319.700012, 325.0, 491.0, 325.0, 491.0, 169.0, 415.5, 169.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 4 ],
					"destination" : [ "obj-38", 1 ],
					"hidden" : 0,
					"midpoints" : [ 319.700012, 325.0, 491.0, 325.0, 491.0, 154.0, 288.5, 154.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 4 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 3 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 1 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-48", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 1 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [ 142.5, 132.0, 80.5, 132.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 1 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-47", 0 ],
					"destination" : [ "obj-48", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-54", 0 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-54", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 1 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 0,
					"midpoints" : [ 195.0, 105.0, 264.5, 105.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [ 376.5, 233.0, 440.5, 233.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
 ]
	}

}
