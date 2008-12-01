{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 47.0, 65.0, 630.0, 590.0 ],
		"bglocked" : 0,
		"defrect" : [ 47.0, 65.0, 630.0, 590.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 11.100006,
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
					"text" : "ajm.coll2note",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 36.0, 428.0, 86.0, 20.0 ],
					"fontsize" : 11.100006,
					"id" : "obj-17",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "subpatch",
					"text" : "p \"time signatures\"",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"patching_rect" : [ 450.0, 155.0, 117.0, 20.0 ],
					"fontsize" : 11.0,
					"id" : "obj-16",
					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
					"numinlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 289.0, 47.0, 431.0, 355.0 ],
						"bglocked" : 0,
						"defrect" : [ 289.0, 47.0, 431.0, 355.0 ],
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
									"text" : "ajm.coll2note",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 53.0, 218.0, 86.0, 20.0 ],
									"fontsize" : 11.1,
									"id" : "obj-5",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "midi2coll needs to be told the time signature of the midi file. It does not support time signature changes.",
									"linecount" : 4,
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"patching_rect" : [ 219.0, 43.0, 172.0, 60.0 ],
									"fontsize" : 11.1,
									"id" : "obj-7",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"varname" : "subToggle",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 76.0, 117.0, 20.0, 20.0 ],
									"id" : "obj-17",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 76.0, 149.0, 34.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-14",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "timesig 5 4",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 257.0, 256.0, 73.0, 18.0 ],
									"fontsize" : 11.1,
									"id" : "obj-6",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "transport",
									"fontname" : "Arial",
									"numoutlets" : 9,
									"outlettype" : [ "int", "int", "float", "float", "float", "", "int", "float", "" ],
									"patching_rect" : [ 257.0, 284.0, 112.5, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-23",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b 0",
									"fontname" : "Arial",
									"numoutlets" : 2,
									"outlettype" : [ "bang", "int" ],
									"patching_rect" : [ 335.0, 200.0, 34.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-22",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "active",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 335.0, 158.0, 42.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-18",
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "0",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"hidden" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 376.0, 259.0, 32.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-12",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 1",
									"fontname" : "Arial",
									"numoutlets" : 2,
									"hidden" : 1,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 376.0, 230.0, 36.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-11",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pattrforward parent::toggle",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"hidden" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 376.0, 288.0, 151.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-10",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "toggle",
									"text" : "pattr toggle @bindto subToggle",
									"fontname" : "Arial",
									"numoutlets" : 3,
									"hidden" : 1,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 376.0, 201.0, 178.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-1",
									"numinlets" : 1,
									"restore" : [ 0 ],
									"saved_object_attributes" : 									{

									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "1.3.0",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 129.0, 183.0, 79.0, 18.0 ],
									"fontsize" : 11.1,
									"id" : "obj-3",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ajm.relmetro @interval 8n",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 115.0, 116.0, 159.0, 20.0 ],
									"fontsize" : 11.1,
									"id" : "obj-43",
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "noteout",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"patching_rect" : [ 53.0, 253.0, 85.0, 20.0 ],
									"fontsize" : 11.1,
									"id" : "obj-27",
									"numinlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "midi2coll-5-4.mid",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 53.0, 42.0, 109.0, 18.0 ],
									"fontsize" : 11.1,
									"id" : "obj-29",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ajm.midi2coll @timesig 5 4",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 53.0, 75.0, 163.0, 20.0 ],
									"fontsize" : 11.1,
									"id" : "obj-4",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "coll",
									"fontname" : "Verdana",
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 53.0, 182.0, 59.5, 20.0 ],
									"fontsize" : 11.1,
									"id" : "obj-2",
									"numinlets" : 1,
									"save" : [ "#N", "coll", ";", "#T", "flags", 1, 0, ";", "#T", "store", "1.1.0", 58, 82, 0.971, 39, 78, 2.656, ";", "#T", "store", "1.2.0", 55, 81, 0.588, ";", "#T", "store", "1.2.240", 58, 90, 0.527, ";", "#T", "store", "1.3.0", 55, 81, 0.571, ";", "#T", "store", "1.3.240", 58, 81, 0.527, ";", "#T", "store", "1.4.0", 60, 83, 0.467, 36, 90, 2.094, ";", "#T", "store", "1.5.0", 55, 90, 0.504, ";", "#T", "store", "2.1.0", 58, 83, 0.992, 39, 83, 3.198, ";", "#T", "store", "2.2.0", 55, 82, 0.54, ";", "#T", "store", "2.2.240", 58, 90, 0.513, ";", "#T", "store", "2.3.0", 55, 83, 0.569, ";", "#T", "store", "2.3.240", 58, 73, 0.573, ";", "#T", "store", "2.4.0", 60, 66, 0.54, 36, 72, 1.813, ";", "#T", "store", "2.5.0", 55, 81, 0.535, ";", "#T", "store", "3.1.0", 54, 80, 1.213, 42, 89, 2.315, ";", "#T", "store", "3.2.240", 57, 81, 1.038, ";", "#T", "store", "3.4.0", 49, 90, 0.49, 37, 73, 2.217, ";", "#T", "store", "3.5.0", 52, 81, 0.521, ";", "#T", "store", "4.1.0", 54, 90, 1.396, 42, 90, 2.965, ";", "#T", "store", "4.2.240", 57, 63, 1.246, ";", "#T", "store", "4.4.0", 48, 66, 0.508, 36, 72, 2.058, ";", "#T", "store", "4.5.0", 51, 81, 0.419, ";", "#T", "store", "5.1.0", 58, 90, 1.006, 39, 80, 2.977, ";", "#T", "store", "5.2.0", 55, 81, 0.467, ";", "#T", "store", "5.2.240", 58, 73, 0.598, ";", "#T", "store", "5.3.0", 55, 81, 0.588, ";", "#T", "store", "5.3.240", 58, 72, 0.55, ";", "#T", "store", "5.4.0", 60, 54, 0.469, 36, 72, 2.171, ";", "#T", "store", "5.5.0", 55, 82, 0.421, ";", "#T", "store", "6.1.0", 58, 81, 1.004, 39, 82, 3.042, ";", "#T", "store", "6.2.0", 55, 80, 0.573, ";", "#T", "store", "6.2.240", 58, 80, 0.558, ";", "#T", "store", "6.3.0", 55, 73, 0.56, ";", "#T", "store", "6.3.240", 58, 72, 0.563, ";", "#T", "store", "6.4.0", 60, 56, 0.519, 36, 72, 2.16, ";", "#T", "store", "6.5.0", 55, 80, 0.375, ";", "#T", "store", "7.1.0", 30, 81, 0.504, 39, 81, 0.838, 51, 90, 1.36, ";" ],
									"saved_object_attributes" : 									{
										"embed" : 1
									}

								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-5", 1 ],
									"destination" : [ "obj-27", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-43", 0 ],
									"destination" : [ "obj-14", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-43", 0 ],
									"destination" : [ "obj-3", 1 ],
									"hidden" : 0,
									"midpoints" : [ 124.5, 172.0, 198.5, 172.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
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
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [ 344.5, 185.0, 344.5, 185.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 1 ],
									"destination" : [ "obj-23", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-23", 0 ],
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
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 11.1,
						"default_fontface" : 0,
						"default_fontname" : "Verdana"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"numoutlets" : 0,
					"args" : [  ],
					"patching_rect" : [ 452.0, 409.0, 145.0, 55.0 ],
					"lockeddragscroll" : 1,
					"id" : "obj-60",
					"name" : "ajm.seealso.maxpat",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"hidden" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 452.0, 358.0, 61.0, 20.0 ],
					"fontsize" : 11.1,
					"id" : "obj-74",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "ajm.relmetro, ajm.coll2note, coll",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"hidden" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 452.0, 382.0, 194.0, 18.0 ],
					"fontsize" : 11.1,
					"id" : "obj-73",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"numoutlets" : 0,
					"args" : [  ],
					"patching_rect" : [ 441.0, 11.0, 138.0, 55.0 ],
					"lockeddragscroll" : 1,
					"id" : "obj-48",
					"name" : "ajm.helplinks.maxpat",
					"numinlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "convert MIDI files to coll format",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"patching_rect" : [ 150.0, 23.0, 216.0, 21.0 ],
					"fontsize" : 12.0,
					"id" : "obj-13",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "ajm.midi2coll",
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 10.0, 11.0, 125.0, 27.0 ],
					"fontsize" : 18.0,
					"id" : "obj-57",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Ruby abstraction",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"patching_rect" : [ 14.0, 39.0, 100.0, 17.0 ],
					"fontsize" : 9.0,
					"id" : "obj-15",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"angle" : 270.0,
					"patching_rect" : [ 8.0, 8.0, 379.0, 51.0 ],
					"mode" : 1,
					"rounded" : 12,
					"grad1" : [ 0.823529, 1.0, 0.956863, 1.0 ],
					"id" : "obj-50",
					"grad2" : [ 0.219608, 0.564706, 0.462745, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"angle" : 270.0,
					"patching_rect" : [ 7.0, 7.0, 382.0, 55.0 ],
					"mode" : 1,
					"rounded" : 16,
					"grad1" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"id" : "obj-54",
					"grad2" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "timesig 4 4",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 299.0, 438.0, 73.0, 18.0 ],
					"fontsize" : 11.1,
					"id" : "obj-14",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "toggle",
					"text" : "pattr toggle @bindto mainToggle @initial 1",
					"fontname" : "Arial",
					"numoutlets" : 3,
					"hidden" : 1,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 22.0, 566.0, 238.0, 20.0 ],
					"fontsize" : 12.0,
					"id" : "obj-37",
					"numinlets" : 1,
					"saved_object_attributes" : 					{
						"initial" : [ 1 ]
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"varname" : "mainToggle",
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 57.0, 337.0, 20.0, 20.0 ],
					"id" : "obj-9",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gate",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 57.0, 369.0, 51.0, 20.0 ],
					"fontsize" : 12.0,
					"id" : "obj-10",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 271.0, 433.0, 20.0, 20.0 ],
					"id" : "obj-5",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 307.0, 387.0, 29.0, 29.0 ],
					"id" : "obj-12",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "metro @quantize 4n @interval 4n @active 1",
					"linecount" : 4,
					"fontname" : "Arial",
					"numoutlets" : 1,
					"hidden" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 344.0, 498.0, 97.0, 62.0 ],
					"fontsize" : 12.0,
					"id" : "obj-59",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "1 3 0",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 271.0, 532.0, 62.0, 18.0 ],
					"fontsize" : 12.0,
					"id" : "obj-58",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pack 0 0 0",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 271.0, 497.0, 66.0, 20.0 ],
					"fontsize" : 12.0,
					"id" : "obj-56",
					"numinlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Start playback from beginning",
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 254.0, 362.0, 173.0, 20.0 ],
					"fontsize" : 12.0,
					"id" : "obj-55",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "0",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 366.0, 414.0, 32.5, 18.0 ],
					"fontsize" : 12.0,
					"id" : "obj-53",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "1",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 271.0, 410.0, 32.5, 18.0 ],
					"fontsize" : 12.0,
					"id" : "obj-51",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "transport",
					"fontname" : "Arial",
					"numoutlets" : 9,
					"outlettype" : [ "int", "int", "float", "float", "float", "", "int", "float", "" ],
					"patching_rect" : [ 271.0, 466.0, 113.5, 20.0 ],
					"fontsize" : 12.0,
					"id" : "obj-45",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "ajm.relmetro @interval 32n",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 89.0, 338.0, 166.0, 20.0 ],
					"fontsize" : 11.1,
					"id" : "obj-43",
					"numinlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "noteout",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"patching_rect" : [ 36.0, 458.0, 86.0, 20.0 ],
					"fontsize" : 11.1,
					"id" : "obj-27",
					"numinlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "or bang for a file browser",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"patching_rect" : [ 168.0, 235.0, 178.0, 20.0 ],
					"fontsize" : 11.1,
					"id" : "obj-36",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "or drag and drop",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"patching_rect" : [ 168.0, 188.0, 150.0, 20.0 ],
					"fontsize" : 11.1,
					"id" : "obj-35",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "or absolute path",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"patching_rect" : [ 169.0, 126.0, 110.0, 20.0 ],
					"fontsize" : 11.1,
					"id" : "obj-32",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "load MIDI by filename (if on path)",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"patching_rect" : [ 129.0, 71.0, 232.0, 20.0 ],
					"fontsize" : 11.1,
					"id" : "obj-31",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "midi2coll.mid",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 36.0, 72.0, 85.0, 18.0 ],
					"fontsize" : 11.1,
					"id" : "obj-29",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 125.0, 226.0, 37.0, 37.0 ],
					"id" : "obj-28",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "dropfile",
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"types" : [ "Midi" ],
					"patching_rect" : [ 55.0, 157.0, 106.0, 55.0 ],
					"id" : "obj-1",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/Users/username/Music/somefile.mid",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 51.0, 106.0, 219.0, 18.0 ],
					"fontsize" : 11.1,
					"id" : "obj-6",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "ajm.midi2coll",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 36.0, 293.0, 85.0, 20.0 ],
					"fontsize" : 11.1,
					"id" : "obj-4",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "coll",
					"fontname" : "Verdana",
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 36.0, 400.0, 59.5, 20.0 ],
					"fontsize" : 11.1,
					"id" : "obj-2",
					"numinlets" : 1,
					"save" : [ "#N", "coll", ";", "#T", "flags", 1, 0, ";", "#T", "store", "1.1.0", 65, 66, 1.027, 57, 73, 4.075, ";", "#T", "store", "1.2.0", 67, 72, 1.006, ";", "#T", "store", "1.3.0", 65, 66, 1.027, ";", "#T", "store", "1.4.0", 62, 65, 1.063, ";", "#T", "store", "2.1.0", 64, 80, 1.063, 55, 81, 3.981, ";", "#T", "store", "2.2.0", 65, 72, 1.031, ";", "#T", "store", "2.3.0", 64, 73, 1.046, ";", "#T", "store", "2.4.0", 60, 72, 1.0, ";", "#T", "store", "3.1.0", 62, 82, 2.233, 53, 90, 4.188, ";", "#T", "store", "3.3.0", 65, 80, 2.021, ";", "#T", "store", "4.1.0", 67, 80, 2.098, 52, 82, 4.142, ";", "#T", "store", "4.3.0", 69, 73, 2.094, ";", "#T", "store", "5.1.0", 65, 65, 1.052, 50, 81, 4.013, ";", "#T", "store", "5.2.0", 67, 50, 1.031, ";", "#T", "store", "5.3.0", 65, 81, 1.015, ";", "#T", "store", "5.4.0", 62, 72, 1.108, ";", "#T", "store", "6.1.0", 64, 73, 1.081, 48, 66, 4.367, ";", "#T", "store", "6.2.0", 65, 65, 1.09, ";", "#T", "store", "6.3.0", 64, 56, 1.117, ";", "#T", "store", "6.4.0", 60, 54, 1.256, ";", "#T", "store", "7.1.0", 50, 80, 5.654, 62, 72, 5.733, ";" ],
					"saved_object_attributes" : 					{
						"embed" : 1
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"patching_rect" : [ 252.0, 360.0, 175.0, 196.0 ],
					"grad1" : [ 0.239216, 0.643137, 0.709804, 0.156863 ],
					"bgcolor" : [ 0.678431, 0.819608, 0.819608, 0.552941 ],
					"id" : "obj-47",
					"grad2" : [ 0.678431, 0.819608, 0.819608, 0.372549 ],
					"background" : 1,
					"numinlets" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-10", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [ 64.5, 216.0, 45.5, 216.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [ 134.5, 272.0, 45.5, 272.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [ 60.5, 137.0, 45.5, 137.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 1 ],
					"destination" : [ "obj-27", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-73", 0 ],
					"destination" : [ "obj-60", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-74", 0 ],
					"destination" : [ "obj-73", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-59", 0 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 1,
					"midpoints" : [ 353.5, 570.0, 281.0, 570.0, 281.0, 571.0, 257.0, 571.0, 257.0, 462.0, 280.5, 462.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 0,
					"midpoints" : [ 308.5, 462.0, 283.0, 462.0, 283.0, 462.0, 280.5, 462.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [ 316.5, 426.0, 310.0, 426.0, 310.0, 435.0, 308.5, 435.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-51", 0 ],
					"hidden" : 0,
					"midpoints" : [ 316.5, 426.0, 302.0, 426.0, 302.0, 402.0, 280.5, 402.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-53", 0 ],
					"hidden" : 0,
					"midpoints" : [ 316.5, 426.0, 353.0, 426.0, 353.0, 411.0, 375.5, 411.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-56", 0 ],
					"destination" : [ "obj-58", 1 ],
					"hidden" : 0,
					"midpoints" : [ 280.5, 523.0, 323.5, 523.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 2 ],
					"destination" : [ "obj-56", 2 ],
					"hidden" : 0,
					"midpoints" : [ 304.125, 492.0, 327.5, 492.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 1 ],
					"destination" : [ "obj-56", 1 ],
					"hidden" : 0,
					"midpoints" : [ 292.3125, 492.0, 304.0, 492.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 0 ],
					"destination" : [ "obj-56", 0 ],
					"hidden" : 0,
					"midpoints" : [ 280.5, 486.0, 280.5, 486.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-53", 0 ],
					"destination" : [ "obj-45", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-51", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-51", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 1,
					"color" : [ 0.164706, 0.784314, 0.882353, 1.0 ],
					"midpoints" : [  ]
				}

			}
 ]
	}

}
