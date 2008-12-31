{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 11.0, 44.0, 539.0, 487.0 ],
		"bglocked" : 0,
		"defrect" : [ 11.0, 44.0, 539.0, 487.0 ],
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
					"varname" : "subpatch[4]",
					"text" : "p \"multiple tracks\"",
					"fontname" : "Verdana",
					"patching_rect" : [ 366.0, 126.0, 113.0, 20.0 ],
					"fontsize" : 11.0,
					"numinlets" : 0,
					"numoutlets" : 0,
					"id" : "obj-20",
					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 289.0, 47.0, 579.0, 458.0 ],
						"bglocked" : 0,
						"defrect" : [ 289.0, 47.0, 579.0, 458.0 ],
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
									"text" : "To handle multiple tracks, the second outlet will indicate the track number before dumping out the coll info (starting with a \"clear\" message)",
									"linecount" : 4,
									"fontname" : "Verdana",
									"patching_rect" : [ 284.0, 65.0, 222.0, 60.0 ],
									"fontsize" : 11.1,
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-17"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "ajm.midi2coll supports multitrack (MIDI format 1) files",
									"fontname" : "Verdana",
									"patching_rect" : [ 39.0, 12.0, 318.0, 20.0 ],
									"fontsize" : 11.1,
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-8"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"fontname" : "Verdana",
									"patching_rect" : [ 106.0, 112.0, 39.0, 20.0 ],
									"fontsize" : 11.1,
									"numinlets" : 1,
									"numoutlets" : 2,
									"id" : "obj-3",
									"outlettype" : [ "int", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ajm.makenote @transport ajm_m2c_mt",
									"fontname" : "Verdana",
									"patching_rect" : [ 310.0, 389.0, 236.0, 20.0 ],
									"fontsize" : 11.1,
									"numinlets" : 2,
									"numoutlets" : 3,
									"id" : "obj-14",
									"outlettype" : [ "int", "int", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "noteout 3",
									"fontname" : "Verdana",
									"patching_rect" : [ 310.0, 424.0, 64.0, 20.0 ],
									"fontsize" : 11.1,
									"numinlets" : 3,
									"numoutlets" : 0,
									"id" : "obj-15"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "coll",
									"fontname" : "Verdana",
									"patching_rect" : [ 296.0, 235.0, 59.5, 20.0 ],
									"fontsize" : 11.1,
									"numinlets" : 1,
									"numoutlets" : 4,
									"id" : "obj-16",
									"outlettype" : [ "", "", "", "" ],
									"save" : [ "#N", "coll", ";", "#T", "flags", 1, 0, ";", "#T", "store", "1.2.240", "72 80 1.806", ";", "#T", "store", "1.4.240", "71 66 0.292", ";", "#T", "store", "1.4.360", "69 66 0.569", ";", "#T", "store", "2.1.0", "67 72 1.571", ";", "#T", "store", "2.2.240", "72 72 1.629", ";", "#T", "store", "2.4.0", "71 80 1.121", ";", "#T", "store", "3.1.0", "69 81 0.31", ";", "#T", "store", "3.1.120", "67 80 2.271", ";", "#T", "store", "3.3.240", "72 72 0.329", ";", "#T", "store", "3.3.360", "71 80 0.35", ";", "#T", "store", "3.4.0", "69 81 1.123", ";", "#T", "store", "4.1.0", "67 65 3.006", ";", "#T", "store", "4.4.0", "72 66 1.846", ";" ],
									"saved_object_attributes" : 									{
										"embed" : 1
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ajm.makenote @transport ajm_m2c_mt",
									"fontname" : "Verdana",
									"patching_rect" : [ 152.0, 328.0, 236.0, 20.0 ],
									"fontsize" : 11.1,
									"numinlets" : 2,
									"numoutlets" : 3,
									"id" : "obj-11",
									"outlettype" : [ "int", "int", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "noteout 2",
									"fontname" : "Verdana",
									"patching_rect" : [ 152.0, 363.0, 64.0, 20.0 ],
									"fontsize" : 11.1,
									"numinlets" : 3,
									"numoutlets" : 0,
									"id" : "obj-12"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "coll",
									"fontname" : "Verdana",
									"patching_rect" : [ 160.0, 234.0, 59.5, 20.0 ],
									"fontsize" : 11.1,
									"numinlets" : 1,
									"numoutlets" : 4,
									"id" : "obj-13",
									"outlettype" : [ "", "", "", "" ],
									"save" : [ "#N", "coll", ";", "#T", "flags", 1, 0, ";", "#T", "store", "1.1.0", "72 52 1.308", ";", "#T", "store", "1.1.240", "71 45 0.746", ";", "#T", "store", "1.2.0", "69 90 0.942", ";", "#T", "store", "1.3.0", "67 66 0.802", ";", "#T", "store", "1.4.0", "72 63 0.877", ";", "#T", "store", "1.4.240", "71 63 0.952", ";", "#T", "store", "2.1.240", "69 63 1.179", ";", "#T", "store", "2.2.240", "67 73 1.113", ";", "#T", "store", "2.3.240", "72 65 1.06", ";", "#T", "store", "2.4.240", "71 65 0.685", ";", "#T", "store", "3.1.0", "69 80 1.229", ";", "#T", "store", "3.2.0", "67 73 1.581", ";", "#T", "store", "3.3.240", "72 80 1.546", ";", "#T", "store", "4.1.0", "71 73 1.515", ";", "#T", "store", "4.2.240", "69 66 1.094", ";", "#T", "store", "4.3.240", "67 66 1.685", ";" ],
									"saved_object_attributes" : 									{
										"embed" : 1
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate 3",
									"fontname" : "Verdana",
									"patching_rect" : [ 39.0, 158.0, 83.0, 20.0 ],
									"fontsize" : 11.1,
									"numinlets" : 2,
									"numoutlets" : 3,
									"id" : "obj-10",
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"patching_rect" : [ 426.0, 216.0, 113.0, 115.0 ],
									"name" : "ajm.help-transport.maxpat",
									"args" : [ "@transport", "ajm_m2c_mt" ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-9"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "ajm_multitrack.mid",
									"fontname" : "Verdana",
									"patching_rect" : [ 40.0, 56.0, 120.0, 18.0 ],
									"fontsize" : 11.1,
									"numinlets" : 2,
									"numoutlets" : 1,
									"id" : "obj-6",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ajm.makenote @transport ajm_m2c_mt",
									"fontname" : "Verdana",
									"patching_rect" : [ 39.0, 275.0, 236.0, 20.0 ],
									"fontsize" : 11.1,
									"numinlets" : 2,
									"numoutlets" : 3,
									"id" : "obj-5",
									"outlettype" : [ "int", "int", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "number of tracks",
									"fontname" : "Verdana",
									"patching_rect" : [ 143.0, 112.0, 110.0, 20.0 ],
									"fontsize" : 11.1,
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-7"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ajm.metro 16n @start 1.1.0 @transport ajm_m2c_mt",
									"linecount" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 296.0, 162.0, 183.0, 33.0 ],
									"fontsize" : 11.1,
									"numinlets" : 1,
									"numoutlets" : 2,
									"id" : "obj-43",
									"outlettype" : [ "bang", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "noteout 1",
									"fontname" : "Verdana",
									"patching_rect" : [ 39.0, 310.0, 64.0, 20.0 ],
									"fontsize" : 11.1,
									"numinlets" : 3,
									"numoutlets" : 0,
									"id" : "obj-27"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ajm.midi2coll",
									"fontname" : "Verdana",
									"patching_rect" : [ 40.0, 87.0, 85.0, 20.0 ],
									"fontsize" : 11.1,
									"numinlets" : 1,
									"numoutlets" : 3,
									"id" : "obj-4",
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "coll",
									"fontname" : "Verdana",
									"patching_rect" : [ 39.0, 236.0, 59.5, 20.0 ],
									"fontsize" : 11.1,
									"numinlets" : 1,
									"numoutlets" : 4,
									"id" : "obj-2",
									"outlettype" : [ "", "", "", "" ],
									"save" : [ "#N", "coll", ";", "#T", "flags", 1, 0, ";", "#T", "store", "1.1.0", "72 73 3.623", ";", "#T", "store", "1.2.0", "71 72 2.819", ";", "#T", "store", "1.3.0", "69 73 2.027", ";", "#T", "store", "1.4.0", "67 80 0.927", ";", "#T", "store", "2.1.0", "72 82 3.723", ";", "#T", "store", "2.2.0", "71 65 2.767", ";", "#T", "store", "2.3.0", "69 66 1.946", ";", "#T", "store", "2.4.0", "67 66 0.935", ";", "#T", "store", "3.1.0", "72 83 3.671", ";", "#T", "store", "3.2.0", "71 21 2.752", ";", "#T", "store", "3.3.0", "69 55 2.056", ";", "#T", "store", "3.4.0", "67 80 1.002", ";", "#T", "store", "4.1.0", "72 90 4.123", ";", "#T", "store", "4.2.0", "71 56 3.125", ";", "#T", "store", "4.3.0", "69 66 2.104", ";", "#T", "store", "4.4.0", "67 65 1.029", ";" ],
									"saved_object_attributes" : 									{
										"embed" : 1
									}

								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 1 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 2 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 1 ],
									"destination" : [ "obj-15", 1 ],
									"hidden" : 0,
									"midpoints" : [ 428.0, 415.0, 342.0, 415.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 1 ],
									"destination" : [ "obj-27", 1 ],
									"hidden" : 0,
									"midpoints" : [ 157.0, 301.0, 71.0, 301.0 ]
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
									"source" : [ "obj-11", 1 ],
									"destination" : [ "obj-12", 1 ],
									"hidden" : 0,
									"midpoints" : [ 270.0, 356.0, 184.0, 356.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [ 169.5, 259.0, 287.0, 259.0, 287.0, 323.0, 161.5, 323.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [ 305.5, 258.0, 397.0, 258.0, 397.0, 385.0, 319.5, 385.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 1 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-10", 1 ],
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
									"source" : [ "obj-43", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-43", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-43", 0 ],
									"destination" : [ "obj-2", 0 ],
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
					"maxclass" : "comment",
					"text" : "Send a silent note to noteout so we don't have lag when playback first starts",
					"linecount" : 4,
					"fontname" : "Verdana",
					"patching_rect" : [ 230.0, 266.0, 122.0, 55.0 ],
					"hidden" : 1,
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-14"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess 0 0",
					"fontname" : "Verdana",
					"patching_rect" : [ 145.0, 294.0, 85.0, 20.0 ],
					"hidden" : 1,
					"fontsize" : 11.1,
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-19",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "thispatcher",
					"fontname" : "Verdana",
					"patching_rect" : [ 119.0, 466.0, 73.0, 20.0 ],
					"hidden" : 1,
					"fontsize" : 11.1,
					"numinlets" : 1,
					"numoutlets" : 2,
					"id" : "obj-7",
					"outlettype" : [ "", "" ],
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "ajm.bring-to-front-listener ajm.midi2coll",
					"fontname" : "Verdana",
					"patching_rect" : [ 119.0, 440.0, 237.0, 20.0 ],
					"hidden" : 1,
					"fontsize" : 11.1,
					"numinlets" : 0,
					"numoutlets" : 1,
					"id" : "obj-9",
					"outlettype" : [ "front" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess set",
					"fontname" : "Verdana",
					"patching_rect" : [ 94.0, 349.0, 84.0, 20.0 ],
					"hidden" : 1,
					"fontsize" : 11.100006,
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-11",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"fontname" : "Verdana",
					"patching_rect" : [ 36.0, 352.0, 50.0, 18.0 ],
					"fontsize" : 11.100006,
					"numinlets" : 2,
					"numoutlets" : 1,
					"id" : "obj-10",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "coll format: bars.beats.units, \"pitch velocity duration_in_beats\";\nDouble click coll to see the sequence and edit it.",
					"linecount" : 2,
					"fontname" : "Verdana",
					"patching_rect" : [ 83.0, 372.0, 373.0, 33.0 ],
					"fontsize" : 11.100006,
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-8"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "subpatch[3]",
					"text" : "p \"preventing auto clear\"",
					"fontname" : "Verdana",
					"patching_rect" : [ 366.0, 178.0, 161.0, 20.0 ],
					"fontsize" : 11.0,
					"numinlets" : 0,
					"numoutlets" : 0,
					"id" : "obj-12",
					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 292.0, 75.0, 398.0, 125.0 ],
						"bglocked" : 0,
						"defrect" : [ 292.0, 75.0, 398.0, 125.0 ],
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
									"text" : "ajm.midi2coll",
									"fontname" : "Verdana",
									"patching_rect" : [ 17.0, 20.0, 85.0, 20.0 ],
									"fontsize" : 11.1,
									"numinlets" : 1,
									"numoutlets" : 3,
									"id" : "obj-6",
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "coll",
									"fontname" : "Verdana",
									"patching_rect" : [ 69.0, 77.0, 59.5, 20.0 ],
									"fontsize" : 11.1,
									"numinlets" : 1,
									"numoutlets" : 4,
									"id" : "obj-2",
									"outlettype" : [ "", "", "", "" ],
									"save" : [ "#N", "coll", ";" ],
									"saved_object_attributes" : 									{
										"embed" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route clear",
									"fontname" : "Verdana",
									"patching_rect" : [ 17.0, 48.0, 71.0, 20.0 ],
									"fontsize" : 11.1,
									"numinlets" : 1,
									"numoutlets" : 2,
									"id" : "obj-1",
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Note that midi2coll first outputs a \"clear\" message to clear the coll. If this is not what you want (e.g. you are merging multiple MIDI files), then intercept the \"clear\" with [route clear]",
									"linecount" : 5,
									"fontname" : "Verdana",
									"patching_rect" : [ 145.0, 21.0, 236.0, 74.0 ],
									"fontsize" : 11.100006,
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-11"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 1 ],
									"destination" : [ "obj-2", 0 ],
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
					"maxclass" : "bpatcher",
					"patching_rect" : [ 407.0, 232.0, 113.0, 115.0 ],
					"name" : "ajm.help-transport.maxpat",
					"args" : [ "@transport", "ajm_m2c_help" ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-5"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "subpatch[2]",
					"text" : "p \"MIDI CC\"",
					"fontname" : "Verdana",
					"patching_rect" : [ 366.0, 151.0, 77.0, 20.0 ],
					"fontsize" : 11.0,
					"numinlets" : 0,
					"numoutlets" : 0,
					"id" : "obj-18",
					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 499.0, 44.0, 560.0, 402.0 ],
						"bglocked" : 0,
						"defrect" : [ 499.0, 44.0, 560.0, 402.0 ],
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
									"text" : "Compare this coll's contents with the one above.",
									"fontname" : "Verdana",
									"patching_rect" : [ 93.0, 367.0, 352.0, 20.0 ],
									"fontsize" : 11.1,
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-17"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "This example uses controller number 10, which is the standard controller to use for pan position. Other standard CC numbers are: 1=modulation, 7=volume, 64=sustain. Often you will use your synth's MIDI learn features to expose synth parameters to the CC number of your choice.",
									"linecount" : 5,
									"fontname" : "Verdana",
									"patching_rect" : [ 139.0, 48.0, 372.0, 74.0 ],
									"fontsize" : 11.1,
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-16"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "coll",
									"fontname" : "Verdana",
									"patching_rect" : [ 33.0, 366.0, 59.5, 20.0 ],
									"fontsize" : 11.1,
									"numinlets" : 1,
									"numoutlets" : 4,
									"id" : "obj-15",
									"outlettype" : [ "", "", "", "" ],
									"save" : [ "#N", "coll", ";", "#T", "flags", 1, 0, ";", "#T", "store", "1.1.0", "72 73 0.552", ";", "#T", "store", "1.1.240", "67 66 0.594", ";", "#T", "store", "1.2.0", "69 73 0.542", ";", "#T", "store", "1.2.240", "64 72 0.554", ";", "#T", "store", "1.3.0", "72 72 0.585", ";", "#T", "store", "1.3.240", "67 66 0.583", ";", "#T", "store", "1.4.0", "69 66 0.588", ";", "#T", "store", "1.4.240", "64 65 0.56", ";", "#T", "store", "2.1.0", "72 66 0.546", ";", "#T", "store", "2.1.240", "67 72 0.554", ";", "#T", "store", "2.2.0", "69 65 0.569", ";", "#T", "store", "2.2.240", "64 66 0.6", ";", "#T", "store", "2.3.0", "72 73 1.44", ";" ],
									"saved_object_attributes" : 									{
										"embed" : 1
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ajm.midi2coll @ccfilter true",
									"fontname" : "Verdana",
									"patching_rect" : [ 33.0, 337.0, 164.0, 20.0 ],
									"fontsize" : 11.1,
									"numinlets" : 1,
									"numoutlets" : 3,
									"id" : "obj-14",
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "ajm.midi2coll will store CC (continuous controller) messages in the [coll].",
									"fontname" : "Verdana",
									"patching_rect" : [ 28.0, 10.0, 463.0, 21.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-12"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "coll format for cc messages: \"cc {value} {controller_number}\";",
									"fontname" : "Verdana",
									"patching_rect" : [ 94.0, 179.0, 370.0, 20.0 ],
									"fontsize" : 11.100006,
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-10"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route cc",
									"fontname" : "Verdana",
									"patching_rect" : [ 244.0, 250.0, 55.0, 20.0 ],
									"fontsize" : 11.1,
									"numinlets" : 1,
									"numoutlets" : 2,
									"id" : "obj-9",
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ctlout",
									"fontname" : "Verdana",
									"patching_rect" : [ 244.0, 277.0, 46.0, 20.0 ],
									"fontsize" : 11.1,
									"numinlets" : 3,
									"numoutlets" : 0,
									"id" : "obj-8"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "cc 63 10",
									"fontname" : "Verdana",
									"patching_rect" : [ 171.0, 251.0, 68.0, 18.0 ],
									"fontsize" : 11.1,
									"numinlets" : 2,
									"numoutlets" : 1,
									"id" : "obj-7",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"patching_rect" : [ 337.0, 214.0, 113.0, 108.0 ],
									"name" : "ajm.help-transport.maxpat",
									"args" : [ "@transport", "ajm_m2c_cc" ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-6"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ajm.makenote @transport ajm_m2c_cc",
									"fontname" : "Verdana",
									"patching_rect" : [ 31.0, 220.0, 232.0, 20.0 ],
									"fontsize" : 11.1,
									"numinlets" : 2,
									"numoutlets" : 3,
									"id" : "obj-5",
									"outlettype" : [ "int", "int", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ajm.metro 16n @start 1.1.0 @transport ajm_m2c_cc",
									"fontname" : "Verdana",
									"patching_rect" : [ 65.0, 132.0, 309.0, 20.0 ],
									"fontsize" : 11.1,
									"numinlets" : 1,
									"numoutlets" : 2,
									"id" : "obj-43",
									"outlettype" : [ "bang", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "noteout",
									"fontname" : "Verdana",
									"patching_rect" : [ 31.0, 276.0, 85.0, 20.0 ],
									"fontsize" : 11.1,
									"numinlets" : 3,
									"numoutlets" : 0,
									"id" : "obj-27"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "ajm_cc_pan.mid",
									"fontname" : "Verdana",
									"patching_rect" : [ 31.0, 50.0, 103.0, 18.0 ],
									"fontsize" : 11.1,
									"numinlets" : 2,
									"numoutlets" : 1,
									"id" : "obj-29",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ajm.midi2coll",
									"fontname" : "Verdana",
									"patching_rect" : [ 31.0, 90.0, 85.0, 20.0 ],
									"fontsize" : 11.1,
									"numinlets" : 1,
									"numoutlets" : 3,
									"id" : "obj-4",
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "coll",
									"fontname" : "Verdana",
									"patching_rect" : [ 31.0, 181.0, 59.5, 20.0 ],
									"fontsize" : 11.1,
									"numinlets" : 1,
									"numoutlets" : 4,
									"id" : "obj-1",
									"outlettype" : [ "", "", "", "" ],
									"save" : [ "#N", "coll", ";", "#T", "flags", 1, 0, ";", "#T", "store", "1.1.0", "cc 63 10", "72 73 0.552", ";", "#T", "store", "1.1.240", "67 66 0.594", ";", "#T", "store", "1.2.0", "69 73 0.542", ";", "#T", "store", "1.2.240", "64 72 0.554", ";", "#T", "store", "1.3.0", "cc 0 10", "72 72 0.585", ";", "#T", "store", "1.3.240", "67 66 0.583", ";", "#T", "store", "1.4.0", "69 66 0.588", ";", "#T", "store", "1.4.240", "64 65 0.56", ";", "#T", "store", "2.1.0", "cc 127 10", "72 66 0.546", ";", "#T", "store", "2.1.240", "67 72 0.554", ";", "#T", "store", "2.2.0", "69 65 0.569", ";", "#T", "store", "2.2.240", "64 66 0.6", ";", "#T", "store", "2.3.0", "cc 63 10", "72 73 1.44", ";" ],
									"saved_object_attributes" : 									{
										"embed" : 1
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "If you don't want to use cc messages, you can prevent them from being loaded into the coll with the ccfilter attribute.",
									"linecount" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 198.0, 332.0, 352.0, 33.0 ],
									"fontsize" : 11.1,
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-2"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-1", 0 ],
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
									"source" : [ "obj-5", 1 ],
									"destination" : [ "obj-27", 1 ],
									"hidden" : 0,
									"midpoints" : [ 147.0, 246.0, 73.5, 246.0 ]
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
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-43", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 2 ],
									"destination" : [ "obj-7", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 2 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [ 40.5, 78.0, 18.0, 78.0, 18.0, 327.0, 42.5, 327.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
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
					"varname" : "subpatch[1]",
					"text" : "p quantize",
					"fontname" : "Verdana",
					"patching_rect" : [ 366.0, 101.0, 68.0, 20.0 ],
					"fontsize" : 11.0,
					"numinlets" : 0,
					"numoutlets" : 0,
					"id" : "obj-3",
					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 289.0, 47.0, 452.0, 381.0 ],
						"bglocked" : 0,
						"defrect" : [ 289.0, 47.0, 452.0, 381.0 ],
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
									"text" : "1.4.0",
									"fontname" : "Verdana",
									"patching_rect" : [ 101.0, 136.0, 50.0, 18.0 ],
									"fontsize" : 11.1,
									"numinlets" : 2,
									"numoutlets" : 1,
									"id" : "obj-11",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "This midi file has all the notes played on upbeats",
									"fontname" : "Verdana",
									"patching_rect" : [ 43.0, 11.0, 333.0, 20.0 ],
									"fontsize" : 11.1,
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-7"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "This bangs every quarter note, which will miss all the upbeats in the coll on the right",
									"linecount" : 3,
									"fontname" : "Verdana",
									"patching_rect" : [ 151.0, 124.0, 185.0, 47.0 ],
									"fontsize" : 11.1,
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-3"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Double click the colls to compare their contents",
									"linecount" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 130.0, 189.0, 155.0, 33.0 ],
									"fontsize" : 11.1,
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-12"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "gswitch2",
									"patching_rect" : [ 60.0, 134.0, 39.0, 32.0 ],
									"numinlets" : 2,
									"numoutlets" : 2,
									"id" : "obj-10",
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "coll",
									"fontname" : "Verdana",
									"patching_rect" : [ 329.0, 190.0, 59.5, 20.0 ],
									"fontsize" : 11.1,
									"numinlets" : 1,
									"numoutlets" : 4,
									"id" : "obj-9",
									"outlettype" : [ "", "", "", "" ],
									"save" : [ "#N", "coll", ";", "#T", "flags", 1, 0, ";", "#T", "store", "1.1.120", "60 79 0.75", ";", "#T", "store", "1.2.120", "62 79 0.75", ";", "#T", "store", "1.3.120", "64 79 0.75", ";", "#T", "store", "1.4.120", "65 79 0.75", ";", "#T", "store", "2.1.120", "67 79 0.75", ";", "#T", "store", "2.2.120", "69 79 0.75", ";", "#T", "store", "2.3.120", "71 79 0.75", ";", "#T", "store", "2.4.120", "72 79 0.75", ";" ],
									"saved_object_attributes" : 									{
										"embed" : 1
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ajm.midi2coll",
									"fontname" : "Verdana",
									"patching_rect" : [ 329.0, 69.0, 85.0, 20.0 ],
									"fontsize" : 11.1,
									"numinlets" : 1,
									"numoutlets" : 3,
									"id" : "obj-8",
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"patching_rect" : [ 296.0, 239.0, 113.0, 115.0 ],
									"name" : "ajm.help-transport.maxpat",
									"args" : [ "@transport", "ajm_m2c_qtz" ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-6"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ajm.makenote @transport ajm_m2c_qtz",
									"fontname" : "Verdana",
									"patching_rect" : [ 40.0, 233.0, 238.0, 20.0 ],
									"fontsize" : 11.1,
									"numinlets" : 2,
									"numoutlets" : 3,
									"id" : "obj-5",
									"outlettype" : [ "int", "int", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ajm.metro 4n @start 1.1.0 @transport ajm_m2c_qtz",
									"fontname" : "Verdana",
									"patching_rect" : [ 80.0, 104.0, 309.0, 20.0 ],
									"fontsize" : 11.1,
									"numinlets" : 1,
									"numoutlets" : 2,
									"id" : "obj-43",
									"outlettype" : [ "bang", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "noteout",
									"fontname" : "Verdana",
									"patching_rect" : [ 40.0, 268.0, 85.0, 20.0 ],
									"fontsize" : 11.1,
									"numinlets" : 3,
									"numoutlets" : 0,
									"id" : "obj-27"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "ajm_shifted_scale.mid",
									"fontname" : "Verdana",
									"patching_rect" : [ 138.0, 37.0, 136.0, 18.0 ],
									"fontsize" : 11.1,
									"numinlets" : 2,
									"numoutlets" : 1,
									"id" : "obj-29",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ajm.midi2coll @quantize 4n",
									"fontname" : "Verdana",
									"patching_rect" : [ 40.0, 69.0, 166.0, 20.0 ],
									"fontsize" : 11.1,
									"numinlets" : 1,
									"numoutlets" : 3,
									"id" : "obj-4",
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "coll",
									"fontname" : "Verdana",
									"patching_rect" : [ 40.0, 194.0, 59.5, 20.0 ],
									"fontsize" : 11.1,
									"numinlets" : 1,
									"numoutlets" : 4,
									"id" : "obj-2",
									"outlettype" : [ "", "", "", "" ],
									"save" : [ "#N", "coll", ";", "#T", "flags", 1, 0, ";", "#T", "store", "1.1.0", "60 79 1.0", ";", "#T", "store", "1.2.0", "62 79 1.0", ";", "#T", "store", "1.3.0", "64 79 1.0", ";", "#T", "store", "1.4.0", "65 79 1.0", ";", "#T", "store", "2.1.0", "67 79 1.0", ";", "#T", "store", "2.2.0", "69 79 1.0", ";", "#T", "store", "2.3.0", "71 79 1.0", ";", "#T", "store", "2.4.0", "72 79 1.0", ";" ],
									"saved_object_attributes" : 									{
										"embed" : 1
									}

								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-43", 0 ],
									"destination" : [ "obj-11", 1 ],
									"hidden" : 0,
									"midpoints" : [ 89.5, 128.0, 141.5, 128.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-43", 0 ],
									"destination" : [ "obj-10", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [ 147.5, 61.0, 49.5, 61.0 ]
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
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [ 147.5, 61.0, 338.5, 61.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [ 338.5, 95.0, 399.0, 95.0, 399.0, 177.0, 338.5, 177.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 1 ],
									"destination" : [ "obj-27", 1 ],
									"hidden" : 0,
									"midpoints" : [ 159.0, 259.0, 82.5, 259.0 ]
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
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [ 338.5, 226.0, 49.5, 226.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [ 69.5, 185.0, 49.5, 185.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 1 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [ 89.5, 186.0, 338.5, 186.0 ]
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
					"text" : "ajm.makenote @transport ajm_m2c_help",
					"fontname" : "Verdana",
					"patching_rect" : [ 23.0, 410.0, 244.0, 20.0 ],
					"fontsize" : 11.100006,
					"numinlets" : 2,
					"numoutlets" : 3,
					"id" : "obj-17",
					"outlettype" : [ "int", "int", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "subpatch",
					"text" : "p \"time signatures\"",
					"fontname" : "Verdana",
					"patching_rect" : [ 366.0, 76.0, 117.0, 20.0 ],
					"fontsize" : 11.0,
					"numinlets" : 0,
					"numoutlets" : 0,
					"id" : "obj-16",
					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 287.0, 56.0, 477.0, 336.0 ],
						"bglocked" : 0,
						"defrect" : [ 287.0, 56.0, 477.0, 336.0 ],
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
									"text" : "This transport also uses \"timesig 5 4\"",
									"linecount" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 344.0, 181.0, 116.0, 33.0 ],
									"fontsize" : 11.1,
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-9"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"patching_rect" : [ 347.0, 213.0, 113.0, 115.0 ],
									"name" : "ajm.help-transport.maxpat",
									"args" : [ "@transport", "ajm_m2c_ts", "@timesig", 5, 4 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-10"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess set",
									"fontname" : "Verdana",
									"patching_rect" : [ 214.0, 192.0, 84.0, 20.0 ],
									"hidden" : 1,
									"fontsize" : 11.1,
									"numinlets" : 1,
									"numoutlets" : 1,
									"id" : "obj-1",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "you can use messages or attributes to change the timesig",
									"linecount" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 259.0, 81.0, 195.0, 33.0 ],
									"fontsize" : 11.1,
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-16"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "timesig 5 4",
									"fontname" : "Verdana",
									"patching_rect" : [ 183.0, 79.0, 73.0, 18.0 ],
									"fontsize" : 11.1,
									"numinlets" : 2,
									"numoutlets" : 1,
									"id" : "obj-13",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "the default time signature is 4/4",
									"fontname" : "Verdana",
									"patching_rect" : [ 102.0, 44.0, 191.0, 20.0 ],
									"fontsize" : 11.1,
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-8"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ajm.makenote @transport ajm_m2c_ts",
									"fontname" : "Verdana",
									"patching_rect" : [ 51.0, 223.0, 231.0, 20.0 ],
									"fontsize" : 11.1,
									"numinlets" : 2,
									"numoutlets" : 3,
									"id" : "obj-5",
									"outlettype" : [ "int", "int", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "midi2coll needs to be told the time signature of the midi file. \nIt currently does not support time signature changes.",
									"linecount" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 42.0, 5.0, 357.0, 33.0 ],
									"fontsize" : 11.1,
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-7"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"fontname" : "Verdana",
									"patching_rect" : [ 127.0, 188.0, 79.0, 18.0 ],
									"fontsize" : 11.1,
									"numinlets" : 2,
									"numoutlets" : 1,
									"id" : "obj-3",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ajm.metro 8n @start 1.1.0 @transport ajm_m2c_ts",
									"fontname" : "Verdana",
									"patching_rect" : [ 113.0, 148.0, 302.0, 20.0 ],
									"fontsize" : 11.1,
									"numinlets" : 1,
									"numoutlets" : 2,
									"id" : "obj-43",
									"outlettype" : [ "bang", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "noteout",
									"fontname" : "Verdana",
									"patching_rect" : [ 51.0, 258.0, 85.0, 20.0 ],
									"fontsize" : 11.1,
									"numinlets" : 3,
									"numoutlets" : 0,
									"id" : "obj-27"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "ajm_timesig.mid",
									"fontname" : "Verdana",
									"patching_rect" : [ 51.0, 74.0, 104.0, 18.0 ],
									"fontsize" : 11.1,
									"numinlets" : 2,
									"numoutlets" : 1,
									"id" : "obj-29",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ajm.midi2coll @timesig 5 4",
									"fontname" : "Verdana",
									"patching_rect" : [ 51.0, 107.0, 163.0, 20.0 ],
									"fontsize" : 11.1,
									"numinlets" : 1,
									"numoutlets" : 3,
									"id" : "obj-4",
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "coll",
									"fontname" : "Verdana",
									"patching_rect" : [ 51.0, 187.0, 59.5, 20.0 ],
									"fontsize" : 11.1,
									"numinlets" : 1,
									"numoutlets" : 4,
									"id" : "obj-2",
									"outlettype" : [ "", "", "", "" ],
									"save" : [ "#N", "coll", ";", "#T", "flags", 1, 0, ";", "#T", "store", "1.1.0", "58 82 0.971", "39 78 2.656", ";", "#T", "store", "1.2.0", "55 81 0.588", ";", "#T", "store", "1.2.240", "58 90 0.527", ";", "#T", "store", "1.3.0", "55 81 0.571", ";", "#T", "store", "1.3.240", "58 81 0.527", ";", "#T", "store", "1.4.0", "60 83 0.467", "36 90 2.094", ";", "#T", "store", "1.5.0", "55 90 0.504", ";", "#T", "store", "2.1.0", "58 83 0.992", "39 83 3.198", ";", "#T", "store", "2.2.0", "55 82 0.54", ";", "#T", "store", "2.2.240", "58 90 0.513", ";", "#T", "store", "2.3.0", "55 83 0.569", ";", "#T", "store", "2.3.240", "58 73 0.573", ";", "#T", "store", "2.4.0", "60 66 0.54", "36 72 1.813", ";", "#T", "store", "2.5.0", "55 81 0.535", ";", "#T", "store", "3.1.0", "54 80 1.213", "42 89 2.315", ";", "#T", "store", "3.2.240", "57 81 1.038", ";", "#T", "store", "3.4.0", "49 90 0.49", "37 73 2.217", ";", "#T", "store", "3.5.0", "52 81 0.521", ";", "#T", "store", "4.1.0", "54 90 1.396", "42 90 2.965", ";", "#T", "store", "4.2.240", "57 63 1.246", ";", "#T", "store", "4.4.0", "48 66 0.508", "36 72 2.058", ";", "#T", "store", "4.5.0", "51 81 0.419", ";", "#T", "store", "5.1.0", "58 90 1.006", "39 80 2.977", ";", "#T", "store", "5.2.0", "55 81 0.467", ";", "#T", "store", "5.2.240", "58 73 0.598", ";", "#T", "store", "5.3.0", "55 81 0.588", ";", "#T", "store", "5.3.240", "58 72 0.55", ";", "#T", "store", "5.4.0", "60 54 0.469", "36 72 2.171", ";", "#T", "store", "5.5.0", "55 82 0.421", ";", "#T", "store", "6.1.0", "58 81 1.004", "39 82 3.042", ";", "#T", "store", "6.2.0", "55 80 0.573", ";", "#T", "store", "6.2.240", "58 80 0.558", ";", "#T", "store", "6.3.0", "55 73 0.56", ";", "#T", "store", "6.3.240", "58 72 0.563", ";", "#T", "store", "6.4.0", "60 56 0.519", "36 72 2.16", ";", "#T", "store", "6.5.0", "55 80 0.375", ";", "#T", "store", "7.1.0", "30 81 0.504", "39 81 0.838", "51 90 1.36", ";" ],
									"saved_object_attributes" : 									{
										"embed" : 1
									}

								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-43", 0 ],
									"destination" : [ "obj-3", 1 ],
									"hidden" : 0,
									"midpoints" : [ 122.5, 179.0, 196.5, 179.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-43", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [ 122.5, 178.0, 60.5, 178.0 ]
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
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [ 192.5, 99.0, 60.5, 99.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 1 ],
									"destination" : [ "obj-27", 1 ],
									"hidden" : 0,
									"midpoints" : [ 166.5, 252.0, 93.5, 252.0 ]
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
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 1,
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
					"maxclass" : "bpatcher",
					"patching_rect" : [ 384.0, 425.0, 145.0, 55.0 ],
					"name" : "ajm.seealso.maxpat",
					"args" : [ "ajm.metro", "ajm.makenote", "coll" ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-60",
					"lockeddragscroll" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"patching_rect" : [ 392.0, 8.0, 138.0, 55.0 ],
					"name" : "ajm.helplinks.maxpat",
					"args" : [  ],
					"numinlets" : 0,
					"numoutlets" : 0,
					"id" : "obj-48",
					"lockeddragscroll" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "convert MIDI files to coll format",
					"fontname" : "Verdana",
					"patching_rect" : [ 127.0, 22.0, 205.0, 21.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-13"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "ajm.midi2coll",
					"fontname" : "Arial",
					"patching_rect" : [ 10.0, 11.0, 125.0, 27.0 ],
					"fontsize" : 18.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-57"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Ruby abstraction",
					"fontname" : "Verdana",
					"patching_rect" : [ 14.0, 39.0, 100.0, 17.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-15"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 8.0, 8.0, 327.0, 50.0 ],
					"grad1" : [ 0.823529, 1.0, 0.956863, 1.0 ],
					"rounded" : 12,
					"grad2" : [ 0.219608, 0.564706, 0.462745, 1.0 ],
					"mode" : 1,
					"numinlets" : 1,
					"angle" : 270.0,
					"numoutlets" : 0,
					"id" : "obj-50"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 7.0, 7.0, 330.0, 54.0 ],
					"grad1" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"rounded" : 16,
					"grad2" : [ 0.0, 0.0, 0.0, 1.0 ],
					"mode" : 1,
					"numinlets" : 1,
					"angle" : 270.0,
					"numoutlets" : 0,
					"id" : "obj-54"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "ajm.metro 4n @start 1.1.0 @transport ajm_m2c_help",
					"fontname" : "Verdana",
					"patching_rect" : [ 50.0, 323.0, 314.0, 20.0 ],
					"fontsize" : 11.1,
					"numinlets" : 1,
					"numoutlets" : 2,
					"id" : "obj-43",
					"outlettype" : [ "bang", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "noteout",
					"fontname" : "Verdana",
					"patching_rect" : [ 23.0, 444.0, 86.0, 20.0 ],
					"fontsize" : 11.1,
					"numinlets" : 3,
					"numoutlets" : 0,
					"id" : "obj-27"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "or bang for a file browser",
					"fontname" : "Verdana",
					"patching_rect" : [ 151.0, 237.0, 178.0, 20.0 ],
					"fontsize" : 11.1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-36"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "or drag and drop",
					"fontname" : "Verdana",
					"patching_rect" : [ 152.0, 178.0, 150.0, 20.0 ],
					"fontsize" : 11.1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-35"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "or absolute path",
					"fontname" : "Verdana",
					"patching_rect" : [ 152.0, 128.0, 110.0, 20.0 ],
					"fontsize" : 11.1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-32"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "load MIDI by filename (if on path)",
					"fontname" : "Verdana",
					"patching_rect" : [ 142.0, 73.0, 211.0, 20.0 ],
					"fontsize" : 11.1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-31"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "ajm_midi2coll.mid",
					"fontname" : "Verdana",
					"patching_rect" : [ 23.0, 74.0, 113.0, 18.0 ],
					"fontsize" : 11.1,
					"numinlets" : 2,
					"numoutlets" : 1,
					"id" : "obj-29",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"patching_rect" : [ 112.0, 228.0, 37.0, 37.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-28",
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "dropfile",
					"types" : [ "Midi" ],
					"patching_rect" : [ 42.0, 159.0, 106.0, 55.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"id" : "obj-1",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/Users/username/Music/somefile.mid",
					"fontname" : "Verdana",
					"patching_rect" : [ 38.0, 108.0, 219.0, 18.0 ],
					"fontsize" : 11.1,
					"numinlets" : 2,
					"numoutlets" : 1,
					"id" : "obj-6",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "ajm.midi2coll",
					"fontname" : "Verdana",
					"patching_rect" : [ 23.0, 295.0, 85.0, 20.0 ],
					"fontsize" : 11.1,
					"numinlets" : 1,
					"numoutlets" : 3,
					"id" : "obj-4",
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "coll",
					"fontname" : "Verdana",
					"patching_rect" : [ 23.0, 377.0, 59.5, 20.0 ],
					"fontsize" : 11.1,
					"numinlets" : 1,
					"numoutlets" : 4,
					"id" : "obj-2",
					"outlettype" : [ "", "", "", "" ],
					"save" : [ "#N", "coll", ";", "#T", "flags", 1, 0, ";", "#T", "store", "1.1.0", "65 66 1.027", "57 73 4.075", ";", "#T", "store", "1.2.0", "67 72 1.006", ";", "#T", "store", "1.3.0", "65 66 1.027", ";", "#T", "store", "1.4.0", "62 65 1.063", ";", "#T", "store", "2.1.0", "64 80 1.063", "55 81 3.981", ";", "#T", "store", "2.2.0", "65 72 1.031", ";", "#T", "store", "2.3.0", "64 73 1.046", ";", "#T", "store", "2.4.0", "60 72 1.0", ";", "#T", "store", "3.1.0", "62 82 2.233", "53 90 4.188", ";", "#T", "store", "3.3.0", "65 80 2.021", ";", "#T", "store", "4.1.0", "67 80 2.098", "52 82 4.142", ";", "#T", "store", "4.3.0", "69 73 2.094", ";", "#T", "store", "5.1.0", "65 65 1.052", "50 81 4.013", ";", "#T", "store", "5.2.0", "67 50 1.031", ";", "#T", "store", "5.3.0", "65 81 1.015", ";", "#T", "store", "5.4.0", "62 72 1.108", ";", "#T", "store", "6.1.0", "64 73 1.081", "48 66 4.367", ";", "#T", "store", "6.2.0", "65 65 1.09", ";", "#T", "store", "6.3.0", "64 56 1.117", ";", "#T", "store", "6.4.0", "60 54 1.256", ";", "#T", "store", "7.1.0", "50 80 5.654", "62 72 5.733", ";" ],
					"saved_object_attributes" : 					{
						"embed" : 1
					}

				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [ 59.5, 347.0, 32.5, 347.0 ]
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
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-10", 1 ],
					"hidden" : 0,
					"midpoints" : [ 59.5, 347.0, 76.5, 347.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 1,
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
					"midpoints" : [ 51.5, 218.0, 32.5, 218.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [ 121.5, 274.0, 32.5, 274.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [ 47.5, 139.0, 32.5, 139.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 1 ],
					"destination" : [ "obj-27", 1 ],
					"hidden" : 0,
					"midpoints" : [ 145.0, 435.0, 66.0, 435.0 ]
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
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
