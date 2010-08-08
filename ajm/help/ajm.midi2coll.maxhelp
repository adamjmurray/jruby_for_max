{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 11.0, 44.0, 552.0, 494.0 ],
		"bglocked" : 0,
		"defrect" : [ 11.0, 44.0, 552.0, 494.0 ],
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
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "clear",
					"outlettype" : [ "" ],
					"fontsize" : 11.100006,
					"numinlets" : 2,
					"patching_rect" : [ 9.0, 378.0, 37.0, 18.0 ],
					"numoutlets" : 1,
					"id" : "obj-22",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "subpatch[4]",
					"text" : "p \"multiple tracks\"",
					"fontsize" : 11.0,
					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
					"numinlets" : 0,
					"patching_rect" : [ 383.0, 126.0, 113.0, 20.0 ],
					"numoutlets" : 0,
					"id" : "obj-20",
					"fontname" : "Verdana",
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
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "To handle multiple tracks, the second outlet will indicate the track number before dumping out the coll info (starting with a \"clear\" message)",
									"linecount" : 4,
									"fontsize" : 11.1,
									"numinlets" : 1,
									"patching_rect" : [ 284.0, 65.0, 222.0, 60.0 ],
									"numoutlets" : 0,
									"id" : "obj-17",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "ajm.midi2coll supports multitrack (MIDI format 1) files",
									"fontsize" : 11.1,
									"numinlets" : 1,
									"patching_rect" : [ 39.0, 12.0, 318.0, 20.0 ],
									"numoutlets" : 0,
									"id" : "obj-8",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 11.1,
									"numinlets" : 1,
									"patching_rect" : [ 106.0, 112.0, 39.0, 20.0 ],
									"numoutlets" : 2,
									"id" : "obj-3",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ajm.makenote @transport ajm_m2c_mt",
									"outlettype" : [ "float", "float", "" ],
									"fontsize" : 11.1,
									"numinlets" : 2,
									"patching_rect" : [ 310.0, 389.0, 236.0, 20.0 ],
									"numoutlets" : 3,
									"id" : "obj-14",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "noteout 3",
									"fontsize" : 11.1,
									"numinlets" : 3,
									"patching_rect" : [ 310.0, 424.0, 64.0, 20.0 ],
									"numoutlets" : 0,
									"id" : "obj-15",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "coll",
									"outlettype" : [ "", "", "", "" ],
									"fontsize" : 11.1,
									"numinlets" : 1,
									"patching_rect" : [ 296.0, 235.0, 59.5, 20.0 ],
									"numoutlets" : 4,
									"id" : "obj-16",
									"fontname" : "Verdana",
									"coll_data" : 									{
										"count" : 13,
										"data" : [ 											{
												"key" : "1.2.240",
												"value" : [ "72 80 1.806" ]
											}
, 											{
												"key" : "1.4.240",
												"value" : [ "71 66 0.292" ]
											}
, 											{
												"key" : "1.4.360",
												"value" : [ "69 66 0.569" ]
											}
, 											{
												"key" : "2.1.0",
												"value" : [ "67 72 1.571" ]
											}
, 											{
												"key" : "2.2.240",
												"value" : [ "72 72 1.629" ]
											}
, 											{
												"key" : "2.4.0",
												"value" : [ "71 80 1.121" ]
											}
, 											{
												"key" : "3.1.0",
												"value" : [ "69 81 0.31" ]
											}
, 											{
												"key" : "3.1.120",
												"value" : [ "67 80 2.271" ]
											}
, 											{
												"key" : "3.3.240",
												"value" : [ "72 72 0.329" ]
											}
, 											{
												"key" : "3.3.360",
												"value" : [ "71 80 0.35" ]
											}
, 											{
												"key" : "3.4.0",
												"value" : [ "69 81 1.123" ]
											}
, 											{
												"key" : "4.1.0",
												"value" : [ "67 65 3.006" ]
											}
, 											{
												"key" : "4.4.0",
												"value" : [ "72 66 1.846" ]
											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"embed" : 1
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ajm.makenote @transport ajm_m2c_mt",
									"outlettype" : [ "float", "float", "" ],
									"fontsize" : 11.1,
									"numinlets" : 2,
									"patching_rect" : [ 152.0, 328.0, 236.0, 20.0 ],
									"numoutlets" : 3,
									"id" : "obj-11",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "noteout 2",
									"fontsize" : 11.1,
									"numinlets" : 3,
									"patching_rect" : [ 152.0, 363.0, 64.0, 20.0 ],
									"numoutlets" : 0,
									"id" : "obj-12",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "coll",
									"outlettype" : [ "", "", "", "" ],
									"fontsize" : 11.1,
									"numinlets" : 1,
									"patching_rect" : [ 160.0, 234.0, 59.5, 20.0 ],
									"numoutlets" : 4,
									"id" : "obj-13",
									"fontname" : "Verdana",
									"coll_data" : 									{
										"count" : 16,
										"data" : [ 											{
												"key" : "1.1.0",
												"value" : [ "72 52 1.308" ]
											}
, 											{
												"key" : "1.1.240",
												"value" : [ "71 45 0.746" ]
											}
, 											{
												"key" : "1.2.0",
												"value" : [ "69 90 0.942" ]
											}
, 											{
												"key" : "1.3.0",
												"value" : [ "67 66 0.802" ]
											}
, 											{
												"key" : "1.4.0",
												"value" : [ "72 63 0.877" ]
											}
, 											{
												"key" : "1.4.240",
												"value" : [ "71 63 0.952" ]
											}
, 											{
												"key" : "2.1.240",
												"value" : [ "69 63 1.179" ]
											}
, 											{
												"key" : "2.2.240",
												"value" : [ "67 73 1.113" ]
											}
, 											{
												"key" : "2.3.240",
												"value" : [ "72 65 1.06" ]
											}
, 											{
												"key" : "2.4.240",
												"value" : [ "71 65 0.685" ]
											}
, 											{
												"key" : "3.1.0",
												"value" : [ "69 80 1.229" ]
											}
, 											{
												"key" : "3.2.0",
												"value" : [ "67 73 1.581" ]
											}
, 											{
												"key" : "3.3.240",
												"value" : [ "72 80 1.546" ]
											}
, 											{
												"key" : "4.1.0",
												"value" : [ "71 73 1.515" ]
											}
, 											{
												"key" : "4.2.240",
												"value" : [ "69 66 1.094" ]
											}
, 											{
												"key" : "4.3.240",
												"value" : [ "67 66 1.685" ]
											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"embed" : 1
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate 3",
									"outlettype" : [ "", "", "" ],
									"fontsize" : 11.1,
									"numinlets" : 2,
									"patching_rect" : [ 39.0, 158.0, 83.0, 20.0 ],
									"numoutlets" : 3,
									"id" : "obj-10",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "ajm.help-transport.maxpat",
									"args" : [ "@transport", "ajm_m2c_mt" ],
									"numinlets" : 1,
									"patching_rect" : [ 426.0, 216.0, 113.0, 115.0 ],
									"numoutlets" : 0,
									"id" : "obj-9"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "ajm_multitrack.mid",
									"outlettype" : [ "" ],
									"fontsize" : 11.1,
									"numinlets" : 2,
									"patching_rect" : [ 40.0, 56.0, 120.0, 18.0 ],
									"numoutlets" : 1,
									"id" : "obj-6",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ajm.makenote @transport ajm_m2c_mt",
									"outlettype" : [ "float", "float", "" ],
									"fontsize" : 11.1,
									"numinlets" : 2,
									"patching_rect" : [ 39.0, 275.0, 236.0, 20.0 ],
									"numoutlets" : 3,
									"id" : "obj-5",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "number of tracks",
									"fontsize" : 11.1,
									"numinlets" : 1,
									"patching_rect" : [ 143.0, 112.0, 110.0, 20.0 ],
									"numoutlets" : 0,
									"id" : "obj-7",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ajm.metro 16n @start 1.1.0 @transport ajm_m2c_mt",
									"linecount" : 2,
									"outlettype" : [ "bang", "bang" ],
									"fontsize" : 11.1,
									"numinlets" : 2,
									"patching_rect" : [ 296.0, 162.0, 183.0, 33.0 ],
									"numoutlets" : 2,
									"id" : "obj-43",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "noteout 1",
									"fontsize" : 11.1,
									"numinlets" : 3,
									"patching_rect" : [ 39.0, 310.0, 64.0, 20.0 ],
									"numoutlets" : 0,
									"id" : "obj-27",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ajm.midi2coll",
									"outlettype" : [ "", "", "" ],
									"fontsize" : 11.1,
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 40.0, 87.0, 85.0, 20.0 ],
									"numoutlets" : 3,
									"id" : "obj-4",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "coll",
									"outlettype" : [ "", "", "", "" ],
									"fontsize" : 11.1,
									"numinlets" : 1,
									"patching_rect" : [ 39.0, 236.0, 59.5, 20.0 ],
									"numoutlets" : 4,
									"id" : "obj-2",
									"fontname" : "Verdana",
									"coll_data" : 									{
										"count" : 16,
										"data" : [ 											{
												"key" : "1.1.0",
												"value" : [ "72 73 3.623" ]
											}
, 											{
												"key" : "1.2.0",
												"value" : [ "71 72 2.819" ]
											}
, 											{
												"key" : "1.3.0",
												"value" : [ "69 73 2.027" ]
											}
, 											{
												"key" : "1.4.0",
												"value" : [ "67 80 0.927" ]
											}
, 											{
												"key" : "2.1.0",
												"value" : [ "72 82 3.723" ]
											}
, 											{
												"key" : "2.2.0",
												"value" : [ "71 65 2.767" ]
											}
, 											{
												"key" : "2.3.0",
												"value" : [ "69 66 1.946" ]
											}
, 											{
												"key" : "2.4.0",
												"value" : [ "67 66 0.935" ]
											}
, 											{
												"key" : "3.1.0",
												"value" : [ "72 83 3.671" ]
											}
, 											{
												"key" : "3.2.0",
												"value" : [ "71 21 2.752" ]
											}
, 											{
												"key" : "3.3.0",
												"value" : [ "69 55 2.056" ]
											}
, 											{
												"key" : "3.4.0",
												"value" : [ "67 80 1.002" ]
											}
, 											{
												"key" : "4.1.0",
												"value" : [ "72 90 4.123" ]
											}
, 											{
												"key" : "4.2.0",
												"value" : [ "71 56 3.125" ]
											}
, 											{
												"key" : "4.3.0",
												"value" : [ "69 66 2.104" ]
											}
, 											{
												"key" : "4.4.0",
												"value" : [ "67 65 1.029" ]
											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"embed" : 1
									}

								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-43", 0 ],
									"destination" : [ "obj-2", 0 ],
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
									"destination" : [ "obj-16", 0 ],
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
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-10", 1 ],
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
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
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
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [ 169.5, 259.0, 287.0, 259.0, 287.0, 323.0, 161.5, 323.0 ]
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
									"source" : [ "obj-11", 1 ],
									"destination" : [ "obj-12", 1 ],
									"hidden" : 0,
									"midpoints" : [ 270.0, 356.0, 184.0, 356.0 ]
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
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
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
									"source" : [ "obj-14", 1 ],
									"destination" : [ "obj-15", 1 ],
									"hidden" : 0,
									"midpoints" : [ 428.0, 415.0, 342.0, 415.0 ]
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
									"source" : [ "obj-10", 2 ],
									"destination" : [ "obj-16", 0 ],
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
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontsize" : 11.1,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 11.1,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"fontname" : "Verdana"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Send a silent note to noteout so we don't have lag when playback first starts",
					"linecount" : 4,
					"fontsize" : 10.0,
					"numinlets" : 1,
					"patching_rect" : [ 254.0, 266.0, 122.0, 55.0 ],
					"numoutlets" : 0,
					"hidden" : 1,
					"id" : "obj-14",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess 0 0",
					"outlettype" : [ "" ],
					"fontsize" : 11.1,
					"numinlets" : 1,
					"patching_rect" : [ 169.0, 294.0, 85.0, 20.0 ],
					"numoutlets" : 1,
					"hidden" : 1,
					"id" : "obj-19",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "thispatcher",
					"outlettype" : [ "", "" ],
					"fontsize" : 11.1,
					"numinlets" : 1,
					"patching_rect" : [ 143.0, 466.0, 73.0, 20.0 ],
					"numoutlets" : 2,
					"hidden" : 1,
					"id" : "obj-7",
					"fontname" : "Verdana",
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "ajm.bring-to-front-listener ajm.midi2coll",
					"outlettype" : [ "front" ],
					"fontsize" : 11.1,
					"numinlets" : 0,
					"patching_rect" : [ 143.0, 440.0, 237.0, 20.0 ],
					"numoutlets" : 1,
					"hidden" : 1,
					"id" : "obj-9",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess set",
					"outlettype" : [ "" ],
					"fontsize" : 11.100006,
					"numinlets" : 1,
					"patching_rect" : [ 131.0, 349.0, 84.0, 20.0 ],
					"numoutlets" : 1,
					"hidden" : 1,
					"id" : "obj-11",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "3.1.0",
					"outlettype" : [ "" ],
					"fontsize" : 11.100006,
					"numinlets" : 2,
					"patching_rect" : [ 76.0, 350.0, 50.0, 18.0 ],
					"numoutlets" : 1,
					"id" : "obj-10",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "coll format: bars.beats.units, \"pitch velocity duration_in_beats\";\nDouble click coll to see the sequence and edit it.",
					"linecount" : 2,
					"fontsize" : 11.100006,
					"numinlets" : 1,
					"patching_rect" : [ 107.0, 372.0, 373.0, 33.0 ],
					"numoutlets" : 0,
					"id" : "obj-8",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "subpatch[3]",
					"text" : "p \"preventing auto clear\"",
					"fontsize" : 11.0,
					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
					"numinlets" : 0,
					"patching_rect" : [ 383.0, 178.0, 161.0, 20.0 ],
					"numoutlets" : 0,
					"id" : "obj-12",
					"fontname" : "Verdana",
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
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ajm.midi2coll",
									"outlettype" : [ "", "", "" ],
									"fontsize" : 11.1,
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 17.0, 20.0, 85.0, 20.0 ],
									"numoutlets" : 3,
									"id" : "obj-6",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "coll",
									"outlettype" : [ "", "", "", "" ],
									"fontsize" : 11.1,
									"numinlets" : 1,
									"patching_rect" : [ 69.0, 77.0, 59.5, 20.0 ],
									"numoutlets" : 4,
									"id" : "obj-2",
									"fontname" : "Verdana",
									"saved_object_attributes" : 									{
										"embed" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route clear",
									"outlettype" : [ "", "" ],
									"fontsize" : 11.1,
									"numinlets" : 1,
									"patching_rect" : [ 17.0, 48.0, 71.0, 20.0 ],
									"numoutlets" : 2,
									"id" : "obj-1",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Note that midi2coll first outputs a \"clear\" message to clear the coll. If this is not what you want (e.g. you are merging multiple MIDI files), then intercept the \"clear\" with [route clear]",
									"linecount" : 5,
									"fontsize" : 11.100006,
									"numinlets" : 1,
									"patching_rect" : [ 145.0, 21.0, 236.0, 74.0 ],
									"numoutlets" : 0,
									"id" : "obj-11",
									"fontname" : "Verdana"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-1", 1 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontsize" : 11.1,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 11.1,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"fontname" : "Verdana"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"name" : "ajm.help-transport.maxpat",
					"args" : [ "@transport", "ajm_m2c_help" ],
					"numinlets" : 1,
					"patching_rect" : [ 424.0, 232.0, 113.0, 115.0 ],
					"numoutlets" : 0,
					"id" : "obj-5"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "subpatch[2]",
					"text" : "p \"MIDI CC\"",
					"fontsize" : 11.0,
					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
					"numinlets" : 0,
					"patching_rect" : [ 383.0, 151.0, 77.0, 20.0 ],
					"numoutlets" : 0,
					"id" : "obj-18",
					"fontname" : "Verdana",
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
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Compare this coll's contents with the one above.",
									"fontsize" : 11.1,
									"numinlets" : 1,
									"patching_rect" : [ 93.0, 367.0, 352.0, 20.0 ],
									"numoutlets" : 0,
									"id" : "obj-17",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "This example uses controller number 10, which is the standard controller to use for pan position. Other standard CC numbers are: 1=modulation, 7=volume, 64=sustain. Often you will use your synth's MIDI learn features to expose synth parameters to the CC number of your choice.",
									"linecount" : 5,
									"fontsize" : 11.1,
									"numinlets" : 1,
									"patching_rect" : [ 139.0, 48.0, 372.0, 74.0 ],
									"numoutlets" : 0,
									"id" : "obj-16",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "coll",
									"outlettype" : [ "", "", "", "" ],
									"fontsize" : 11.1,
									"numinlets" : 1,
									"patching_rect" : [ 33.0, 366.0, 59.5, 20.0 ],
									"numoutlets" : 4,
									"id" : "obj-15",
									"fontname" : "Verdana",
									"coll_data" : 									{
										"count" : 13,
										"data" : [ 											{
												"key" : "1.1.0",
												"value" : [ "72 73 0.552" ]
											}
, 											{
												"key" : "1.1.240",
												"value" : [ "67 66 0.594" ]
											}
, 											{
												"key" : "1.2.0",
												"value" : [ "69 73 0.542" ]
											}
, 											{
												"key" : "1.2.240",
												"value" : [ "64 72 0.554" ]
											}
, 											{
												"key" : "1.3.0",
												"value" : [ "72 72 0.585" ]
											}
, 											{
												"key" : "1.3.240",
												"value" : [ "67 66 0.583" ]
											}
, 											{
												"key" : "1.4.0",
												"value" : [ "69 66 0.588" ]
											}
, 											{
												"key" : "1.4.240",
												"value" : [ "64 65 0.56" ]
											}
, 											{
												"key" : "2.1.0",
												"value" : [ "72 66 0.546" ]
											}
, 											{
												"key" : "2.1.240",
												"value" : [ "67 72 0.554" ]
											}
, 											{
												"key" : "2.2.0",
												"value" : [ "69 65 0.569" ]
											}
, 											{
												"key" : "2.2.240",
												"value" : [ "64 66 0.6" ]
											}
, 											{
												"key" : "2.3.0",
												"value" : [ "72 73 1.44" ]
											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"embed" : 1
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ajm.midi2coll @ccfilter true",
									"outlettype" : [ "", "", "" ],
									"fontsize" : 11.1,
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 33.0, 337.0, 164.0, 20.0 ],
									"numoutlets" : 3,
									"id" : "obj-14",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "ajm.midi2coll will store CC (continuous controller) messages in the [coll].",
									"fontsize" : 12.0,
									"numinlets" : 1,
									"patching_rect" : [ 28.0, 10.0, 463.0, 21.0 ],
									"numoutlets" : 0,
									"id" : "obj-12",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "coll format for cc messages: \"cc {value} {controller_number}\";",
									"fontsize" : 11.100006,
									"numinlets" : 1,
									"patching_rect" : [ 94.0, 179.0, 370.0, 20.0 ],
									"numoutlets" : 0,
									"id" : "obj-10",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route cc",
									"outlettype" : [ "", "" ],
									"fontsize" : 11.1,
									"numinlets" : 1,
									"patching_rect" : [ 244.0, 250.0, 55.0, 20.0 ],
									"numoutlets" : 2,
									"id" : "obj-9",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ctlout",
									"fontsize" : 11.1,
									"numinlets" : 3,
									"patching_rect" : [ 244.0, 277.0, 46.0, 20.0 ],
									"numoutlets" : 0,
									"id" : "obj-8",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "cc 63 10",
									"outlettype" : [ "" ],
									"fontsize" : 11.1,
									"numinlets" : 2,
									"patching_rect" : [ 171.0, 251.0, 68.0, 18.0 ],
									"numoutlets" : 1,
									"id" : "obj-7",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "ajm.help-transport.maxpat",
									"args" : [ "@transport", "ajm_m2c_cc" ],
									"numinlets" : 1,
									"patching_rect" : [ 337.0, 214.0, 113.0, 108.0 ],
									"numoutlets" : 0,
									"id" : "obj-6"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ajm.makenote @transport ajm_m2c_cc",
									"outlettype" : [ "float", "float", "" ],
									"fontsize" : 11.1,
									"numinlets" : 2,
									"patching_rect" : [ 31.0, 220.0, 232.0, 20.0 ],
									"numoutlets" : 3,
									"id" : "obj-5",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ajm.metro 16n @start 1.1.0 @transport ajm_m2c_cc",
									"outlettype" : [ "bang", "bang" ],
									"fontsize" : 11.1,
									"numinlets" : 2,
									"patching_rect" : [ 65.0, 132.0, 309.0, 20.0 ],
									"numoutlets" : 2,
									"id" : "obj-43",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "noteout",
									"fontsize" : 11.1,
									"numinlets" : 3,
									"patching_rect" : [ 31.0, 276.0, 85.0, 20.0 ],
									"numoutlets" : 0,
									"id" : "obj-27",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "ajm_cc_pan.mid",
									"outlettype" : [ "" ],
									"fontsize" : 11.1,
									"numinlets" : 2,
									"patching_rect" : [ 31.0, 50.0, 103.0, 18.0 ],
									"numoutlets" : 1,
									"id" : "obj-29",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ajm.midi2coll",
									"outlettype" : [ "", "", "" ],
									"fontsize" : 11.1,
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 31.0, 90.0, 85.0, 20.0 ],
									"numoutlets" : 3,
									"id" : "obj-4",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "coll",
									"outlettype" : [ "", "", "", "" ],
									"fontsize" : 11.1,
									"numinlets" : 1,
									"patching_rect" : [ 31.0, 181.0, 59.5, 20.0 ],
									"numoutlets" : 4,
									"id" : "obj-1",
									"fontname" : "Verdana",
									"coll_data" : 									{
										"count" : 13,
										"data" : [ 											{
												"key" : "1.1.0",
												"value" : [ "cc 63 10", "72 73 0.552" ]
											}
, 											{
												"key" : "1.1.240",
												"value" : [ "67 66 0.594" ]
											}
, 											{
												"key" : "1.2.0",
												"value" : [ "69 73 0.542" ]
											}
, 											{
												"key" : "1.2.240",
												"value" : [ "64 72 0.554" ]
											}
, 											{
												"key" : "1.3.0",
												"value" : [ "cc 0 10", "72 72 0.585" ]
											}
, 											{
												"key" : "1.3.240",
												"value" : [ "67 66 0.583" ]
											}
, 											{
												"key" : "1.4.0",
												"value" : [ "69 66 0.588" ]
											}
, 											{
												"key" : "1.4.240",
												"value" : [ "64 65 0.56" ]
											}
, 											{
												"key" : "2.1.0",
												"value" : [ "cc 127 10", "72 66 0.546" ]
											}
, 											{
												"key" : "2.1.240",
												"value" : [ "67 72 0.554" ]
											}
, 											{
												"key" : "2.2.0",
												"value" : [ "69 65 0.569" ]
											}
, 											{
												"key" : "2.2.240",
												"value" : [ "64 66 0.6" ]
											}
, 											{
												"key" : "2.3.0",
												"value" : [ "cc 63 10", "72 73 1.44" ]
											}
 ]
									}
,
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
									"fontsize" : 11.1,
									"numinlets" : 1,
									"patching_rect" : [ 198.0, 332.0, 352.0, 33.0 ],
									"numoutlets" : 0,
									"id" : "obj-2",
									"fontname" : "Verdana"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-15", 0 ],
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
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-8", 0 ],
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
									"source" : [ "obj-5", 2 ],
									"destination" : [ "obj-7", 1 ],
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
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-5", 0 ],
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
									"source" : [ "obj-5", 1 ],
									"destination" : [ "obj-27", 1 ],
									"hidden" : 0,
									"midpoints" : [ 147.0, 246.0, 73.5, 246.0 ]
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
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontsize" : 11.1,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 11.1,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"fontname" : "Verdana"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "subpatch[1]",
					"text" : "p quantize",
					"fontsize" : 11.0,
					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
					"numinlets" : 0,
					"patching_rect" : [ 383.0, 101.0, 68.0, 20.0 ],
					"numoutlets" : 0,
					"id" : "obj-3",
					"fontname" : "Verdana",
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
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "1.4.0",
									"outlettype" : [ "" ],
									"fontsize" : 11.1,
									"numinlets" : 2,
									"patching_rect" : [ 101.0, 136.0, 50.0, 18.0 ],
									"numoutlets" : 1,
									"id" : "obj-11",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "This midi file has all the notes played on upbeats",
									"fontsize" : 11.1,
									"numinlets" : 1,
									"patching_rect" : [ 43.0, 11.0, 333.0, 20.0 ],
									"numoutlets" : 0,
									"id" : "obj-7",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "This bangs every quarter note, which will miss all the upbeats in the coll on the right",
									"linecount" : 3,
									"fontsize" : 11.1,
									"numinlets" : 1,
									"patching_rect" : [ 151.0, 124.0, 185.0, 47.0 ],
									"numoutlets" : 0,
									"id" : "obj-3",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Double click the colls to compare their contents",
									"linecount" : 2,
									"fontsize" : 11.1,
									"numinlets" : 1,
									"patching_rect" : [ 130.0, 189.0, 155.0, 33.0 ],
									"numoutlets" : 0,
									"id" : "obj-12",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "gswitch2",
									"outlettype" : [ "", "" ],
									"numinlets" : 2,
									"patching_rect" : [ 60.0, 134.0, 39.0, 32.0 ],
									"numoutlets" : 2,
									"id" : "obj-10"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "coll",
									"outlettype" : [ "", "", "", "" ],
									"fontsize" : 11.1,
									"numinlets" : 1,
									"patching_rect" : [ 329.0, 190.0, 59.5, 20.0 ],
									"numoutlets" : 4,
									"id" : "obj-9",
									"fontname" : "Verdana",
									"coll_data" : 									{
										"count" : 8,
										"data" : [ 											{
												"key" : "1.1.120",
												"value" : [ "60 79 0.75" ]
											}
, 											{
												"key" : "1.2.120",
												"value" : [ "62 79 0.75" ]
											}
, 											{
												"key" : "1.3.120",
												"value" : [ "64 79 0.75" ]
											}
, 											{
												"key" : "1.4.120",
												"value" : [ "65 79 0.75" ]
											}
, 											{
												"key" : "2.1.120",
												"value" : [ "67 79 0.75" ]
											}
, 											{
												"key" : "2.2.120",
												"value" : [ "69 79 0.75" ]
											}
, 											{
												"key" : "2.3.120",
												"value" : [ "71 79 0.75" ]
											}
, 											{
												"key" : "2.4.120",
												"value" : [ "72 79 0.75" ]
											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"embed" : 1
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ajm.midi2coll",
									"outlettype" : [ "", "", "" ],
									"fontsize" : 11.1,
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 329.0, 69.0, 85.0, 20.0 ],
									"numoutlets" : 3,
									"id" : "obj-8",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "ajm.help-transport.maxpat",
									"args" : [ "@transport", "ajm_m2c_qtz" ],
									"numinlets" : 1,
									"patching_rect" : [ 296.0, 239.0, 113.0, 115.0 ],
									"numoutlets" : 0,
									"id" : "obj-6"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ajm.makenote @transport ajm_m2c_qtz",
									"outlettype" : [ "float", "float", "" ],
									"fontsize" : 11.1,
									"numinlets" : 2,
									"patching_rect" : [ 40.0, 233.0, 238.0, 20.0 ],
									"numoutlets" : 3,
									"id" : "obj-5",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ajm.metro 4n @start 1.1.0 @transport ajm_m2c_qtz",
									"outlettype" : [ "bang", "bang" ],
									"fontsize" : 11.1,
									"numinlets" : 2,
									"patching_rect" : [ 80.0, 104.0, 309.0, 20.0 ],
									"numoutlets" : 2,
									"id" : "obj-43",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "noteout",
									"fontsize" : 11.1,
									"numinlets" : 3,
									"patching_rect" : [ 40.0, 268.0, 85.0, 20.0 ],
									"numoutlets" : 0,
									"id" : "obj-27",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "ajm_shifted_scale.mid",
									"outlettype" : [ "" ],
									"fontsize" : 11.1,
									"numinlets" : 2,
									"patching_rect" : [ 138.0, 37.0, 136.0, 18.0 ],
									"numoutlets" : 1,
									"id" : "obj-29",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ajm.midi2coll @quantize 4n",
									"outlettype" : [ "", "", "" ],
									"fontsize" : 11.1,
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 40.0, 69.0, 166.0, 20.0 ],
									"numoutlets" : 3,
									"id" : "obj-4",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "coll",
									"outlettype" : [ "", "", "", "" ],
									"fontsize" : 11.1,
									"numinlets" : 1,
									"patching_rect" : [ 40.0, 194.0, 59.5, 20.0 ],
									"numoutlets" : 4,
									"id" : "obj-2",
									"fontname" : "Verdana",
									"coll_data" : 									{
										"count" : 8,
										"data" : [ 											{
												"key" : "1.1.0",
												"value" : [ "60 79 1.0" ]
											}
, 											{
												"key" : "1.2.0",
												"value" : [ "62 79 1.0" ]
											}
, 											{
												"key" : "1.3.0",
												"value" : [ "64 79 1.0" ]
											}
, 											{
												"key" : "1.4.0",
												"value" : [ "65 79 1.0" ]
											}
, 											{
												"key" : "2.1.0",
												"value" : [ "67 79 1.0" ]
											}
, 											{
												"key" : "2.2.0",
												"value" : [ "69 79 1.0" ]
											}
, 											{
												"key" : "2.3.0",
												"value" : [ "71 79 1.0" ]
											}
, 											{
												"key" : "2.4.0",
												"value" : [ "72 79 1.0" ]
											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"embed" : 1
									}

								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-10", 1 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [ 89.5, 186.0, 338.5, 186.0 ]
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
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [ 338.5, 226.0, 49.5, 226.0 ]
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
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
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
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [ 338.5, 95.0, 399.0, 95.0, 399.0, 177.0, 338.5, 177.0 ]
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
									"midpoints" : [ 147.5, 61.0, 49.5, 61.0 ]
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
									"source" : [ "obj-43", 0 ],
									"destination" : [ "obj-11", 1 ],
									"hidden" : 0,
									"midpoints" : [ 89.5, 128.0, 141.5, 128.0 ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontsize" : 11.1,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 11.1,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"fontname" : "Verdana"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "ajm.makenote @transport ajm_m2c_help",
					"outlettype" : [ "float", "float", "" ],
					"fontsize" : 11.100006,
					"numinlets" : 2,
					"patching_rect" : [ 47.0, 410.0, 244.0, 20.0 ],
					"numoutlets" : 3,
					"id" : "obj-17",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "subpatch",
					"text" : "p \"time signatures\"",
					"fontsize" : 11.0,
					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
					"numinlets" : 0,
					"patching_rect" : [ 383.0, 76.0, 117.0, 20.0 ],
					"numoutlets" : 0,
					"id" : "obj-16",
					"fontname" : "Verdana",
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
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "This transport also uses \"timesig 5 4\"",
									"linecount" : 2,
									"fontsize" : 11.1,
									"numinlets" : 1,
									"patching_rect" : [ 344.0, 181.0, 116.0, 33.0 ],
									"numoutlets" : 0,
									"id" : "obj-9",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"name" : "ajm.help-transport.maxpat",
									"args" : [ "@transport", "ajm_m2c_ts", "@timesig", 5, 4 ],
									"numinlets" : 1,
									"patching_rect" : [ 347.0, 213.0, 113.0, 115.0 ],
									"numoutlets" : 0,
									"id" : "obj-10"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess set",
									"outlettype" : [ "" ],
									"fontsize" : 11.1,
									"numinlets" : 1,
									"patching_rect" : [ 214.0, 192.0, 84.0, 20.0 ],
									"numoutlets" : 1,
									"hidden" : 1,
									"id" : "obj-1",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "you can use messages or attributes to change the timesig",
									"linecount" : 2,
									"fontsize" : 11.1,
									"numinlets" : 1,
									"patching_rect" : [ 259.0, 81.0, 195.0, 33.0 ],
									"numoutlets" : 0,
									"id" : "obj-16",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "timesig 5 4",
									"outlettype" : [ "" ],
									"fontsize" : 11.1,
									"numinlets" : 2,
									"patching_rect" : [ 183.0, 79.0, 73.0, 18.0 ],
									"numoutlets" : 1,
									"id" : "obj-13",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "the default time signature is 4/4",
									"fontsize" : 11.1,
									"numinlets" : 1,
									"patching_rect" : [ 102.0, 44.0, 191.0, 20.0 ],
									"numoutlets" : 0,
									"id" : "obj-8",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ajm.makenote @transport ajm_m2c_ts",
									"outlettype" : [ "float", "float", "" ],
									"fontsize" : 11.1,
									"numinlets" : 2,
									"patching_rect" : [ 51.0, 223.0, 231.0, 20.0 ],
									"numoutlets" : 3,
									"id" : "obj-5",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "midi2coll needs to be told the time signature of the midi file. \nIt currently does not support time signature changes.",
									"linecount" : 2,
									"fontsize" : 11.1,
									"numinlets" : 1,
									"patching_rect" : [ 42.0, 5.0, 357.0, 33.0 ],
									"numoutlets" : 0,
									"id" : "obj-7",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"outlettype" : [ "" ],
									"fontsize" : 11.1,
									"numinlets" : 2,
									"patching_rect" : [ 127.0, 188.0, 79.0, 18.0 ],
									"numoutlets" : 1,
									"id" : "obj-3",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ajm.metro 8n @start 1.1.0 @transport ajm_m2c_ts",
									"outlettype" : [ "bang", "bang" ],
									"fontsize" : 11.1,
									"numinlets" : 2,
									"patching_rect" : [ 113.0, 148.0, 302.0, 20.0 ],
									"numoutlets" : 2,
									"id" : "obj-43",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "noteout",
									"fontsize" : 11.1,
									"numinlets" : 3,
									"patching_rect" : [ 51.0, 258.0, 85.0, 20.0 ],
									"numoutlets" : 0,
									"id" : "obj-27",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "ajm_timesig.mid",
									"outlettype" : [ "" ],
									"fontsize" : 11.1,
									"numinlets" : 2,
									"patching_rect" : [ 51.0, 74.0, 104.0, 18.0 ],
									"numoutlets" : 1,
									"id" : "obj-29",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ajm.midi2coll @timesig 5 4",
									"outlettype" : [ "", "", "" ],
									"fontsize" : 11.1,
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 51.0, 107.0, 163.0, 20.0 ],
									"numoutlets" : 3,
									"id" : "obj-4",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "coll",
									"outlettype" : [ "", "", "", "" ],
									"fontsize" : 11.1,
									"numinlets" : 1,
									"patching_rect" : [ 51.0, 187.0, 59.5, 20.0 ],
									"numoutlets" : 4,
									"id" : "obj-2",
									"fontname" : "Verdana",
									"coll_data" : 									{
										"count" : 37,
										"data" : [ 											{
												"key" : "1.1.0",
												"value" : [ "58 82 0.971", "39 78 2.656" ]
											}
, 											{
												"key" : "1.2.0",
												"value" : [ "55 81 0.588" ]
											}
, 											{
												"key" : "1.2.240",
												"value" : [ "58 90 0.527" ]
											}
, 											{
												"key" : "1.3.0",
												"value" : [ "55 81 0.571" ]
											}
, 											{
												"key" : "1.3.240",
												"value" : [ "58 81 0.527" ]
											}
, 											{
												"key" : "1.4.0",
												"value" : [ "60 83 0.467", "36 90 2.094" ]
											}
, 											{
												"key" : "1.5.0",
												"value" : [ "55 90 0.504" ]
											}
, 											{
												"key" : "2.1.0",
												"value" : [ "58 83 0.992", "39 83 3.198" ]
											}
, 											{
												"key" : "2.2.0",
												"value" : [ "55 82 0.54" ]
											}
, 											{
												"key" : "2.2.240",
												"value" : [ "58 90 0.513" ]
											}
, 											{
												"key" : "2.3.0",
												"value" : [ "55 83 0.569" ]
											}
, 											{
												"key" : "2.3.240",
												"value" : [ "58 73 0.573" ]
											}
, 											{
												"key" : "2.4.0",
												"value" : [ "60 66 0.54", "36 72 1.813" ]
											}
, 											{
												"key" : "2.5.0",
												"value" : [ "55 81 0.535" ]
											}
, 											{
												"key" : "3.1.0",
												"value" : [ "54 80 1.213", "42 89 2.315" ]
											}
, 											{
												"key" : "3.2.240",
												"value" : [ "57 81 1.038" ]
											}
, 											{
												"key" : "3.4.0",
												"value" : [ "49 90 0.49", "37 73 2.217" ]
											}
, 											{
												"key" : "3.5.0",
												"value" : [ "52 81 0.521" ]
											}
, 											{
												"key" : "4.1.0",
												"value" : [ "54 90 1.396", "42 90 2.965" ]
											}
, 											{
												"key" : "4.2.240",
												"value" : [ "57 63 1.246" ]
											}
, 											{
												"key" : "4.4.0",
												"value" : [ "48 66 0.508", "36 72 2.058" ]
											}
, 											{
												"key" : "4.5.0",
												"value" : [ "51 81 0.419" ]
											}
, 											{
												"key" : "5.1.0",
												"value" : [ "58 90 1.006", "39 80 2.977" ]
											}
, 											{
												"key" : "5.2.0",
												"value" : [ "55 81 0.467" ]
											}
, 											{
												"key" : "5.2.240",
												"value" : [ "58 73 0.598" ]
											}
, 											{
												"key" : "5.3.0",
												"value" : [ "55 81 0.588" ]
											}
, 											{
												"key" : "5.3.240",
												"value" : [ "58 72 0.55" ]
											}
, 											{
												"key" : "5.4.0",
												"value" : [ "60 54 0.469", "36 72 2.171" ]
											}
, 											{
												"key" : "5.5.0",
												"value" : [ "55 82 0.421" ]
											}
, 											{
												"key" : "6.1.0",
												"value" : [ "58 81 1.004", "39 82 3.042" ]
											}
, 											{
												"key" : "6.2.0",
												"value" : [ "55 80 0.573" ]
											}
, 											{
												"key" : "6.2.240",
												"value" : [ "58 80 0.558" ]
											}
, 											{
												"key" : "6.3.0",
												"value" : [ "55 73 0.56" ]
											}
, 											{
												"key" : "6.3.240",
												"value" : [ "58 72 0.563" ]
											}
, 											{
												"key" : "6.4.0",
												"value" : [ "60 56 0.519", "36 72 2.16" ]
											}
, 											{
												"key" : "6.5.0",
												"value" : [ "55 80 0.375" ]
											}
, 											{
												"key" : "7.1.0",
												"value" : [ "30 81 0.504", "39 81 0.838", "51 90 1.36" ]
											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"embed" : 1
									}

								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 1,
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
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
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
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [ 192.5, 99.0, 60.5, 99.0 ]
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
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
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
									"source" : [ "obj-43", 0 ],
									"destination" : [ "obj-3", 1 ],
									"hidden" : 0,
									"midpoints" : [ 122.5, 179.0, 196.5, 179.0 ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontsize" : 11.1,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 11.1,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"fontname" : "Verdana"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"name" : "ajm.seealso.maxpat",
					"args" : [ "ajm.metro", "ajm.makenote", "coll" ],
					"lockeddragscroll" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 401.0, 425.0, 145.0, 55.0 ],
					"numoutlets" : 0,
					"id" : "obj-60"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"name" : "ajm.helplinks.maxpat",
					"args" : [  ],
					"lockeddragscroll" : 1,
					"numinlets" : 0,
					"patching_rect" : [ 409.0, 8.0, 138.0, 55.0 ],
					"numoutlets" : 0,
					"id" : "obj-48"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "convert MIDI files to coll format",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patching_rect" : [ 144.0, 22.0, 205.0, 21.0 ],
					"numoutlets" : 0,
					"id" : "obj-13",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "ajm.midi2coll",
					"fontsize" : 18.0,
					"numinlets" : 1,
					"patching_rect" : [ 27.0, 11.0, 125.0, 27.0 ],
					"numoutlets" : 0,
					"id" : "obj-57",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Ruby abstraction",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 31.0, 39.0, 100.0, 17.0 ],
					"numoutlets" : 0,
					"id" : "obj-15",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"mode" : 1,
					"angle" : 270.0,
					"grad1" : [ 0.823529, 1.0, 0.956863, 1.0 ],
					"grad2" : [ 0.219608, 0.564706, 0.462745, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 25.0, 8.0, 327.0, 50.0 ],
					"numoutlets" : 0,
					"id" : "obj-50",
					"rounded" : 12
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"mode" : 1,
					"angle" : 270.0,
					"grad1" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"grad2" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 24.0, 7.0, 330.0, 54.0 ],
					"numoutlets" : 0,
					"id" : "obj-54",
					"rounded" : 16
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "ajm.metro 4n @start 1.1.0 @transport ajm_m2c_help",
					"outlettype" : [ "bang", "bang" ],
					"fontsize" : 11.1,
					"numinlets" : 2,
					"patching_rect" : [ 74.0, 323.0, 314.0, 20.0 ],
					"numoutlets" : 2,
					"id" : "obj-43",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "noteout",
					"fontsize" : 11.1,
					"numinlets" : 3,
					"patching_rect" : [ 47.0, 444.0, 86.0, 20.0 ],
					"numoutlets" : 0,
					"id" : "obj-27",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "or bang for a file browser",
					"fontsize" : 11.1,
					"numinlets" : 1,
					"patching_rect" : [ 175.0, 237.0, 178.0, 20.0 ],
					"numoutlets" : 0,
					"id" : "obj-36",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "or drag and drop",
					"fontsize" : 11.1,
					"numinlets" : 1,
					"patching_rect" : [ 176.0, 178.0, 150.0, 20.0 ],
					"numoutlets" : 0,
					"id" : "obj-35",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "or absolute path",
					"fontsize" : 11.1,
					"numinlets" : 1,
					"patching_rect" : [ 176.0, 128.0, 110.0, 20.0 ],
					"numoutlets" : 0,
					"id" : "obj-32",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "load MIDI by filename (if on path)",
					"fontsize" : 11.1,
					"numinlets" : 1,
					"patching_rect" : [ 166.0, 73.0, 211.0, 20.0 ],
					"numoutlets" : 0,
					"id" : "obj-31",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "ajm_midi2coll.mid",
					"outlettype" : [ "" ],
					"fontsize" : 11.1,
					"numinlets" : 2,
					"patching_rect" : [ 47.0, 74.0, 113.0, 18.0 ],
					"numoutlets" : 1,
					"id" : "obj-29",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"outlettype" : [ "bang" ],
					"numinlets" : 1,
					"patching_rect" : [ 136.0, 228.0, 37.0, 37.0 ],
					"numoutlets" : 1,
					"id" : "obj-28"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "dropfile",
					"outlettype" : [ "", "" ],
					"numinlets" : 1,
					"types" : [ "Midi" ],
					"patching_rect" : [ 66.0, 159.0, 106.0, 55.0 ],
					"numoutlets" : 2,
					"id" : "obj-1"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/Users/username/Music/somefile.mid",
					"outlettype" : [ "" ],
					"fontsize" : 11.1,
					"numinlets" : 2,
					"patching_rect" : [ 62.0, 108.0, 219.0, 18.0 ],
					"numoutlets" : 1,
					"id" : "obj-6",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "ajm.midi2coll",
					"outlettype" : [ "", "", "" ],
					"fontsize" : 11.1,
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 47.0, 295.0, 85.0, 20.0 ],
					"numoutlets" : 3,
					"id" : "obj-4",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "coll",
					"outlettype" : [ "", "", "", "" ],
					"fontsize" : 11.1,
					"numinlets" : 1,
					"patching_rect" : [ 47.0, 377.0, 59.5, 20.0 ],
					"numoutlets" : 4,
					"id" : "obj-2",
					"fontname" : "Verdana",
					"coll_data" : 					{
						"count" : 0,
						"data" : [  ]
					}
,
					"saved_object_attributes" : 					{
						"embed" : 1
					}

				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [ 18.5, 397.0, 6.5, 397.0, 6.5, 374.0, 56.5, 374.0 ]
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
					"source" : [ "obj-17", 1 ],
					"destination" : [ "obj-27", 1 ],
					"hidden" : 0,
					"midpoints" : [ 169.0, 435.0, 90.0, 435.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [ 71.5, 139.0, 56.5, 139.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [ 145.5, 274.0, 56.5, 274.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [ 75.5, 218.0, 56.5, 218.0 ]
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
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-10", 1 ],
					"hidden" : 0,
					"midpoints" : [ 83.5, 347.0, 116.5, 347.0 ]
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
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [ 83.5, 347.0, 56.5, 347.0 ]
				}

			}
 ]
	}

}
