{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 46.0, 64.0, 664.0, 571.0 ],
		"bglocked" : 0,
		"defrect" : [ 46.0, 64.0, 664.0, 571.0 ],
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
					"text" : "js ajm.error \"ajm.relmetro doesn't understand\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 465.0, 89.0, 165.0, 33.0 ],
					"fontsize" : 11.1,
					"id" : "obj-4",
					"color" : [ 1.0, 0.52549, 0.52549, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "js ajm.error \"ajm.relmetro unknown output format\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 431.0, 411.0, 171.0, 33.0 ],
					"fontsize" : 11.1,
					"id" : "obj-1",
					"color" : [ 1.0, 0.52549, 0.52549, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sprintf %s.%s.%s",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 100.0, 444.0, 111.0, 20.0 ],
					"fontsize" : 11.1,
					"id" : "obj-29",
					"numinlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "translate ticks bars.beats.units @mode position",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 100.0, 419.0, 277.0, 20.0 ],
					"fontsize" : 11.1,
					"id" : "obj-26",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "output formats",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"patching_rect" : [ 460.0, 292.0, 101.0, 20.0 ],
					"fontsize" : 11.1,
					"id" : "obj-25",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t 3",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 530.0, 345.0, 26.0, 20.0 ],
					"fontsize" : 11.1,
					"id" : "obj-13",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t 2",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 480.0, 345.0, 26.0, 20.0 ],
					"fontsize" : 11.1,
					"id" : "obj-12",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t 1",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 431.0, 345.0, 26.0, 20.0 ],
					"fontsize" : 11.1,
					"id" : "obj-11",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route ticks bbulist bbustring",
					"fontname" : "Verdana",
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 431.0, 313.0, 167.0, 20.0 ],
					"fontsize" : 11.1,
					"id" : "obj-3",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gate 3 3",
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 50.0, 392.0, 69.0, 20.0 ],
					"fontsize" : 11.1,
					"id" : "obj-2",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "translate ticks bars.beats.units @mode position",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 75.0, 481.0, 277.0, 20.0 ],
					"fontsize" : 11.1,
					"id" : "obj-21",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"hint" : "relative time in bars beats units (list)",
					"annotation" : "relative time in bars beats units (list)",
					"numoutlets" : 0,
					"patching_rect" : [ 50.0, 528.0, 25.0, 25.0 ],
					"id" : "obj-32",
					"numinlets" : 1,
					"comment" : "relative time in bars beats units (list)"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "stop",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 309.0, 130.0, 34.0, 18.0 ],
					"fontsize" : 11.1,
					"id" : "obj-28",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "If the relative ticks is negative, the metro shouldn't even be running (this can happen when rewinding the transport)",
					"linecount" : 5,
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"patching_rect" : [ 259.0, 259.0, 161.0, 74.0 ],
					"fontsize" : 11.1,
					"id" : "obj-45",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "if $i1 >= 0 then $i1 else out2 stop",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 50.0, 304.0, 204.0, 20.0 ],
					"fontsize" : 11.1,
					"id" : "obj-43",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "timepoint",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 309.0, 104.0, 63.0, 20.0 ],
					"fontsize" : 11.1,
					"id" : "obj-30",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route interval start end format done",
					"fontname" : "Verdana",
					"numoutlets" : 6,
					"outlettype" : [ "", "", "", "", "", "" ],
					"patching_rect" : [ 138.0, 49.0, 223.0, 20.0 ],
					"fontsize" : 11.1,
					"id" : "obj-24",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "-",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 50.0, 272.0, 32.5, 20.0 ],
					"fontsize" : 11.1,
					"id" : "obj-20",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "autostarttime $1",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 179.0, 130.0, 104.0, 18.0 ],
					"fontsize" : 11.1,
					"id" : "obj-17",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "translate @out ticks @mode position",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 285.0, 214.0, 126.0, 33.0 ],
					"fontsize" : 11.1,
					"id" : "obj-15",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "patcherargs @interval 4n @start 1.1.0 @format bbustring",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 86.0, 17.0, 335.0, 20.0 ],
					"fontsize" : 11.1,
					"id" : "obj-14",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "metro 4n @active 0 @autostart 1",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 29.0, 193.0, 197.0, 20.0 ],
					"fontsize" : 11.1,
					"id" : "obj-9",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "when",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"outlettype" : [ "list", "bang" ],
					"patching_rect" : [ 29.0, 242.0, 40.0, 20.0 ],
					"fontsize" : 11.1,
					"id" : "obj-10",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend interval",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 29.0, 129.0, 102.0, 20.0 ],
					"fontsize" : 11.1,
					"id" : "obj-27",
					"numinlets" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-24", 5 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [ 351.5, 74.0, 474.5, 74.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 3 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [ 588.5, 401.0, 440.5, 401.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [ 147.5, 107.0, 38.5, 107.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 1 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 1 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [ 188.300003, 108.0, 294.5, 108.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 2 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [ 229.100006, 96.0, 318.5, 96.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 3 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [ 269.899994, 82.0, 440.5, 82.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 1 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [ 411.5, 43.0, 147.5, 43.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 1 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 2 ],
					"destination" : [ "obj-13", 0 ],
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
					"source" : [ "obj-2", 2 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [ 440.5, 372.0, 59.5, 372.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 1 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [ 539.5, 372.0, 59.5, 372.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [ 489.5, 372.0, 59.5, 372.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 1 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [ 244.5, 328.0, 258.0, 328.0, 258.0, 180.0, 38.5, 180.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [ 188.5, 164.0, 38.5, 164.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"color" : [ 1.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [ 318.5, 180.0, 38.5, 180.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 1 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-20", 1 ],
					"hidden" : 0,
					"midpoints" : [ 294.5, 253.0, 73.0, 253.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [ 84.5, 515.0, 59.5, 515.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [ 109.5, 470.0, 384.0, 470.0, 384.0, 515.0, 59.5, 515.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-2", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
