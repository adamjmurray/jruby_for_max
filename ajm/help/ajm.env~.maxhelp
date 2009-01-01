{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 35.0, 52.0, 641.0, 495.0 ],
		"bglocked" : 0,
		"defrect" : [ 35.0, 52.0, 641.0, 495.0 ],
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
					"varname" : "env UI[2]",
					"text" : "p \"poly~ and presets\"",
					"fontname" : "Verdana",
					"patching_rect" : [ 469.0, 262.0, 132.0, 20.0 ],
					"numinlets" : 0,
					"numoutlets" : 0,
					"fontsize" : 11.0,
					"id" : "obj-25",
					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 203.0, 56.0, 611.0, 446.0 ],
						"bglocked" : 0,
						"defrect" : [ 203.0, 56.0, 611.0, 446.0 ],
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
									"maxclass" : "gain~",
									"patching_rect" : [ 77.0, 299.0, 31.0, 65.0 ],
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "int" ],
									"id" : "obj-8"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "1",
									"fontname" : "Verdana",
									"patching_rect" : [ 450.0, 155.0, 32.5, 18.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"hidden" : 1,
									"fontsize" : 11.1,
									"outlettype" : [ "" ],
									"id" : "obj-12"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "onebang 1",
									"fontname" : "Verdana",
									"patching_rect" : [ 450.0, 131.0, 69.0, 20.0 ],
									"numinlets" : 2,
									"numoutlets" : 2,
									"hidden" : 1,
									"fontsize" : 11.1,
									"outlettype" : [ "bang", "bang" ],
									"id" : "obj-18"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend store",
									"fontname" : "Verdana",
									"patching_rect" : [ 351.0, 72.0, 88.0, 20.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontsize" : 11.1,
									"outlettype" : [ "" ],
									"id" : "obj-19"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "preset",
									"patching_rect" : [ 330.0, 27.0, 40.0, 41.0 ],
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "preset", "int", "preset", "int" ],
									"id" : "obj-16",
									"preset_data" : [ 										{
											"number" : 1,
											"data" : [ 5, "<invalid>", "number", "int", 0 ]
										}
, 										{
											"number" : 2,
											"data" : [ 5, "<invalid>", "number", "int", 0 ]
										}
, 										{
											"number" : 3,
											"data" : [ 5, "<invalid>", "number", "int", 0 ]
										}
, 										{
											"number" : 4,
											"data" : [ 5, "<invalid>", "number", "int", 0 ]
										}
, 										{
											"number" : 5,
											"data" : [ 5, "<invalid>", "number", "int", 0 ]
										}
, 										{
											"number" : 6,
											"data" : [ 5, "<invalid>", "number", "int", 0 ]
										}
, 										{
											"number" : 7,
											"data" : [ 5, "<invalid>", "number", "int", 0 ]
										}
, 										{
											"number" : 8,
											"data" : [ 5, "<invalid>", "number", "int", 0 ]
										}
, 										{
											"number" : 9,
											"data" : [ 5, "<invalid>", "number", "int", 0 ]
										}
 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "ajm_env_presets",
									"text" : "pattrstorage ajm_env_presets @savemode 0",
									"fontname" : "Verdana",
									"patching_rect" : [ 337.0, 102.0, 262.0, 20.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontsize" : 11.1,
									"outlettype" : [ "" ],
									"id" : "obj-15",
									"save2" : [ "#X", "autorestore", "ajm_env_presets.xml", ";" ],
									"saved_object_attributes" : 									{
										"client_rect" : [ 4, 44, 358, 172 ],
										"storage_rect" : [ 365, 44, 816, 172 ]
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"patching_rect" : [ 126.0, 293.0, 114.0, 21.0 ],
									"numinlets" : 2,
									"name" : "ajm.busymap.maxpat",
									"numoutlets" : 1,
									"args" : [ "@width", 100 ],
									"outlettype" : [ "" ],
									"id" : "obj-23",
									"lockeddragscroll" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "target 0",
									"fontname" : "Verdana",
									"patching_rect" : [ 205.0, 191.0, 55.0, 18.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 11.1,
									"outlettype" : [ "" ],
									"id" : "obj-14"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t l b",
									"fontname" : "Verdana",
									"patching_rect" : [ 191.0, 164.0, 33.0, 20.0 ],
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 11.1,
									"outlettype" : [ "", "bang" ],
									"id" : "obj-11"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Connect to thispoly~ to mute the voice when the envelope is not active",
									"linecount" : 4,
									"fontname" : "Verdana",
									"patching_rect" : [ 385.0, 238.0, 130.0, 60.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 11.0,
									"id" : "obj-2"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "thispoly~",
									"fontname" : "Verdana",
									"patching_rect" : [ 367.0, 295.0, 61.0, 20.0 ],
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 11.0,
									"outlettype" : [ "int", "int" ],
									"id" : "obj-3"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ajm.env~",
									"fontname" : "Verdana",
									"patching_rect" : [ 299.0, 267.0, 87.0, 20.0 ],
									"numinlets" : 5,
									"numoutlets" : 3,
									"fontsize" : 11.0,
									"outlettype" : [ "signal", "int", "" ],
									"id" : "obj-4",
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend midinote",
									"fontname" : "Verdana",
									"patching_rect" : [ 78.0, 234.0, 109.0, 20.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontsize" : 11.1,
									"outlettype" : [ "" ],
									"id" : "obj-17"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pack",
									"fontname" : "Verdana",
									"patching_rect" : [ 78.0, 210.0, 36.0, 20.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 11.1,
									"outlettype" : [ "" ],
									"id" : "obj-10"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "notein",
									"fontname" : "Verdana",
									"patching_rect" : [ 78.0, 180.0, 53.0, 20.0 ],
									"numinlets" : 1,
									"numoutlets" : 3,
									"fontsize" : 11.0,
									"outlettype" : [ "int", "int", "int" ],
									"id" : "obj-9"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ezdac~",
									"offgradcolor1" : [ 0.368627, 0.364706, 0.341176, 1.0 ],
									"ongradcolor1" : [ 0.772549, 1.0, 0.807843, 1.0 ],
									"patching_rect" : [ 68.0, 376.0, 44.0, 44.0 ],
									"numinlets" : 2,
									"ongradcolor2" : [ 0.0, 0.607843, 0.121569, 1.0 ],
									"offgradcolor2" : [ 0.0, 0.0, 0.0, 1.0 ],
									"numoutlets" : 0,
									"bgcolor" : [ 0.52549, 0.52549, 0.52549, 1.0 ],
									"id" : "obj-53"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"varname" : "autohelp_dac_text",
									"text" : "start audio",
									"linecount" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 27.0, 382.0, 38.0, 33.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 11.595187,
									"id" : "obj-55"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"varname" : "startwinwdow_panel",
									"patching_rect" : [ 20.0, 371.0, 100.0, 55.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"bordercolor" : [ 0.392157, 0.792157, 0.117647, 1.0 ],
									"border" : 2,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"id" : "obj-56"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend sustain",
									"fontname" : "Verdana",
									"patching_rect" : [ 292.0, 135.0, 100.0, 20.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontsize" : 11.1,
									"outlettype" : [ "" ],
									"id" : "obj-7"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend release",
									"fontname" : "Verdana",
									"patching_rect" : [ 191.0, 135.0, 100.0, 20.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontsize" : 11.1,
									"outlettype" : [ "" ],
									"id" : "obj-6"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend attack",
									"fontname" : "Verdana",
									"patching_rect" : [ 90.0, 135.0, 95.0, 20.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"fontsize" : 11.1,
									"outlettype" : [ "" ],
									"id" : "obj-5"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "envelope",
									"patching_rect" : [ 90.0, 28.0, 221.0, 102.0 ],
									"numinlets" : 0,
									"name" : "ajm.envui.maxpat",
									"numoutlets" : 3,
									"args" : [  ],
									"outlettype" : [ "", "", "" ],
									"id" : "obj-13",
									"lockeddragscroll" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "poly~ ajm.env-polysaw 8",
									"fontname" : "Verdana",
									"patching_rect" : [ 78.0, 271.0, 153.0, 20.0 ],
									"numinlets" : 1,
									"numoutlets" : 2,
									"fontsize" : 11.1,
									"outlettype" : [ "signal", "" ],
									"id" : "obj-1"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-53", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-53", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 3 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 1,
									"midpoints" : [ 459.5, 177.0, 604.0, 177.0, 604.0, 20.0, 339.5, 20.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 1 ],
									"destination" : [ "obj-10", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 2 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 1 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 2 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 1 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [ 99.5, 159.0, 200.5, 159.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [ 301.5, 159.0, 200.5, 159.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [ 214.5, 265.0, 87.5, 265.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [ 200.5, 265.0, 87.5, 265.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 1 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 2 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 1,
									"midpoints" : [ 346.5, 127.0, 459.5, 127.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [ 360.5, 97.0, 347.0, 97.0, 347.0, 98.0, 346.5, 98.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 1,
									"midpoints" : [ 459.5, 177.0, 604.0, 177.0, 604.0, 96.0, 346.5, 96.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 1 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"globalpatchername" : "",
						"fontname" : "Verdana",
						"default_fontface" : 0,
						"fontface" : 0,
						"fontsize" : 11.1,
						"default_fontname" : "Verdana",
						"default_fontsize" : 11.1
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "env UI[1]",
					"text" : "p \"sync to transport\"",
					"fontname" : "Verdana",
					"patching_rect" : [ 469.0, 292.0, 126.0, 20.0 ],
					"numinlets" : 0,
					"numoutlets" : 0,
					"fontsize" : 11.0,
					"id" : "obj-6",
					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 478.0, 121.0, 457.0, 281.0 ],
						"bglocked" : 0,
						"defrect" : [ 478.0, 121.0, 457.0, 281.0 ],
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
									"maxclass" : "comment",
									"text" : "try changing the tempo of this transport and triggering the note again",
									"linecount" : 3,
									"fontname" : "Verdana",
									"patching_rect" : [ 304.0, 101.0, 149.0, 47.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 11.1,
									"id" : "obj-22"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadbang",
									"fontname" : "Verdana",
									"patching_rect" : [ 343.0, 5.0, 61.0, 20.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"hidden" : 1,
									"fontsize" : 11.1,
									"outlettype" : [ "bang" ],
									"id" : "obj-20"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0 4n",
									"fontname" : "Verdana",
									"patching_rect" : [ 226.0, 67.0, 36.0, 18.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 11.1,
									"outlettype" : [ "" ],
									"id" : "obj-5"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0 0 1 4n 0.5 8n 1 8n",
									"fontname" : "Verdana",
									"patching_rect" : [ 177.0, 37.0, 126.0, 18.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 11.1,
									"outlettype" : [ "" ],
									"id" : "obj-4"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"patching_rect" : [ 321.0, 150.0, 113.0, 107.0 ],
									"numinlets" : 1,
									"name" : "ajm.help-transport.maxpat",
									"numoutlets" : 0,
									"args" : [ "@transport", "ajm_env_help" ],
									"id" : "obj-17"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "gain~",
									"patching_rect" : [ 80.0, 140.0, 31.0, 65.0 ],
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "int" ],
									"id" : "obj-26"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ezdac~",
									"offgradcolor1" : [ 0.368627, 0.364706, 0.341176, 1.0 ],
									"ongradcolor1" : [ 0.772549, 1.0, 0.807843, 1.0 ],
									"patching_rect" : [ 72.0, 217.0, 44.0, 44.0 ],
									"numinlets" : 2,
									"ongradcolor2" : [ 0.0, 0.607843, 0.121569, 1.0 ],
									"offgradcolor2" : [ 0.0, 0.0, 0.0, 1.0 ],
									"numoutlets" : 0,
									"bgcolor" : [ 0.52549, 0.52549, 0.52549, 1.0 ],
									"id" : "obj-53"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"varname" : "autohelp_dac_text",
									"text" : "start audio",
									"linecount" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 31.0, 223.0, 38.0, 33.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 11.595187,
									"id" : "obj-55"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"varname" : "startwinwdow_panel",
									"patching_rect" : [ 24.0, 212.0, 100.0, 55.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"bordercolor" : [ 0.392157, 0.792157, 0.117647, 1.0 ],
									"border" : 2,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"id" : "obj-56"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "1",
									"fontname" : "Verdana",
									"patching_rect" : [ 129.0, 20.0, 24.0, 26.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 18.0,
									"outlettype" : [ "" ],
									"id" : "obj-8"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "noteon",
									"fontname" : "Verdana",
									"patching_rect" : [ 119.0, 2.0, 50.0, 20.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 11.0,
									"id" : "obj-9"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "scope~",
									"patching_rect" : [ 144.0, 142.0, 154.0, 101.0 ],
									"numinlets" : 2,
									"rounded" : 0,
									"numoutlets" : 0,
									"trigger" : 1,
									"bgcolor" : [ 0.529412, 0.529412, 0.529412, 1.0 ],
									"id" : "obj-10",
									"bufsize" : 64
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "cycle~ 330",
									"fontname" : "Verdana",
									"patching_rect" : [ 59.0, 52.0, 72.0, 20.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 11.0,
									"outlettype" : [ "signal" ],
									"id" : "obj-11"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ajm.env~ @transport ajm_env_help",
									"fontname" : "Verdana",
									"patching_rect" : [ 80.0, 89.0, 213.0, 20.0 ],
									"numinlets" : 5,
									"numoutlets" : 3,
									"fontsize" : 11.0,
									"outlettype" : [ "signal", "int", "" ],
									"id" : "obj-12",
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-53", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-53", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 1,
									"midpoints" : [ 352.5, 60.0, 235.5, 60.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 1,
									"midpoints" : [ 352.5, 30.0, 186.5, 30.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-12", 3 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-12", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-12", 1 ],
									"hidden" : 0,
									"midpoints" : [ 138.5, 62.0, 138.0, 62.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [ 89.5, 125.0, 153.5, 125.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [ 68.5, 79.0, 89.5, 79.0 ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"globalpatchername" : "",
						"fontname" : "Verdana",
						"default_fontface" : 0,
						"fontface" : 0,
						"fontsize" : 11.1,
						"default_fontname" : "Verdana",
						"default_fontsize" : 11.1
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "gain~",
					"patching_rect" : [ 80.0, 347.0, 31.0, 65.0 ],
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "int" ],
					"id" : "obj-26"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "cycle~ 440",
					"fontname" : "Verdana",
					"patching_rect" : [ 128.0, 283.0, 72.0, 20.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 11.0,
					"outlettype" : [ "signal" ],
					"id" : "obj-11"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ezdac~",
					"offgradcolor1" : [ 0.368627, 0.364706, 0.341176, 1.0 ],
					"ongradcolor1" : [ 0.772549, 1.0, 0.807843, 1.0 ],
					"patching_rect" : [ 72.0, 424.0, 44.0, 44.0 ],
					"numinlets" : 2,
					"ongradcolor2" : [ 0.0, 0.607843, 0.121569, 1.0 ],
					"offgradcolor2" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0,
					"bgcolor" : [ 0.52549, 0.52549, 0.52549, 1.0 ],
					"id" : "obj-53"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "autohelp_dac_text",
					"text" : "start audio",
					"linecount" : 2,
					"fontname" : "Arial",
					"patching_rect" : [ 31.0, 430.0, 38.0, 33.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 11.595187,
					"id" : "obj-55"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"varname" : "startwinwdow_panel",
					"patching_rect" : [ 24.0, 419.0, 100.0, 55.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"bordercolor" : [ 0.392157, 0.792157, 0.117647, 1.0 ],
					"border" : 2,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-56"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"patching_rect" : [ 492.0, 438.0, 145.0, 55.0 ],
					"numinlets" : 1,
					"name" : "ajm.seealso.maxpat",
					"numoutlets" : 0,
					"args" : [ "line~", "function", "adsr~" ],
					"id" : "obj-60",
					"lockeddragscroll" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"patching_rect" : [ 495.0, 10.0, 138.0, 55.0 ],
					"numinlets" : 0,
					"name" : "ajm.helplinks.maxpat",
					"numoutlets" : 0,
					"args" : [  ],
					"id" : "obj-51",
					"lockeddragscroll" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "thispatcher",
					"fontname" : "Verdana",
					"patching_rect" : [ 216.0, 512.0, 73.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"hidden" : 1,
					"fontsize" : 11.1,
					"outlettype" : [ "", "" ],
					"id" : "obj-49",
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "ajm.bring-to-front-listener ajm.env~",
					"fontname" : "Verdana",
					"patching_rect" : [ 216.0, 486.0, 217.0, 20.0 ],
					"numinlets" : 0,
					"numoutlets" : 1,
					"hidden" : 1,
					"fontsize" : 11.1,
					"outlettype" : [ "front" ],
					"id" : "obj-50"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "env UI",
					"text" : "p \"ajm.envui: a GUI for ajm.env\"",
					"linecount" : 2,
					"fontname" : "Verdana",
					"patching_rect" : [ 469.0, 219.0, 115.0, 33.0 ],
					"numinlets" : 0,
					"numoutlets" : 0,
					"fontsize" : 11.0,
					"id" : "obj-2",
					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 628.0, 154.0, 346.0, 328.0 ],
						"bglocked" : 0,
						"defrect" : [ 628.0, 154.0, 346.0, 328.0 ],
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
									"maxclass" : "gain~",
									"patching_rect" : [ 86.0, 186.0, 31.0, 65.0 ],
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "int" ],
									"id" : "obj-26"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "ezdac~",
									"offgradcolor1" : [ 0.368627, 0.364706, 0.341176, 1.0 ],
									"ongradcolor1" : [ 0.772549, 1.0, 0.807843, 1.0 ],
									"patching_rect" : [ 78.0, 263.0, 44.0, 44.0 ],
									"numinlets" : 2,
									"ongradcolor2" : [ 0.0, 0.607843, 0.121569, 1.0 ],
									"offgradcolor2" : [ 0.0, 0.0, 0.0, 1.0 ],
									"numoutlets" : 0,
									"bgcolor" : [ 0.52549, 0.52549, 0.52549, 1.0 ],
									"id" : "obj-53"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"varname" : "autohelp_dac_text",
									"text" : "start audio",
									"linecount" : 2,
									"fontname" : "Arial",
									"patching_rect" : [ 37.0, 269.0, 38.0, 33.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 11.595187,
									"id" : "obj-55"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"varname" : "startwinwdow_panel",
									"patching_rect" : [ 30.0, 258.0, 100.0, 55.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"bordercolor" : [ 0.392157, 0.792157, 0.117647, 1.0 ],
									"border" : 2,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"id" : "obj-56"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "noteoff",
									"fontname" : "Verdana",
									"patching_rect" : [ 58.0, 24.0, 50.0, 20.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 11.0,
									"id" : "obj-6"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontname" : "Verdana",
									"patching_rect" : [ 60.0, 41.0, 24.0, 26.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 18.0,
									"outlettype" : [ "" ],
									"id" : "obj-7"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "1",
									"fontname" : "Verdana",
									"patching_rect" : [ 7.0, 41.0, 24.0, 26.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 18.0,
									"outlettype" : [ "" ],
									"id" : "obj-8"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "noteon",
									"fontname" : "Verdana",
									"patching_rect" : [ 6.0, 24.0, 50.0, 20.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"fontsize" : 11.0,
									"id" : "obj-9"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "scope~",
									"patching_rect" : [ 150.0, 188.0, 154.0, 101.0 ],
									"numinlets" : 2,
									"rounded" : 0,
									"numoutlets" : 0,
									"trigger" : 1,
									"bgcolor" : [ 0.529412, 0.529412, 0.529412, 1.0 ],
									"id" : "obj-10",
									"bufsize" : 64
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "cycle~ 660",
									"fontname" : "Verdana",
									"patching_rect" : [ 24.0, 100.0, 72.0, 20.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"fontsize" : 11.0,
									"outlettype" : [ "signal" ],
									"id" : "obj-11"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ajm.env~",
									"fontname" : "Verdana",
									"patching_rect" : [ 86.0, 135.0, 87.0, 20.0 ],
									"numinlets" : 5,
									"numoutlets" : 3,
									"fontsize" : 11.0,
									"outlettype" : [ "signal", "int", "" ],
									"id" : "obj-12",
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "envelope",
									"patching_rect" : [ 120.0, 7.0, 221.0, 102.0 ],
									"numinlets" : 0,
									"name" : "ajm.envui.maxpat",
									"numoutlets" : 3,
									"args" : [  ],
									"outlettype" : [ "", "", "" ],
									"id" : "obj-13",
									"lockeddragscroll" : 1
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-53", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-53", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-12", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 1 ],
									"destination" : [ "obj-12", 3 ],
									"hidden" : 0,
									"midpoints" : [ 230.5, 120.0, 146.5, 120.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 2 ],
									"destination" : [ "obj-12", 4 ],
									"hidden" : 0,
									"midpoints" : [ 331.5, 127.0, 163.5, 127.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [ 95.5, 171.0, 159.5, 171.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-12", 1 ],
									"hidden" : 0,
									"midpoints" : [ 69.5, 82.0, 112.5, 82.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-12", 1 ],
									"hidden" : 0,
									"midpoints" : [ 16.5, 82.0, 112.5, 82.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [ 33.5, 125.0, 95.5, 125.0 ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"globalpatchername" : "",
						"fontname" : "Verdana",
						"default_fontface" : 0,
						"fontface" : 0,
						"fontsize" : 11.1,
						"default_fontname" : "Verdana",
						"default_fontsize" : 11.1
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"fontname" : "Verdana",
					"patching_rect" : [ 248.0, 244.0, 59.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"hidden" : 1,
					"fontsize" : 11.0,
					"outlettype" : [ "bang" ],
					"id" : "obj-3"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "noteoff",
					"fontname" : "Verdana",
					"patching_rect" : [ 68.0, 212.0, 50.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 11.0,
					"id" : "obj-4"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "release envelope",
					"fontname" : "Verdana Bold",
					"patching_rect" : [ 322.0, 219.0, 133.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 11.0,
					"id" : "obj-5"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"fontname" : "Verdana",
					"patching_rect" : [ 231.0, 197.0, 59.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 11.0,
					"outlettype" : [ "bang" ],
					"id" : "obj-7"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"fontname" : "Verdana",
					"patching_rect" : [ 214.0, 73.0, 59.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"fontsize" : 11.0,
					"outlettype" : [ "bang" ],
					"id" : "obj-8"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Send a max amplitude message to trigger the envelope. Its designed to works with MIDI: non-zero value is a note on (attack) and zero is a note off (release).",
					"linecount" : 5,
					"fontname" : "Verdana",
					"patching_rect" : [ 7.0, 77.0, 205.0, 73.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 11.0,
					"id" : "obj-14"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "optional sustain point on/off. \nIf off, release is started immediately after attack finishes.",
					"linecount" : 3,
					"fontname" : "Verdana",
					"patching_rect" : [ 267.0, 273.0, 194.0, 47.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 11.0,
					"id" : "obj-15"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"patching_rect" : [ 549.0, 166.0, 19.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"id" : "obj-16"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "0.5 1500 0 50",
					"fontname" : "Verdana",
					"patching_rect" : [ 231.0, 220.0, 91.0, 18.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 11.0,
					"outlettype" : [ "" ],
					"id" : "obj-17"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "0 0 1 500 0.5 750 1 750",
					"fontname" : "Verdana",
					"patching_rect" : [ 214.0, 109.0, 149.0, 18.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 11.0,
					"outlettype" : [ "" ],
					"id" : "obj-18"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "function",
					"patching_rect" : [ 424.0, 82.0, 144.0, 79.0 ],
					"numinlets" : 1,
					"linecolor" : [ 0.333333, 0.333333, 0.333333, 1.0 ],
					"numoutlets" : 4,
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"outlettype" : [ "float", "", "", "bang" ],
					"id" : "obj-19",
					"pointcolor" : [ 0.321569, 0.321569, 0.321569, 1.0 ],
					"addpoints" : [ 0.0, 0.0, 0, 583.333313, 0.074074, 0, 787.878784, 0.185185, 0, 909.090881, 0.444444, 0, 1000.0, 1.0, 0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "0.5",
					"fontname" : "Verdana",
					"patching_rect" : [ 47.0, 175.0, 38.0, 26.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 18.0,
					"outlettype" : [ "" ],
					"id" : "obj-20"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"patching_rect" : [ 248.0, 276.0, 19.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"id" : "obj-21"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "0",
					"fontname" : "Verdana",
					"patching_rect" : [ 75.0, 232.0, 24.0, 26.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 18.0,
					"outlettype" : [ "" ],
					"id" : "obj-22"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "1",
					"fontname" : "Verdana",
					"patching_rect" : [ 11.0, 175.0, 24.0, 26.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"fontsize" : 18.0,
					"outlettype" : [ "" ],
					"id" : "obj-23"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "scope~",
					"patching_rect" : [ 180.0, 376.0, 154.0, 101.0 ],
					"numinlets" : 2,
					"rounded" : 0,
					"numoutlets" : 0,
					"trigger" : 1,
					"bgcolor" : [ 0.529412, 0.529412, 0.529412, 1.0 ],
					"id" : "obj-24",
					"bufsize" : 64
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"patching_rect" : [ 214.0, 340.0, 19.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"id" : "obj-31"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "ajm.env~",
					"fontname" : "Verdana",
					"patching_rect" : [ 180.0, 315.0, 87.0, 20.0 ],
					"numinlets" : 5,
					"numoutlets" : 3,
					"fontsize" : 11.0,
					"outlettype" : [ "signal", "int", "" ],
					"id" : "obj-37",
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "message-driven signal envelope with independent breakpoint lists for attack and release and optional sustain",
					"linecount" : 2,
					"fontname" : "Verdana",
					"patching_rect" : [ 100.0, 15.0, 363.0, 36.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 12.0,
					"id" : "obj-38"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Abstraction",
					"fontname" : "Verdana",
					"patching_rect" : [ 10.0, 39.0, 77.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"id" : "obj-39"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "ajm.env~",
					"fontname" : "Arial",
					"patching_rect" : [ 10.0, 14.0, 86.0, 27.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 18.0,
					"id" : "obj-40"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "is the envelope active?",
					"fontname" : "Verdana",
					"patching_rect" : [ 232.0, 340.0, 142.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 11.0,
					"id" : "obj-42"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "noteon",
					"fontname" : "Verdana",
					"patching_rect" : [ 18.0, 156.0, 50.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 11.0,
					"id" : "obj-43"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "envelopes are in line~ format (list of value-time pairs)",
					"linecount" : 2,
					"fontname" : "Verdana",
					"patching_rect" : [ 224.0, 125.0, 177.0, 33.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 11.0,
					"id" : "obj-44"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "attack envelope",
					"fontname" : "Verdana Bold",
					"patching_rect" : [ 315.0, 91.0, 134.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"fontsize" : 11.0,
					"id" : "obj-45"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 7.0, 4.0, 464.0, 58.0 ],
					"numinlets" : 1,
					"rounded" : 12,
					"grad1" : [ 0.823529, 1.0, 0.956863, 1.0 ],
					"numoutlets" : 0,
					"grad2" : [ 0.219608, 0.564706, 0.462745, 1.0 ],
					"mode" : 1,
					"angle" : 270.0,
					"id" : "obj-52"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 6.0, 3.0, 467.0, 62.0 ],
					"numinlets" : 1,
					"rounded" : 16,
					"grad1" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"numoutlets" : 0,
					"grad2" : [ 0.0, 0.0, 0.0, 1.0 ],
					"mode" : 1,
					"angle" : 270.0,
					"id" : "obj-54"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-19", 3 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [ 558.5, 187.0, 573.0, 187.0, 573.0, 77.0, 433.5, 77.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-50", 0 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-53", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-53", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-37", 1 ],
					"hidden" : 0,
					"midpoints" : [ 20.5, 273.0, 206.5, 273.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-37", 1 ],
					"hidden" : 0,
					"midpoints" : [ 84.5, 273.0, 206.5, 273.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-37", 1 ],
					"hidden" : 0,
					"midpoints" : [ 56.5, 273.0, 206.5, 273.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-37", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 1 ],
					"destination" : [ "obj-37", 2 ],
					"hidden" : 0,
					"midpoints" : [ 475.166656, 186.0, 223.5, 186.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-37", 3 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-37", 4 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 1 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [ 137.5, 309.0, 189.5, 309.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [ 189.5, 338.0, 89.5, 338.0 ]
				}

			}
 ]
	}

}
