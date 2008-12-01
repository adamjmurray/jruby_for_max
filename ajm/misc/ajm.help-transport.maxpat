{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 576.0, 250.0, 385.0, 293.0 ],
		"bglocked" : 0,
		"defrect" : [ 576.0, 250.0, 385.0, 293.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 1,
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
					"numoutlets" : 0,
					"patching_rect" : [ 164.0, 78.0, 25.0, 25.0 ],
					"id" : "obj-8",
					"numinlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "change -1",
					"fontname" : "Verdana",
					"numoutlets" : 3,
					"outlettype" : [ "", "int", "int" ],
					"patching_rect" : [ 63.0, 74.0, 67.0, 20.0 ],
					"fontsize" : 11.1,
					"id" : "obj-2",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 89.0, 143.0, 61.0, 20.0 ],
					"fontsize" : 11.1,
					"id" : "obj-1",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t 1 0",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 140.0, 107.0, 37.0, 20.0 ],
					"fontsize" : 11.1,
					"id" : "obj-10",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sprintf %d.%d",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 63.0, 212.0, 92.0, 20.0 ],
					"fontsize" : 11.1,
					"id" : "obj-7",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"fontname" : "Verdana",
					"presentation_rect" : [ 44.0, 10.0, 49.0, 25.0 ],
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"patching_rect" : [ 140.0, 46.0, 47.0, 21.0 ],
					"fontsize" : 11.1,
					"presentation" : 1,
					"text" : "restart",
					"id" : "obj-6",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "absolute time",
					"fontname" : "Arial",
					"presentation_rect" : [ 13.0, 45.0, 89.0, 21.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 90.0, 238.0, 89.0, 21.0 ],
					"fontsize" : 13.0,
					"presentation" : 1,
					"id" : "obj-61",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "metro 16n @quantize 16n @active 1 @autostart 1 @autostarttime 0.",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 4.0, 9.0, 364.0, 20.0 ],
					"fontsize" : 11.595187,
					"id" : "obj-59",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "2.2",
					"fontname" : "Arial Bold",
					"presentation_rect" : [ 23.0, 67.0, 70.0, 21.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 11.0, 238.0, 71.0, 21.0 ],
					"fontsize" : 14.0,
					"presentation" : 1,
					"id" : "obj-58",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "led",
					"presentation_rect" : [ 12.0, 9.0, 27.0, 27.0 ],
					"numoutlets" : 1,
					"oncolor" : [ 0.0, 1.0, 0.14902, 1.0 ],
					"outlettype" : [ "int" ],
					"patching_rect" : [ 63.0, 140.0, 20.0, 20.0 ],
					"presentation" : 1,
					"bgcolor" : [ 0.376471, 0.494118, 0.576471, 1.0 ],
					"id" : "obj-51",
					"numinlets" : 1,
					"offcolor" : [ 0.168627, 0.384314, 0.211765, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "transport",
					"fontname" : "Arial",
					"numoutlets" : 9,
					"outlettype" : [ "int", "int", "float", "float", "float", "", "int", "float", "" ],
					"patching_rect" : [ 63.0, 178.0, 113.5, 20.0 ],
					"fontsize" : 12.0,
					"id" : "obj-42",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"presentation_rect" : [ 9.0, 39.0, 90.0, 54.0 ],
					"numoutlets" : 0,
					"shadow" : -1,
					"patching_rect" : [ 233.0, 63.0, 114.0, 31.0 ],
					"presentation" : 1,
					"rounded" : 24,
					"bgcolor" : [ 0.501961, 0.717647, 0.764706, 1.0 ],
					"id" : "obj-22",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"presentation_rect" : [ 3.0, 3.0, 105.0, 97.0 ],
					"numoutlets" : 0,
					"shadow" : 2,
					"angle" : -90.0,
					"patching_rect" : [ 231.0, 116.0, 116.0, 34.0 ],
					"presentation" : 1,
					"bordercolor" : [ 0.678431, 0.819608, 0.819608, 1.0 ],
					"bgcolor" : [ 0.376471, 0.494118, 0.576471, 1.0 ],
					"id" : "obj-23",
					"numinlets" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-58", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 1 ],
					"destination" : [ "obj-7", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 0,
					"midpoints" : [ 98.5, 170.0, 72.5, 170.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-59", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 0,
					"midpoints" : [ 13.5, 170.0, 72.5, 170.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-51", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-51", 0 ],
					"hidden" : 0,
					"midpoints" : [ 149.5, 132.0, 72.5, 132.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 1 ],
					"destination" : [ "obj-42", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 6 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [ 143.375, 204.0, 197.0, 204.0, 197.0, 31.0, 72.5, 31.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-51", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [ 149.5, 72.0, 173.5, 72.0 ]
				}

			}
 ]
	}

}
