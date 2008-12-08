{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 92.0, 82.0, 506.0, 533.0 ],
		"bglocked" : 0,
		"defrect" : [ 92.0, 82.0, 506.0, 533.0 ],
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
					"maxclass" : "newobj",
					"text" : "t b",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 266.0, 77.0, 26.0, 20.0 ],
					"fontsize" : 11.1,
					"numoutlets" : 1,
					"id" : "obj-28",
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "defer the transport settings until after the transport name has been set",
					"linecount" : 3,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 300.0, 78.0, 173.0, 47.0 ],
					"fontsize" : 11.1,
					"numoutlets" : 0,
					"id" : "obj-27"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "deferlow",
					"fontname" : "Verdana",
					"presentation_rect" : [ 195.0, 76.0, 0.0, 0.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 204.0, 76.0, 58.0, 20.0 ],
					"fontsize" : 11.1,
					"numoutlets" : 1,
					"id" : "obj-20",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "deferlow",
					"fontname" : "Verdana",
					"presentation_rect" : [ 286.0, 48.0, 0.0, 0.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 143.0, 76.0, 58.0, 20.0 ],
					"fontsize" : 11.1,
					"numoutlets" : 1,
					"id" : "obj-18",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend timesig",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 46.0, 396.0, 101.0, 20.0 ],
					"fontsize" : 11.1,
					"numoutlets" : 1,
					"id" : "obj-26",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend tempo",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 46.0, 353.0, 96.0, 20.0 ],
					"fontsize" : 11.1,
					"numoutlets" : 1,
					"id" : "obj-25",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "tempo",
					"fontname" : "Verdana",
					"presentation_rect" : [ 12.0, 26.0, 50.0, 20.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 213.0, 379.0, 50.0, 20.0 ],
					"fontsize" : 11.1,
					"presentation" : 1,
					"numoutlets" : 0,
					"id" : "obj-24"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontname" : "Verdana",
					"presentation_rect" : [ 53.0, 26.0, 50.0, 20.0 ],
					"htricolor" : [ 0.333333, 0.870588, 0.239216, 1.0 ],
					"tricolor" : [ 0.0, 0.0, 0.0, 0.501961 ],
					"numinlets" : 1,
					"patching_rect" : [ 158.0, 379.0, 50.0, 20.0 ],
					"fontsize" : 11.1,
					"presentation" : 1,
					"numoutlets" : 2,
					"id" : "obj-19",
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.501961 ],
					"minimum" : 1.0,
					"outlettype" : [ "float", "bang" ],
					"maximum" : 9999.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"cantchange" : 1,
					"fontname" : "Verdana",
					"presentation_rect" : [ 14.0, 2.0, 29.484375, 26.0 ],
					"ignoreclick" : 1,
					"tricolor" : [ 0.317647, 0.709804, 0.321569, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 119.0, 263.0, 29.484375, 26.0 ],
					"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.0 ],
					"fontsize" : 16.0,
					"presentation" : 1,
					"textcolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"numoutlets" : 2,
					"id" : "obj-16",
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"outlettype" : [ "int", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 11.0, 456.0, 77.0, 20.0 ],
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
					"presentation_rect" : [ 8.0, 79.0, 94.0, 20.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 11.0, 490.0, 106.0, 20.0 ],
					"fontsize" : 11.1,
					"presentation" : 1,
					"numoutlets" : 0,
					"id" : "obj-14"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"presentation_rect" : [ 6.0, 79.0, 96.0, 18.0 ],
					"shadow" : -1,
					"numinlets" : 1,
					"patching_rect" : [ 319.0, 324.0, 114.0, 31.0 ],
					"presentation" : 1,
					"rounded" : 24,
					"numoutlets" : 0,
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
					"patching_rect" : [ 46.0, 307.0, 91.0, 20.0 ],
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
					"patching_rect" : [ 82.0, 132.0, 111.0, 20.0 ],
					"fontsize" : 11.1,
					"numoutlets" : 1,
					"id" : "obj-7",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route transport tempo timesig done",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 82.0, 51.0, 264.0, 20.0 ],
					"fontsize" : 11.1,
					"numoutlets" : 5,
					"id" : "obj-4",
					"outlettype" : [ "", "", "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"fontname" : "Verdana",
					"presentation_rect" : [ 67.0, 53.0, 24.0, 20.0 ],
					"ignoreclick" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 180.0, 483.0, 31.0, 20.0 ],
					"fontsize" : 11.1,
					"presentation" : 1,
					"numoutlets" : 2,
					"id" : "obj-13",
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.501961 ],
					"triangle" : 0,
					"outlettype" : [ "int", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"fontname" : "Verdana",
					"presentation_rect" : [ 22.0, 53.0, 35.0, 20.0 ],
					"ignoreclick" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 141.0, 483.0, 31.0, 20.0 ],
					"fontsize" : 11.1,
					"presentation" : 1,
					"numoutlets" : 2,
					"id" : "obj-12",
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.501961 ],
					"triangle" : 0,
					"outlettype" : [ "int", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : ".",
					"fontname" : "Times New Roman",
					"presentation_rect" : [ 53.0, 37.0, 42.0, 48.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 167.0, 466.0, 68.0, 48.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 0.501961 ],
					"fontsize" : 36.0,
					"presentation" : 1,
					"textcolor" : [ 0.0, 0.0, 0.0, 0.501961 ],
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
					"patching_rect" : [ 24.0, 26.0, 77.0, 20.0 ],
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
					"patching_rect" : [ 141.0, 225.0, 67.0, 20.0 ],
					"fontsize" : 11.1,
					"numoutlets" : 3,
					"id" : "obj-2",
					"outlettype" : [ "", "int", "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t 1 0",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 241.0, 234.0, 37.0, 20.0 ],
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
					"presentation_rect" : [ 55.0, 5.0, 49.0, 19.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 241.0, 198.0, 47.0, 21.0 ],
					"fontsize" : 11.1,
					"presentation" : 1,
					"rounded" : 24.0,
					"numoutlets" : 3,
					"id" : "obj-6",
					"text" : "restart",
					"outlettype" : [ "", "", "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "metro 4n @quantize 4n @active 1 @autostart 1 @autostarttime 0.",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 82.0, 160.0, 385.0, 20.0 ],
					"fontsize" : 11.100006,
					"numoutlets" : 1,
					"id" : "obj-59",
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "led",
					"presentation_rect" : [ 6.0, 1.0, 27.0, 27.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 141.0, 266.0, 20.0, 20.0 ],
					"presentation" : 1,
					"numoutlets" : 1,
					"id" : "obj-51",
					"bgcolor" : [ 0.376471, 0.494118, 0.576471, 1.0 ],
					"offcolor" : [ 0.168627, 0.384314, 0.211765, 1.0 ],
					"outlettype" : [ "int" ],
					"oncolor" : [ 0.0, 1.0, 0.14902, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "transport",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 141.0, 437.0, 136.5, 20.0 ],
					"fontsize" : 12.0,
					"numoutlets" : 9,
					"id" : "obj-42",
					"outlettype" : [ "int", "int", "float", "float", "float", "", "int", "float", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"presentation_rect" : [ 6.0, 49.0, 96.0, 27.0 ],
					"shadow" : -1,
					"numinlets" : 1,
					"patching_rect" : [ 322.0, 214.0, 114.0, 31.0 ],
					"presentation" : 1,
					"rounded" : 36,
					"numoutlets" : 0,
					"id" : "obj-22",
					"bgcolor" : [ 0.501961, 0.717647, 0.764706, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"presentation_rect" : [ 0.0, 0.0, 108.0, 103.0 ],
					"shadow" : 2,
					"angle" : -90.0,
					"numinlets" : 1,
					"patching_rect" : [ 320.0, 267.0, 116.0, 34.0 ],
					"bordercolor" : [ 0.678431, 0.819608, 0.819608, 1.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"id" : "obj-23",
					"bgcolor" : [ 0.376471, 0.494118, 0.576471, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "tempo $1",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 158.0, 409.0, 62.0, 18.0 ],
					"fontsize" : 11.1,
					"numoutlets" : 1,
					"id" : "obj-8",
					"outlettype" : [ "" ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 0,
					"color" : [ 0.545098, 0.85098, 0.592157, 1.0 ],
					"midpoints" : [ 275.5, 137.0, 478.0, 137.0, 478.0, 429.0, 150.5, 429.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 3 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [ 91.5, 115.0, 20.5, 115.0 ]
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
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [ 91.5, 115.0, 55.5, 115.0 ]
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
					"source" : [ "obj-4", 1 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 2 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"color" : [ 0.756863, 0.329412, 0.843137, 1.0 ],
					"midpoints" : [ 213.5, 125.0, 33.0, 125.0, 33.0, 390.0, 55.5, 390.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"color" : [ 0.678431, 0.819608, 0.819608, 1.0 ],
					"midpoints" : [ 152.5, 120.0, 42.0, 120.0, 42.0, 344.0, 55.5, 344.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 0,
					"midpoints" : [ 55.5, 335.0, 150.5, 335.0 ]
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
					"midpoints" : [ 250.5, 257.0, 150.5, 257.0 ]
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
					"midpoints" : [ 238.625, 466.0, 302.0, 466.0, 302.0, 189.0, 150.5, 189.0 ]
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
					"source" : [ "obj-59", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 0,
					"midpoints" : [ 91.5, 298.0, 150.5, 298.0 ]
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
					"source" : [ "obj-42", 1 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 4 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [ 209.25, 473.0, 314.0, 473.0, 314.0, 398.0, 258.0, 361.0, 167.5, 361.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 0,
					"midpoints" : [ 55.5, 377.0, 150.5, 377.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 0,
					"midpoints" : [ 55.5, 420.0, 150.5, 420.0 ]
				}

			}
 ]
	}

}
