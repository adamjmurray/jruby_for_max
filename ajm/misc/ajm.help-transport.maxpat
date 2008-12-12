{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 657.0, 44.0, 511.0, 698.0 ],
		"bglocked" : 0,
		"defrect" : [ 657.0, 44.0, 511.0, 698.0 ],
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
					"maxclass" : "message",
					"text" : "set $1",
					"fontname" : "Arial",
					"presentation_rect" : [ 192.0, 352.0, 0.0, 0.0 ],
					"numinlets" : 2,
					"patching_rect" : [ 177.0, 333.0, 39.0, 16.0 ],
					"fontsize" : 10.435669,
					"numoutlets" : 1,
					"id" : "obj-34",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route tempo",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 177.0, 309.0, 79.0, 20.0 ],
					"fontsize" : 11.1,
					"numoutlets" : 2,
					"id" : "obj-33",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"hint" : "",
					"annotation" : "to transport (left inlet)",
					"numinlets" : 0,
					"patching_rect" : [ 164.0, 271.0, 25.0, 25.0 ],
					"numoutlets" : 1,
					"id" : "obj-32",
					"outlettype" : [ "" ],
					"comment" : "to transport (left inlet)"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "changing time is disabled because it is buggy with named transports",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 232.0, 551.0, 218.0, 33.0 ],
					"fontsize" : 11.1,
					"numoutlets" : 0,
					"id" : "obj-31"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"presentation_rect" : [ 30.0, 2.0, 26.0, 26.0 ],
					"fgcolor" : [ 1.0, 1.0, 1.0, 0.517647 ],
					"numinlets" : 1,
					"outlinecolor" : [ 0.713726, 0.713726, 0.713726, 0.0 ],
					"patching_rect" : [ 104.0, 199.0, 20.0, 20.0 ],
					"presentation" : 1,
					"numoutlets" : 1,
					"id" : "obj-29",
					"outlettype" : [ "bang" ],
					"bgcolor" : [ 0.913725, 0.913725, 0.913725, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set $1",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 184.0, 481.0, 39.0, 16.0 ],
					"fontsize" : 10.435669,
					"numoutlets" : 1,
					"id" : "obj-80",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set $1",
					"fontname" : "Arial",
					"numinlets" : 2,
					"patching_rect" : [ 141.0, 481.0, 39.0, 16.0 ],
					"fontsize" : 10.435669,
					"numoutlets" : 1,
					"id" : "obj-50",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pak 1 1 0.",
					"fontname" : "Verdana",
					"numinlets" : 3,
					"patching_rect" : [ 142.0, 567.0, 67.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 1,
					"id" : "obj-17",
					"outlettype" : [ "" ],
					"color" : [ 0.7, 0.7, 0.7, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "set location in ticks",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 309.0, 672.0, 119.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 0,
					"id" : "obj-113"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b l",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 142.0, 593.0, 160.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 2,
					"id" : "obj-104",
					"outlettype" : [ "bang", "" ],
					"color" : [ 0.7, 0.7, 0.7, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "1 1 1.",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 142.0, 636.0, 160.0, 18.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 1,
					"id" : "obj-105",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "translate bars.beats.units ticks @mode position",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 142.0, 657.0, 274.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 1,
					"id" : "obj-106",
					"outlettype" : [ "" ],
					"color" : [ 0.7, 0.7, 0.7, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "qlim",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 142.0, 615.0, 39.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 1,
					"id" : "obj-107",
					"outlettype" : [ "" ],
					"color" : [ 0.7, 0.7, 0.7, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "unpack",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 239.0, 134.0, 50.0, 20.0 ],
					"fontsize" : 11.1,
					"numoutlets" : 2,
					"id" : "obj-1",
					"outlettype" : [ "int", "int" ]
				}

			}
, 			{
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
					"numinlets" : 1,
					"patching_rect" : [ 205.0, 101.0, 58.0, 20.0 ],
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
					"numinlets" : 1,
					"minimum" : 1.0,
					"htricolor" : [ 0.333333, 0.870588, 0.239216, 1.0 ],
					"patching_rect" : [ 158.0, 379.0, 50.0, 20.0 ],
					"fontsize" : 11.1,
					"presentation" : 1,
					"numoutlets" : 2,
					"maximum" : 9999.0,
					"tricolor" : [ 0.0, 0.0, 0.0, 0.501961 ],
					"id" : "obj-19",
					"outlettype" : [ "float", "bang" ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.501961 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"cantchange" : 1,
					"fontname" : "Verdana",
					"presentation_rect" : [ 14.0, 2.0, 29.484375, 26.0 ],
					"ignoreclick" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 119.0, 263.0, 29.484375, 26.0 ],
					"fontsize" : 16.0,
					"presentation" : 1,
					"numoutlets" : 2,
					"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.0 ],
					"textcolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"tricolor" : [ 0.317647, 0.709804, 0.321569, 1.0 ],
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
					"numinlets" : 1,
					"shadow" : -1,
					"patching_rect" : [ 319.0, 324.0, 114.0, 31.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"rounded" : 18,
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
					"minimum" : 1,
					"patching_rect" : [ 184.0, 527.0, 31.0, 20.0 ],
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
					"presentation_rect" : [ 22.0, 53.0, 35.0, 20.0 ],
					"ignoreclick" : 1,
					"numinlets" : 1,
					"minimum" : 1,
					"patching_rect" : [ 141.0, 527.0, 31.0, 20.0 ],
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
					"text" : ".",
					"fontname" : "Times New Roman",
					"presentation_rect" : [ 53.0, 37.0, 42.0, 48.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 170.0, 510.0, 68.0, 48.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 0.501961 ],
					"fontsize" : 36.0,
					"presentation" : 1,
					"numoutlets" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 0.501961 ],
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
					"numoutlets" : 3,
					"rounded" : 24.0,
					"id" : "obj-6",
					"outlettype" : [ "", "", "int" ],
					"text" : "restart"
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
					"offcolor" : [ 0.168627, 0.384314, 0.211765, 1.0 ],
					"presentation_rect" : [ 6.0, 1.0, 27.0, 27.0 ],
					"oncolor" : [ 0.0, 1.0, 0.14902, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 141.0, 266.0, 20.0, 20.0 ],
					"presentation" : 1,
					"numoutlets" : 1,
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
					"numinlets" : 1,
					"shadow" : -1,
					"patching_rect" : [ 322.0, 214.0, 114.0, 31.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"rounded" : 18,
					"id" : "obj-22",
					"bgcolor" : [ 0.501961, 0.717647, 0.764706, 1.0 ]
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
, 			{
				"box" : 				{
					"maxclass" : "button",
					"presentation_rect" : [ 27.0, -1.0, 32.0, 32.0 ],
					"fgcolor" : [ 0.082353, 0.082353, 0.082353, 0.517647 ],
					"numinlets" : 1,
					"outlinecolor" : [ 0.713726, 0.713726, 0.713726, 0.0 ],
					"patching_rect" : [ 107.0, 202.0, 20.0, 20.0 ],
					"presentation" : 1,
					"numoutlets" : 1,
					"id" : "obj-30",
					"outlettype" : [ "bang" ],
					"bgcolor" : [ 0.913725, 0.913725, 0.913725, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"presentation_rect" : [ 0.0, 0.0, 108.0, 103.0 ],
					"numinlets" : 1,
					"shadow" : 2,
					"patching_rect" : [ 320.0, 267.0, 116.0, 34.0 ],
					"presentation" : 1,
					"numoutlets" : 0,
					"bordercolor" : [ 0.678431, 0.819608, 0.819608, 1.0 ],
					"angle" : -90.0,
					"id" : "obj-23",
					"bgcolor" : [ 0.376471, 0.494118, 0.576471, 1.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 0,
					"midpoints" : [ 173.5, 332.0, 153.0, 332.0, 153.0, 432.0, 150.5, 432.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-106", 0 ],
					"hidden" : 0,
					"color" : [ 0.756863, 0.329412, 0.843137, 1.0 ],
					"midpoints" : [ 91.5, 153.0, 29.0, 153.0, 29.0, 441.0, 127.0, 441.0, 127.0, 507.0, 127.0, 507.0, 127.0, 654.0, 151.5, 654.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-106", 0 ],
					"destination" : [ "obj-42", 1 ],
					"hidden" : 0,
					"midpoints" : [ 151.5, 690.0, 439.0, 690.0, 439.0, 438.0, 268.0, 431.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-105", 0 ],
					"destination" : [ "obj-106", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-104", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-17", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
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
					"midpoints" : [ 214.5, 125.0, 33.0, 125.0, 33.0, 390.0, 55.5, 390.0 ]
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
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 2 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-104", 0 ],
					"destination" : [ "obj-107", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-107", 0 ],
					"destination" : [ "obj-105", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-104", 1 ],
					"destination" : [ "obj-105", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 1 ],
					"destination" : [ "obj-80", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 0 ],
					"destination" : [ "obj-50", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-50", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-80", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-59", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
