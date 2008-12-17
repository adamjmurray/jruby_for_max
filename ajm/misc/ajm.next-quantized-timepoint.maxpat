{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 86.0, 177.0, 383.0, 343.0 ],
		"bglocked" : 0,
		"defrect" : [ 86.0, 177.0, 383.0, 343.0 ],
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
					"text" : "t b",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 54.0, 83.0, 26.0, 20.0 ],
					"fontsize" : 11.1,
					"numoutlets" : 1,
					"id" : "obj-12",
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "when",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 54.0, 117.0, 40.0, 20.0 ],
					"fontsize" : 11.1,
					"numoutlets" : 2,
					"id" : "obj-10",
					"outlettype" : [ "list", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"annotation" : "trigger calculation",
					"numinlets" : 0,
					"patching_rect" : [ 54.0, 45.0, 25.0, 25.0 ],
					"numoutlets" : 1,
					"id" : "obj-8",
					"outlettype" : [ "" ],
					"comment" : "trigger calculation"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"annotation" : "next timepoint (in ticks)",
					"numinlets" : 1,
					"patching_rect" : [ 109.0, 281.0, 25.0, 25.0 ],
					"numoutlets" : 0,
					"id" : "obj-5",
					"comment" : "next timepoint (in ticks)"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"annotation" : "transport",
					"numinlets" : 0,
					"patching_rect" : [ 137.0, 13.0, 25.0, 25.0 ],
					"numoutlets" : 1,
					"id" : "obj-3",
					"outlettype" : [ "" ],
					"comment" : "transport"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b s",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 137.0, 52.0, 54.0, 20.0 ],
					"fontsize" : 11.1,
					"numoutlets" : 2,
					"id" : "obj-1",
					"outlettype" : [ "bang", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "+ 480",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 109.0, 253.0, 45.0, 20.0 ],
					"fontsize" : 11.1,
					"numoutlets" : 1,
					"id" : "obj-37",
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "-",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 109.0, 222.0, 32.5, 20.0 ],
					"fontsize" : 11.1,
					"numoutlets" : 1,
					"id" : "obj-35",
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t i i",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 109.0, 171.0, 32.5, 20.0 ],
					"fontsize" : 11.1,
					"numoutlets" : 2,
					"id" : "obj-32",
					"outlettype" : [ "int", "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "% 480",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 123.0, 196.0, 48.0, 20.0 ],
					"fontsize" : 11.1,
					"numoutlets" : 1,
					"id" : "obj-27",
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "#1",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 137.0, 102.0, 32.5, 18.0 ],
					"fontsize" : 11.1,
					"numoutlets" : 1,
					"id" : "obj-9",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "translate bars.beats.units ticks",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 172.0, 136.0, 183.0, 20.0 ],
					"fontsize" : 11.1,
					"numoutlets" : 1,
					"id" : "obj-7",
					"outlettype" : [ "" ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-10", 1 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [ 84.5, 149.0, 118.5, 149.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 1 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-37", 1 ],
					"hidden" : 0,
					"midpoints" : [ 181.5, 249.0, 144.5, 249.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-27", 1 ],
					"hidden" : 0,
					"midpoints" : [ 181.5, 183.0, 161.5, 183.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 1 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-35", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 1 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [ 146.5, 131.0, 181.5, 131.0 ]
				}

			}
 ]
	}

}
