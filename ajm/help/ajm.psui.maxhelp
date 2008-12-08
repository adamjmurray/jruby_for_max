{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 9.0, 44.0, 634.0, 433.0 ],
		"bglocked" : 0,
		"defrect" : [ 9.0, 44.0, 634.0, 433.0 ],
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
					"text" : "p colors",
					"fontname" : "Verdana",
					"numinlets" : 0,
					"patching_rect" : [ 415.0, 111.0, 54.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 0,
					"id" : "obj-80",
					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 277.0, 105.0, 559.0, 395.0 ],
						"bglocked" : 0,
						"defrect" : [ 277.0, 105.0, 559.0, 395.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "queue 1",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 112.0, 268.0, 56.0, 18.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 1,
									"id" : "obj-9",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadbang",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 112.0, 243.0, 61.0, 20.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 1,
									"id" : "obj-7",
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "slider",
									"numinlets" : 1,
									"patching_rect" : [ 19.0, 146.0, 13.0, 37.0 ],
									"numoutlets" : 1,
									"id" : "obj-1",
									"orientation" : 2,
									"outlettype" : [ "" ],
									"size" : 256.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Queue Color (blends to inactive color)",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 208.0, 118.0, 125.0, 33.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-2"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "saturation $1",
									"fontname" : "Verdana",
									"hidden" : 1,
									"numinlets" : 2,
									"patching_rect" : [ 203.0, 128.0, 85.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-3",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "slider",
									"numinlets" : 1,
									"patching_rect" : [ 191.0, 147.0, 13.0, 37.0 ],
									"numoutlets" : 1,
									"id" : "obj-4",
									"orientation" : 2,
									"outlettype" : [ "" ],
									"size" : 256.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "swatch",
									"numinlets" : 3,
									"patching_rect" : [ 203.0, 147.0, 129.0, 37.0 ],
									"compatibility" : 1,
									"numoutlets" : 2,
									"id" : "obj-5",
									"outlettype" : [ "", "float" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend queuergb",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 203.0, 191.0, 110.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-6",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Text Color",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 60.0, 130.0, 112.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-31"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "saturation $1",
									"fontname" : "Verdana",
									"hidden" : 1,
									"numinlets" : 2,
									"patching_rect" : [ 31.0, 127.0, 85.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-32",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "swatch",
									"numinlets" : 3,
									"patching_rect" : [ 31.0, 146.0, 129.0, 37.0 ],
									"compatibility" : 1,
									"numoutlets" : 2,
									"id" : "obj-34",
									"outlettype" : [ "", "float" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend textrgb",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 31.0, 190.0, 98.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-35",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Saving Preset Color (appears momentarily when shift clicking)",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 367.0, 117.0, 191.0, 33.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-37"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Active Preset Color",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 374.0, 26.0, 121.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-38"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Inactive Preset Color",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 207.0, 25.0, 132.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-39"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "saturation $1",
									"fontname" : "Verdana",
									"hidden" : 1,
									"numinlets" : 2,
									"patching_rect" : [ 369.0, 128.0, 85.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-47",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "slider",
									"numinlets" : 1,
									"patching_rect" : [ 357.0, 147.0, 13.0, 37.0 ],
									"numoutlets" : 1,
									"id" : "obj-48",
									"orientation" : 2,
									"outlettype" : [ "" ],
									"size" : 256.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "swatch",
									"numinlets" : 3,
									"patching_rect" : [ 369.0, 147.0, 129.0, 37.0 ],
									"compatibility" : 1,
									"numoutlets" : 2,
									"id" : "obj-49",
									"outlettype" : [ "", "float" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend storergb",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 369.0, 190.0, 104.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-50",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "saturation $1",
									"fontname" : "Verdana",
									"hidden" : 1,
									"numinlets" : 2,
									"patching_rect" : [ 370.0, 23.0, 85.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-52",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "slider",
									"numinlets" : 1,
									"patching_rect" : [ 358.0, 42.0, 13.0, 37.0 ],
									"numoutlets" : 1,
									"id" : "obj-53",
									"orientation" : 2,
									"outlettype" : [ "" ],
									"size" : 256.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "swatch",
									"numinlets" : 3,
									"patching_rect" : [ 370.0, 42.0, 129.0, 37.0 ],
									"compatibility" : 1,
									"numoutlets" : 2,
									"id" : "obj-54",
									"outlettype" : [ "", "float" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "saturation $1",
									"fontname" : "Verdana",
									"hidden" : 1,
									"numinlets" : 2,
									"patching_rect" : [ 206.0, 22.0, 85.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-55",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "slider",
									"numinlets" : 1,
									"patching_rect" : [ 194.0, 42.0, 13.0, 37.0 ],
									"numoutlets" : 1,
									"id" : "obj-56",
									"orientation" : 2,
									"outlettype" : [ "" ],
									"size" : 256.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "swatch",
									"numinlets" : 3,
									"patching_rect" : [ 206.0, 42.0, 129.0, 37.0 ],
									"compatibility" : 1,
									"numoutlets" : 2,
									"id" : "obj-57",
									"outlettype" : [ "", "float" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "saturation $1",
									"fontname" : "Verdana",
									"hidden" : 1,
									"numinlets" : 2,
									"patching_rect" : [ 35.0, 23.0, 85.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-58",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "slider",
									"numinlets" : 1,
									"patching_rect" : [ 23.0, 43.0, 13.0, 37.0 ],
									"numoutlets" : 1,
									"id" : "obj-59",
									"orientation" : 2,
									"outlettype" : [ "" ],
									"size" : 256.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend onrgb",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 370.0, 85.0, 90.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-60",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend offrgb",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 206.0, 83.0, 91.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-61",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend brgb",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 35.0, 84.0, 83.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-62",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "swatch",
									"numinlets" : 3,
									"patching_rect" : [ 35.0, 43.0, 129.0, 37.0 ],
									"compatibility" : 1,
									"numoutlets" : 2,
									"id" : "obj-63",
									"outlettype" : [ "", "float" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "jsui",
									"jsarguments" : [  ],
									"numinlets" : 1,
									"patching_rect" : [ 193.0, 240.0, 142.0, 142.0 ],
									"numoutlets" : 4,
									"filename" : "ajm.psui.js",
									"id" : "obj-64",
									"outlettype" : [ "", "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Background Color",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 50.0, 25.0, 121.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-65"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-64", 0 ],
									"hidden" : 0,
									"midpoints" : [ 121.5, 289.0, 180.0, 289.0, 180.0, 233.0, 202.5, 233.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-32", 0 ],
									"hidden" : 1,
									"midpoints" : [ 26.0, 185.0, 15.0, 185.0, 15.0, 122.0, 40.5, 122.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-64", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-64", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-50", 0 ],
									"destination" : [ "obj-64", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-60", 0 ],
									"destination" : [ "obj-64", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-61", 0 ],
									"destination" : [ "obj-64", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-62", 0 ],
									"destination" : [ "obj-64", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-34", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 0 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 1,
									"midpoints" : [ 198.0, 187.0, 185.0, 187.0, 185.0, 123.0, 212.5, 123.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-59", 0 ],
									"destination" : [ "obj-58", 0 ],
									"hidden" : 1,
									"midpoints" : [ 30.0, 86.0, 18.0, 86.0, 18.0, 19.0, 44.5, 19.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-58", 0 ],
									"destination" : [ "obj-63", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-63", 0 ],
									"destination" : [ "obj-62", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-48", 0 ],
									"destination" : [ "obj-47", 0 ],
									"hidden" : 1,
									"midpoints" : [ 364.0, 190.0, 351.0, 190.0, 351.0, 123.0, 378.5, 123.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-47", 0 ],
									"destination" : [ "obj-49", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-49", 0 ],
									"destination" : [ "obj-50", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-56", 0 ],
									"destination" : [ "obj-55", 0 ],
									"hidden" : 1,
									"midpoints" : [ 201.0, 84.0, 189.0, 84.0, 189.0, 18.0, 215.5, 18.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-55", 0 ],
									"destination" : [ "obj-57", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-57", 0 ],
									"destination" : [ "obj-61", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-53", 0 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 1,
									"midpoints" : [ 365.0, 85.0, 352.0, 85.0, 352.0, 18.0, 379.5, 18.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-52", 0 ],
									"destination" : [ "obj-54", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-54", 0 ],
									"destination" : [ "obj-60", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontsize" : 11.1,
						"fontname" : "Verdana",
						"fontface" : 0,
						"fontsize" : 11.1,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"lockeddragscroll" : 1,
					"numinlets" : 1,
					"args" : [ "pattrstorage", "pattr", "preset", "jsui" ],
					"patching_rect" : [ 480.0, 371.0, 145.0, 55.0 ],
					"numoutlets" : 0,
					"id" : "obj-78",
					"name" : "ajm.seealso.maxpat"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "thispatcher",
					"fontname" : "Verdana",
					"hidden" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 297.0, 406.0, 72.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 2,
					"id" : "obj-75",
					"outlettype" : [ "", "" ],
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "ajm.bring-to-front-listener ajm.psui",
					"fontname" : "Verdana",
					"hidden" : 1,
					"numinlets" : 0,
					"patching_rect" : [ 297.0, 380.0, 209.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 1,
					"id" : "obj-76",
					"outlettype" : [ "front" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess set",
					"fontname" : "Verdana",
					"hidden" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 237.0, 266.0, 81.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 1,
					"id" : "obj-1",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 214.0, 300.0, 120.0, 18.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 1,
					"id" : "obj-7",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "decoupling-example",
					"text" : "p \"decoupling the queuing system\"",
					"fontname" : "Verdana",
					"numinlets" : 0,
					"patching_rect" : [ 415.0, 138.0, 204.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 0,
					"id" : "obj-9",
					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 258.0, 111.0, 476.0, 384.0 ],
						"bglocked" : 0,
						"defrect" : [ 258.0, 111.0, 476.0, 384.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadbang",
									"fontname" : "Verdana",
									"hidden" : 1,
									"numinlets" : 1,
									"patching_rect" : [ 100.0, 51.0, 66.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-1",
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "setq",
									"fontname" : "Verdana",
									"hidden" : 1,
									"numinlets" : 2,
									"patching_rect" : [ 129.0, 314.0, 34.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-2",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set",
									"fontname" : "Verdana",
									"hidden" : 1,
									"numinlets" : 1,
									"patching_rect" : [ 130.0, 206.0, 74.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-3",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numinlets" : 1,
									"patching_rect" : [ 345.0, 114.0, 23.0, 23.0 ],
									"numoutlets" : 1,
									"id" : "obj-4",
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "metro 1000",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 345.0, 142.0, 76.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-5",
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numinlets" : 1,
									"patching_rect" : [ 294.0, 116.0, 36.0, 36.0 ],
									"numoutlets" : 1,
									"id" : "obj-6",
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "subpatch",
									"text" : "p subpatch",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 294.0, 185.0, 69.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-7",
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 461.0, 97.0, 529.0, 371.0 ],
										"bglocked" : 0,
										"defrect" : [ 461.0, 97.0, 529.0, 371.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"patching_rect" : [ 26.0, 85.0, 23.0, 23.0 ],
													"numoutlets" : 1,
													"id" : "obj-5",
													"outlettype" : [ "bang" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "zlclear",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"patching_rect" : [ 54.0, 91.0, 49.0, 18.0 ],
													"fontsize" : 11.0,
													"numoutlets" : 1,
													"id" : "obj-6",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route \" \"",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"patching_rect" : [ 54.0, 67.0, 60.0, 20.0 ],
													"fontsize" : 11.0,
													"numoutlets" : 2,
													"id" : "obj-7",
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"varname" : "presetqueue",
													"text" : "pattr presetqueue @autorestore 0 @default_active 0",
													"linecount" : 2,
													"fontname" : "Verdana",
													"numinlets" : 1,
													"patching_rect" : [ 54.0, 30.0, 203.0, 33.0 ],
													"fontsize" : 11.0,
													"numoutlets" : 3,
													"id" : "obj-8",
													"outlettype" : [ "", "", "" ],
													"restore" : [ " " ],
													"saved_object_attributes" : 													{

													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "if $i1 <= 1 then \" \"",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"patching_rect" : [ 61.0, 170.0, 115.0, 20.0 ],
													"fontsize" : 11.0,
													"numoutlets" : 1,
													"id" : "obj-9",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl len",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"patching_rect" : [ 61.0, 148.0, 41.0, 20.0 ],
													"fontsize" : 11.0,
													"numoutlets" : 2,
													"id" : "obj-10",
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl reg",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"patching_rect" : [ 50.0, 120.0, 42.0, 20.0 ],
													"fontsize" : 11.0,
													"numoutlets" : 2,
													"id" : "obj-11",
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl slice 1",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"patching_rect" : [ 50.0, 202.0, 61.0, 20.0 ],
													"fontsize" : 11.0,
													"numoutlets" : 2,
													"id" : "obj-12",
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route recall",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"patching_rect" : [ 50.0, 306.0, 75.0, 20.0 ],
													"fontsize" : 11.0,
													"numoutlets" : 2,
													"id" : "obj-13",
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"varname" : "preset",
													"text" : "pattr preset @autorestore 0 @default_active 0",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"patching_rect" : [ 50.0, 241.0, 269.0, 20.0 ],
													"fontsize" : 11.0,
													"numoutlets" : 3,
													"id" : "obj-14",
													"outlettype" : [ "", "", "" ],
													"restore" : [ 1 ],
													"saved_object_attributes" : 													{

													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"varname" : "storage[1]",
													"text" : "pattrstorage @name storage @autorestore 0 @savemode 0 @dirty 0",
													"linecount" : 2,
													"fontname" : "Verdana",
													"numinlets" : 1,
													"patching_rect" : [ 50.0, 268.0, 227.0, 33.0 ],
													"fontsize" : 11.0,
													"numoutlets" : 1,
													"id" : "obj-15",
													"outlettype" : [ "" ],
													"save2" : [ "#X", "active", "preset", 0, ";", "#X", "active", "presetqueue", 0, ";" ],
													"saved_object_attributes" : 													{
														"storage_rect" : [ 0, 0, 640, 240 ],
														"client_rect" : [ 21, 63, 661, 303 ]
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "These pattrs (presetqueue and preset) are only for communication purposes and shouldn't be recalled by the pattrstorage. That's why they use @default_active 0",
													"linecount" : 4,
													"fontname" : "Verdana",
													"numinlets" : 1,
													"patching_rect" : [ 276.0, 33.0, 243.0, 60.0 ],
													"fontsize" : 11.0,
													"numoutlets" : 0,
													"id" : "obj-16"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "pattr needs to store something, so \" \" is used to represent nothing",
													"linecount" : 4,
													"fontname" : "Verdana",
													"numinlets" : 1,
													"patching_rect" : [ 115.0, 68.0, 144.0, 60.0 ],
													"fontsize" : 11.0,
													"numoutlets" : 0,
													"id" : "obj-17"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [ 59.5, 329.0, 44.0, 329.0, 44.0, 234.0, 59.5, 234.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [ 70.5, 194.0, 259.0, 194.0, 259.0, 24.0, 63.5, 24.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 1 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [ 101.5, 225.0, 259.0, 225.0, 259.0, 24.0, 63.5, 24.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 1 ],
													"destination" : [ "obj-11", 1 ],
													"hidden" : 0,
													"midpoints" : [ 104.5, 114.0, 82.5, 114.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-11", 1 ],
													"hidden" : 0,
													"midpoints" : [ 63.5, 114.0, 82.5, 114.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [ 35.5, 114.0, 59.5, 114.0 ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontsize" : 11.1,
										"fontname" : "Verdana",
										"fontface" : 0,
										"fontsize" : 11.1,
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"globalpatchername" : ""
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route \" \"",
									"fontname" : "Verdana",
									"hidden" : 1,
									"numinlets" : 1,
									"patching_rect" : [ 129.0, 279.0, 60.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 2,
									"id" : "obj-8",
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend setq",
									"fontname" : "Verdana",
									"hidden" : 1,
									"numinlets" : 1,
									"patching_rect" : [ 170.0, 314.0, 81.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-9",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "u960001648",
									"text" : "pattr @bindto subpatch::presetqueue",
									"linecount" : 2,
									"fontname" : "Verdana",
									"hidden" : 1,
									"numinlets" : 1,
									"patching_rect" : [ 129.0, 237.0, 137.0, 33.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 3,
									"id" : "obj-10",
									"outlettype" : [ "", "", "" ],
									"restore" : [ " " ],
									"saved_object_attributes" : 									{

									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route store",
									"fontname" : "Verdana",
									"hidden" : 1,
									"numinlets" : 1,
									"patching_rect" : [ 15.0, 272.0, 74.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 2,
									"id" : "obj-11",
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set",
									"fontname" : "Verdana",
									"hidden" : 1,
									"numinlets" : 1,
									"patching_rect" : [ 15.0, 302.0, 74.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-12",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "queue $1",
									"fontname" : "Verdana",
									"hidden" : 1,
									"numinlets" : 2,
									"patching_rect" : [ 122.0, 83.0, 60.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-13",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numinlets" : 1,
									"patching_rect" : [ 100.0, 82.0, 18.0, 18.0 ],
									"numoutlets" : 1,
									"id" : "obj-14",
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "store $1",
									"fontname" : "Verdana",
									"hidden" : 1,
									"numinlets" : 2,
									"patching_rect" : [ 28.0, 208.0, 58.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-15",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "u439001650",
									"text" : "pattr @bindto subpatch::preset",
									"linecount" : 2,
									"fontname" : "Verdana",
									"hidden" : 1,
									"numinlets" : 1,
									"patching_rect" : [ 15.0, 235.0, 107.0, 33.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 3,
									"id" : "obj-16",
									"outlettype" : [ "", "", "" ],
									"restore" : [ 1 ],
									"saved_object_attributes" : 									{

									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Queued Recall:",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 13.0, 83.0, 92.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-17"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "jsui",
									"jsarguments" : [  ],
									"numinlets" : 1,
									"patching_rect" : [ 15.0, 101.0, 100.0, 100.0 ],
									"numoutlets" : 4,
									"filename" : "ajm.psui.js",
									"id" : "obj-18",
									"outlettype" : [ "", "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Sometimes you will want the queueing system to be controlled elsewhere in your patch, instead of banging the psui object. Here's one way to do it.",
									"linecount" : 3,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 10.0, 8.0, 336.0, 50.0 ],
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"id" : "obj-19"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Elsewhere in the patch, a bang comes in to advance the queue:",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 279.0, 78.0, 194.0, 33.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-20"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Change the pattr bindto paths as needed for your patch.",
									"linecount" : 3,
									"fontname" : "Verdana",
									"hidden" : 1,
									"numinlets" : 1,
									"patching_rect" : [ 274.0, 253.0, 164.0, 47.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-21"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "A space means no queue",
									"linecount" : 3,
									"fontname" : "Verdana",
									"hidden" : 1,
									"numinlets" : 1,
									"patching_rect" : [ 190.0, 270.0, 60.0, 47.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-22"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "unlock the patch",
									"linecount" : 3,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 140.0, 147.0, 54.0, 47.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-23"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 1 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 3 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 2 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 1,
									"midpoints" : [ 139.5, 230.0, 207.0, 230.0, 207.0, 76.0, 109.5, 76.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 1 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 1 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 1,
									"midpoints" : [ 79.5, 294.0, 24.5, 294.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 1,
									"midpoints" : [ 37.5, 228.0, 24.5, 228.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 1,
									"midpoints" : [ 138.5, 339.0, 7.0, 339.0, 7.0, 90.0, 24.5, 90.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 1,
									"midpoints" : [ 179.5, 339.0, 7.0, 339.0, 7.0, 90.0, 24.5, 90.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 1,
									"midpoints" : [ 24.5, 327.0, 7.0, 327.0, 7.0, 90.0, 24.5, 90.0 ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontsize" : 11.1,
						"fontname" : "Verdana",
						"fontface" : 0,
						"fontsize" : 11.1,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p \"rows & columns\"",
					"fontname" : "Verdana",
					"numinlets" : 0,
					"patching_rect" : [ 415.0, 84.0, 119.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 0,
					"id" : "obj-10",
					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 277.0, 105.0, 523.0, 366.0 ],
						"bglocked" : 0,
						"defrect" : [ 277.0, 105.0, 523.0, 366.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "cols $1",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 371.0, 112.0, 52.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-1",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"fontname" : "Verdana",
									"triscale" : 0.9,
									"numinlets" : 1,
									"patching_rect" : [ 371.0, 87.0, 37.0, 20.0 ],
									"minimum" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 2,
									"maximum" : 8,
									"id" : "obj-2",
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"outlettype" : [ "int", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"fontname" : "Verdana",
									"triscale" : 0.9,
									"numinlets" : 1,
									"patching_rect" : [ 310.0, 87.0, 37.0, 20.0 ],
									"minimum" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 2,
									"maximum" : 8,
									"id" : "obj-3",
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"outlettype" : [ "int", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "jsui",
									"jsarguments" : [  ],
									"numinlets" : 1,
									"patching_rect" : [ 310.0, 146.0, 193.0, 197.0 ],
									"numoutlets" : 4,
									"filename" : "ajm.psui.js",
									"id" : "obj-4",
									"outlettype" : [ "", "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "rows $1",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 310.0, 112.0, 57.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-5",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "jsui",
									"jsarguments" : [ 6, 5 ],
									"numinlets" : 1,
									"patching_rect" : [ 51.0, 102.0, 197.0, 201.0 ],
									"numoutlets" : 4,
									"filename" : "ajm.psui.js",
									"id" : "obj-6",
									"outlettype" : [ "", "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "ajm.psui accepts two optional arguments: number of columns and number of rows",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 12.0, 15.0, 267.0, 36.0 ],
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"id" : "obj-7"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Or change the number of rows and columns with messages:",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 310.0, 51.0, 189.0, 33.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-8"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "this has arguments: 6 5",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 67.0, 80.0, 167.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-9"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [ 380.5, 135.0, 319.5, 135.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontsize" : 11.1,
						"fontname" : "Verdana",
						"fontface" : 0,
						"fontsize" : 11.1,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"lockeddragscroll" : 1,
					"numinlets" : 0,
					"args" : [  ],
					"patching_rect" : [ 484.0, 9.0, 139.0, 54.0 ],
					"numoutlets" : 0,
					"id" : "obj-11",
					"name" : "ajm.helplinks.maxpat"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "recall 6",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 51.0, 136.0, 53.0, 18.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 1,
					"id" : "obj-12",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "store 9",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 32.0, 162.0, 51.0, 18.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 1,
					"id" : "obj-13",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "5",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 30.0, 137.0, 18.0, 18.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 1,
					"id" : "obj-20",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "delay 500",
					"fontname" : "Verdana",
					"hidden" : 1,
					"numinlets" : 2,
					"patching_rect" : [ 328.0, 251.0, 65.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 1,
					"id" : "obj-21",
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"fontname" : "Verdana",
					"hidden" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 328.0, 227.0, 59.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 1,
					"id" : "obj-22",
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Click a number to recall a preset. Shift+click to store a preset.",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 209.0, 228.0, 196.0, 33.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 0,
					"id" : "obj-23"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t i i",
					"fontname" : "Verdana",
					"hidden" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 356.0, 300.0, 32.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 2,
					"id" : "obj-24",
					"outlettype" : [ "int", "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "uzi 16",
					"fontname" : "Verdana",
					"hidden" : 1,
					"numinlets" : 2,
					"patching_rect" : [ 328.0, 274.0, 47.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 3,
					"id" : "obj-25",
					"outlettype" : [ "bang", "bang", "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "number",
					"text" : "pattr number @bindto thenumber @autorestore 0",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 30.0, 92.0, 285.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 3,
					"id" : "obj-26",
					"outlettype" : [ "", "", "" ],
					"restore" : [ 16 ],
					"saved_object_attributes" : 					{

					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "thenumber",
					"fontname" : "Verdana",
					"triscale" : 0.9,
					"numinlets" : 1,
					"patching_rect" : [ 103.0, 70.0, 38.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 2,
					"id" : "obj-27",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"outlettype" : [ "int", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Recalled",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 51.0, 318.0, 57.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 0,
					"id" : "obj-28"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Stored",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 157.0, 319.0, 48.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 0,
					"id" : "obj-29"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend store",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 134.0, 351.0, 86.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 1,
					"id" : "obj-30",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "psui-help[1]",
					"text" : "pattrstorage @name psui-help @savemode 0 @dirty 0",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 107.0, 378.0, 182.0, 33.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 1,
					"id" : "obj-36",
					"outlettype" : [ "" ],
					"saved_object_attributes" : 					{
						"storage_rect" : [ 0, 0, 640, 240 ],
						"client_rect" : [ 21, 63, 661, 303 ]
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "pattrstorage preset management UI with queued recall",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 103.0, 23.0, 344.0, 21.0 ],
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"id" : "obj-40"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "ajm.psui",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 14.0, 13.0, 102.0, 27.0 ],
					"fontsize" : 18.0,
					"numoutlets" : 0,
					"id" : "obj-41"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "JSUI",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 33.0, 37.0, 67.0, 17.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"id" : "obj-42"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "queue $1",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 161.0, 160.0, 60.0, 18.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 1,
					"id" : "obj-43",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numinlets" : 1,
					"patching_rect" : [ 161.0, 136.0, 20.0, 20.0 ],
					"numoutlets" : 1,
					"id" : "obj-44",
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numinlets" : 1,
					"patching_rect" : [ 107.0, 145.0, 32.0, 32.0 ],
					"numoutlets" : 1,
					"id" : "obj-45",
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"fontname" : "Verdana",
					"triscale" : 0.9,
					"numinlets" : 1,
					"patching_rect" : [ 160.0, 300.0, 37.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 2,
					"id" : "obj-46",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"outlettype" : [ "int", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"fontname" : "Verdana",
					"triscale" : 0.9,
					"numinlets" : 1,
					"patching_rect" : [ 54.0, 302.0, 37.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 2,
					"id" : "obj-51",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"outlettype" : [ "int", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jsui",
					"jsarguments" : [  ],
					"numinlets" : 1,
					"patching_rect" : [ 107.0, 189.0, 100.0, 100.0 ],
					"numoutlets" : 4,
					"filename" : "ajm.psui.js",
					"id" : "obj-64",
					"outlettype" : [ "", "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "thenumber:",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 31.0, 72.0, 74.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 0,
					"id" : "obj-66"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "When the queue is turned on, recalls will not occur until a bang is recieved. Multiple recalls can be queued up.",
					"linecount" : 4,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 222.0, 128.0, 178.0, 60.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 0,
					"id" : "obj-69"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "This object is based on a jsui example from the Max tutorials",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 432.0, 284.0, 199.0, 33.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 0,
					"id" : "obj-71"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "the queue",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 251.0, 314.0, 64.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 0,
					"id" : "obj-73"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"grad1" : [ 0.823529, 1.0, 0.956863, 1.0 ],
					"grad2" : [ 0.219608, 0.564706, 0.462745, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 12.0, 11.0, 442.0, 46.0 ],
					"mode" : 1,
					"rounded" : 12,
					"numoutlets" : 0,
					"id" : "obj-74",
					"angle" : 270.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"grad1" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"grad2" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 11.0, 10.0, 445.0, 50.0 ],
					"mode" : 1,
					"rounded" : 16,
					"numoutlets" : 0,
					"id" : "obj-77",
					"angle" : 270.0
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-64", 2 ],
					"destination" : [ "obj-7", 1 ],
					"hidden" : 0,
					"midpoints" : [ 170.5, 292.0, 324.5, 292.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-64", 0 ],
					"destination" : [ "obj-51", 0 ],
					"hidden" : 0,
					"midpoints" : [ 116.5, 298.0, 63.5, 298.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 2 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-64", 1 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 0,
					"midpoints" : [ 143.5, 297.0, 169.5, 297.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 1,
					"midpoints" : [ 365.5, 348.0, 143.5, 348.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-64", 1 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [ 143.5, 373.0, 116.5, 373.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-64", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 0 ],
					"destination" : [ "obj-64", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-64", 0 ],
					"hidden" : 0,
					"midpoints" : [ 170.5, 183.0, 116.5, 183.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-64", 0 ],
					"hidden" : 0,
					"midpoints" : [ 41.5, 183.0, 116.5, 183.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-64", 0 ],
					"hidden" : 0,
					"midpoints" : [ 39.5, 158.0, 88.0, 158.0, 88.0, 183.0, 116.5, 183.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-64", 0 ],
					"hidden" : 0,
					"midpoints" : [ 60.5, 158.0, 88.0, 158.0, 88.0, 183.0, 116.5, 183.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 1 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 1,
					"midpoints" : [ 378.5, 323.0, 397.0, 323.0, 397.0, 66.0, 112.5, 66.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-76", 0 ],
					"destination" : [ "obj-75", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
