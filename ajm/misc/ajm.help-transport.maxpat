{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 92.0, 82.0, 442.0, 418.0 ],
		"bglocked" : 0,
		"defrect" : [ 92.0, 82.0, 442.0, 418.0 ],
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
					"maxclass" : "number",
					"cantchange" : 1,
					"fontname" : "Verdana",
					"tricolor" : [ 0.317647, 0.709804, 0.321569, 1.0 ],
					"presentation_rect" : [ 17.0, 7.0, 29.484375, 26.0 ],
					"ignoreclick" : 1,
					"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 118.0, 238.0, 29.484375, 26.0 ],
					"fontsize" : 16.0,
					"presentation" : 1,
					"numoutlets" : 2,
					"textcolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"id" : "obj-16",
					"outlettype" : [ "int", "bang" ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 12.0, 314.0, 77.0, 20.0 ],
					"fontsize" : 11.1,
					"numoutlets" : 1,
					"id" : "obj-11",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "default",
					"fontname" : "Verdana",
					"presentation_rect" : [ 9.0, 86.0, 93.0, 20.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 12.0, 348.0, 106.0, 20.0 ],
					"fontsize" : 11.1,
					"presentation" : 1,
					"numoutlets" : 0,
					"id" : "obj-14"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"presentation_rect" : [ 6.0, 87.0, 96.0, 18.0 ],
					"shadow" : -1,
					"numinlets" : 1,
					"patching_rect" : [ 307.0, 274.0, 114.0, 31.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"rounded" : 24,
					"id" : "obj-15",
					"bgcolor" : [ 0.501961, 0.764706, 0.635294, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend name",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 45.0, 279.0, 91.0, 20.0 ],
					"fontsize" : 11.1,
					"numoutlets" : 1,
					"id" : "obj-9",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend transport",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 81.0, 77.0, 111.0, 20.0 ],
					"fontsize" : 11.1,
					"numoutlets" : 1,
					"id" : "obj-7",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route transport",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 81.0, 38.0, 95.0, 20.0 ],
					"fontsize" : 11.1,
					"numoutlets" : 2,
					"id" : "obj-4",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"fontname" : "Verdana",
					"presentation_rect" : [ 62.0, 55.0, 24.0, 20.0 ],
					"ignoreclick" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 179.0, 356.0, 31.0, 20.0 ],
					"fontsize" : 11.1,
					"presentation" : 1,
					"numoutlets" : 2,
					"id" : "obj-13",
					"outlettype" : [ "int", "bang" ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.501961 ],
					"triangle" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"fontname" : "Verdana",
					"presentation_rect" : [ 17.0, 55.0, 35.0, 20.0 ],
					"ignoreclick" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 140.0, 356.0, 31.0, 20.0 ],
					"fontsize" : 11.1,
					"presentation" : 1,
					"numoutlets" : 2,
					"id" : "obj-12",
					"outlettype" : [ "int", "bang" ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.501961 ],
					"triangle" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "beat",
					"fontname" : "Arial",
					"presentation_rect" : [ 59.0, 37.0, 42.0, 21.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 180.0, 385.0, 42.0, 21.0 ],
					"fontsize" : 13.0,
					"presentation" : 1,
					"numoutlets" : 0,
					"id" : "obj-5"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "patcherargs",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 23.0, 13.0, 77.0, 20.0 ],
					"fontsize" : 11.1,
					"numoutlets" : 2,
					"id" : "obj-3",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "change -1",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 140.0, 175.0, 67.0, 20.0 ],
					"fontsize" : 11.1,
					"numoutlets" : 3,
					"id" : "obj-2",
					"outlettype" : [ "", "int", "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 166.0, 244.0, 61.0, 20.0 ],
					"fontsize" : 11.1,
					"numoutlets" : 1,
					"id" : "obj-1",
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t 1 0",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 217.0, 208.0, 37.0, 20.0 ],
					"fontsize" : 11.1,
					"numoutlets" : 2,
					"id" : "obj-10",
					"outlettype" : [ "int", "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"fontname" : "Verdana",
					"presentation_rect" : [ 53.0, 6.0, 49.0, 25.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 217.0, 147.0, 47.0, 21.0 ],
					"fontsize" : 11.1,
					"presentation" : 1,
					"numoutlets" : 3,
					"rounded" : 24.0,
					"id" : "obj-6",
					"outlettype" : [ "", "", "int" ],
					"text" : "restart"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "bar",
					"fontname" : "Arial",
					"presentation_rect" : [ 15.0, 37.0, 34.0, 21.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 129.0, 385.0, 39.0, 21.0 ],
					"fontsize" : 13.0,
					"presentation" : 1,
					"numoutlets" : 0,
					"id" : "obj-61"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "metro 4n @quantize 4n @active 1 @autostart 1 @autostarttime 0.",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 81.0, 110.0, 351.0, 20.0 ],
					"fontsize" : 11.595187,
					"numoutlets" : 1,
					"id" : "obj-59",
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "led",
					"presentation_rect" : [ 9.0, 6.0, 27.0, 27.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 140.0, 241.0, 20.0, 20.0 ],
					"offcolor" : [ 0.168627, 0.384314, 0.211765, 1.0 ],
					"presentation" : 1,
					"numoutlets" : 1,
					"oncolor" : [ 0.0, 1.0, 0.14902, 1.0 ],
					"id" : "obj-51",
					"outlettype" : [ "int" ],
					"bgcolor" : [ 0.376471, 0.494118, 0.576471, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "transport",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 140.0, 310.0, 113.5, 20.0 ],
					"fontsize" : 12.0,
					"numoutlets" : 9,
					"id" : "obj-42",
					"outlettype" : [ "int", "int", "float", "float", "float", "", "int", "float", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"presentation_rect" : [ 6.0, 36.0, 96.0, 44.0 ],
					"shadow" : -1,
					"numinlets" : 1,
					"patching_rect" : [ 310.0, 164.0, 114.0, 31.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"rounded" : 36,
					"id" : "obj-22",
					"bgcolor" : [ 0.501961, 0.717647, 0.764706, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"presentation_rect" : [ 0.0, 0.0, 110.0, 113.0 ],
					"bordercolor" : [ 0.678431, 0.819608, 0.819608, 1.0 ],
					"shadow" : 2,
					"numinlets" : 1,
					"patching_rect" : [ 308.0, 217.0, 116.0, 34.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"angle" : -90.0,
					"id" : "obj-23",
					"bgcolor" : [ 0.376471, 0.494118, 0.576471, 1.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-42", 1 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-59", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 0,
					"midpoints" : [ 90.5, 269.0, 149.5, 269.0 ]
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
					"source" : [ "obj-42", 6 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [ 220.375, 337.0, 274.0, 337.0, 274.0, 139.0, 149.5, 139.0 ]
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
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-51", 0 ],
					"hidden" : 0,
					"midpoints" : [ 226.5, 233.0, 149.5, 233.0 ]
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
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 0,
					"midpoints" : [ 175.5, 269.0, 149.5, 269.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 1 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-59", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 0,
					"midpoints" : [ 54.5, 306.0, 149.5, 306.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [ 90.5, 65.0, 54.5, 65.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [ 90.5, 65.0, 21.5, 65.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
