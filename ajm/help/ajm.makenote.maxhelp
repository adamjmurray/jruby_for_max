{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 23.0, 49.0, 646.0, 320.0 ],
		"bglocked" : 0,
		"defrect" : [ 23.0, 49.0, 646.0, 320.0 ],
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
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "change 0.",
					"fontsize" : 11.1,
					"patching_rect" : [ 74.0, 240.0, 66.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 3,
					"id" : "obj-3",
					"fontname" : "Verdana",
					"outlettype" : [ "", "int", "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess set",
					"fontsize" : 11.1,
					"hidden" : 1,
					"patching_rect" : [ 178.0, 184.0, 84.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-20",
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Other symbols will pass through the right outlet.",
					"linecount" : 2,
					"fontsize" : 11.1,
					"patching_rect" : [ 268.0, 70.0, 155.0, 33.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-17",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"fontsize" : 11.1,
					"patching_rect" : [ 144.0, 182.0, 140.0, 18.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"id" : "obj-11",
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\"some random message\"",
					"fontsize" : 11.1,
					"patching_rect" : [ 264.0, 107.0, 151.0, 18.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"id" : "obj-4",
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess 120",
					"fontsize" : 11.1,
					"hidden" : 1,
					"patching_rect" : [ 122.0, 216.0, 88.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-6",
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontsize" : 11.1,
					"patching_rect" : [ 74.0, 216.5, 50.0, 20.0 ],
					"numinlets" : 1,
					"tricolor" : [ 0.0, 0.0, 0.0, 0.501961 ],
					"numoutlets" : 2,
					"id" : "obj-19",
					"fontname" : "Verdana",
					"minimum" : 1.0,
					"outlettype" : [ "float", "bang" ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.501961 ],
					"htricolor" : [ 0.333333, 0.870588, 0.239216, 1.0 ],
					"maximum" : 9999.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "transport @name ajm_mn_help",
					"fontsize" : 12.0,
					"patching_rect" : [ 74.0, 283.5, 179.0, 20.0 ],
					"numinlets" : 2,
					"numoutlets" : 9,
					"id" : "obj-42",
					"fontname" : "Arial",
					"outlettype" : [ "int", "int", "float", "float", "float", "", "int", "float", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "tempo $1",
					"fontsize" : 11.1,
					"patching_rect" : [ 74.0, 262.5, 62.0, 18.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"id" : "obj-8",
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Send a silent note to noteout so we don't have lag when playback first starts",
					"linecount" : 4,
					"fontsize" : 10.0,
					"hidden" : 1,
					"patching_rect" : [ -84.0, 231.0, 122.0, 55.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-16",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess 0 0",
					"fontsize" : 11.1,
					"hidden" : 1,
					"patching_rect" : [ -16.0, 284.0, 85.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-1",
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "duration of note in ms",
					"fontsize" : 11.1,
					"patching_rect" : [ 337.0, 275.0, 150.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-23",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p \"transpose, velscale, durscale\"",
					"fontsize" : 11.0,
					"patching_rect" : [ 417.0, 161.0, 195.0, 20.0 ],
					"numinlets" : 0,
					"numoutlets" : 0,
					"id" : "obj-21",
					"fontname" : "Verdana",
					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 322.0, 50.0, 702.0, 496.0 ],
						"bglocked" : 0,
						"defrect" : [ 322.0, 50.0, 702.0, 496.0 ],
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
									"text" : "route tempo",
									"fontsize" : 11.1,
									"patching_rect" : [ 424.0, 441.0, 79.0, 20.0 ],
									"numinlets" : 1,
									"numoutlets" : 2,
									"id" : "obj-26",
									"fontname" : "Verdana",
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "volume",
									"fontsize" : 11.1,
									"patching_rect" : [ 325.0, 256.0, 57.0, 20.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-31",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"fontsize" : 11.1,
									"patching_rect" : [ 210.0, 315.0, 50.0, 20.0 ],
									"numinlets" : 1,
									"numoutlets" : 2,
									"id" : "obj-28",
									"fontname" : "Verdana",
									"minimum" : -36,
									"outlettype" : [ "int", "bang" ],
									"maximum" : 36
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "multislider",
									"patching_rect" : [ 336.0, 276.0, 25.0, 55.0 ],
									"setminmax" : [ 0.0, 1.0 ],
									"numinlets" : 1,
									"contdata" : 1,
									"ghostbar" : 50,
									"numoutlets" : 2,
									"id" : "obj-21",
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend velscale",
									"fontsize" : 11.1,
									"patching_rect" : [ 336.0, 341.0, 104.0, 20.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"id" : "obj-14",
									"fontname" : "Verdana",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend transpose",
									"fontsize" : 11.1,
									"patching_rect" : [ 210.0, 341.0, 115.0, 20.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"id" : "obj-10",
									"fontname" : "Verdana",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "All attributes can be set via messages to the right inlet or as normal attributes when constructing the object.",
									"linecount" : 3,
									"fontsize" : 11.1,
									"patching_rect" : [ 446.0, 371.0, 239.0, 47.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-9",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "jit.cellblock",
									"fontsize" : 11.1,
									"patching_rect" : [ 113.0, 67.0, 231.0, 72.0 ],
									"cols" : 1,
									"savemode" : 1,
									"hcellcolor" : [ 0.443137, 0.815686, 0.705882, 1.0 ],
									"numinlets" : 2,
									"vscroll" : 0,
									"hscroll" : 0,
									"numoutlets" : 4,
									"rows" : 4,
									"selmode" : 5,
									"id" : "obj-2",
									"fontname" : "Verdana",
									"outlettype" : [ "list", "", "", "" ],
									"colwidth" : 230,
									"ignoreclick" : 1,
									"cellmap" : [ [ 0, 0, "Description" ], [ 0, 1, "add", "a", "number", "of", "semitones", "to", "the", "pitch" ], [ 0, 2, "multiply", "the", "velocity" ], [ 0, 3, "multiply", "the", "duration" ] ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "jit.cellblock",
									"fontsize" : 11.1,
									"patching_rect" : [ 39.0, 67.0, 78.0, 72.0 ],
									"cols" : 1,
									"savemode" : 1,
									"hcellcolor" : [ 0.443137, 0.815686, 0.705882, 1.0 ],
									"numinlets" : 2,
									"vscroll" : 0,
									"hscroll" : 0,
									"numoutlets" : 4,
									"rows" : 4,
									"selmode" : 5,
									"id" : "obj-7",
									"fontname" : "Verdana",
									"outlettype" : [ "list", "", "", "" ],
									"colwidth" : 74,
									"ignoreclick" : 1,
									"cellmap" : [ [ 0, 0, "Attribute" ], [ 0, 1, "@transpose" ], [ 0, 2, "@velscale" ], [ 0, 3, "@durscale" ] ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "ajm.makenote supports basic MIDI transformation features:\ntranspose pitches or scale the velocity or duration",
									"linecount" : 2,
									"fontsize" : 14.0,
									"patching_rect" : [ 38.0, 16.0, 441.0, 41.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-5",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend durscale",
									"fontsize" : 11.1,
									"patching_rect" : [ 501.0, 338.0, 107.0, 20.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"id" : "obj-13",
									"fontname" : "Verdana",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t s s",
									"fontsize" : 11.1,
									"patching_rect" : [ 239.0, 190.0, 34.0, 20.0 ],
									"numinlets" : 1,
									"numoutlets" : 2,
									"id" : "obj-12",
									"fontname" : "Verdana",
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess 0.9",
									"fontsize" : 11.1,
									"hidden" : 1,
									"patching_rect" : [ 407.0, 235.0, 85.0, 20.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"id" : "obj-24",
									"fontname" : "Verdana",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "legato",
									"fontsize" : 11.1,
									"patching_rect" : [ 598.0, 313.0, 63.0, 20.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-23",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "staccato",
									"fontsize" : 11.1,
									"patching_rect" : [ 447.0, 313.0, 63.0, 20.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-22",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "slider",
									"mult" : 0.95,
									"min" : 0.01,
									"patching_rect" : [ 501.0, 312.0, 97.0, 20.0 ],
									"floatoutput" : 1,
									"numinlets" : 1,
									"numoutlets" : 1,
									"id" : "obj-19",
									"size" : 1.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "@durscale can control legato vs. staccato, and help avoid overlapping notes when changing tempos.",
									"linecount" : 3,
									"fontsize" : 11.1,
									"patching_rect" : [ 442.0, 261.0, 222.0, 47.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-11",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "deferlow",
									"fontsize" : 11.1,
									"hidden" : 1,
									"patching_rect" : [ 78.0, 254.0, 58.0, 20.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"id" : "obj-6",
									"fontname" : "Verdana",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess 120",
									"fontsize" : 11.1,
									"hidden" : 1,
									"patching_rect" : [ 134.0, 256.0, 88.0, 20.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"id" : "obj-4",
									"fontname" : "Verdana",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"fontsize" : 11.1,
									"patching_rect" : [ 42.0, 248.0, 50.0, 20.0 ],
									"numinlets" : 1,
									"numoutlets" : 2,
									"id" : "obj-34",
									"fontname" : "Verdana",
									"minimum" : 30,
									"outlettype" : [ "int", "bang" ],
									"maximum" : 3000
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "tempo $1",
									"fontsize" : 11.1,
									"patching_rect" : [ 42.0, 286.0, 64.0, 18.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"id" : "obj-20",
									"fontname" : "Verdana",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ajm.metro 8n @start 1.1.0 @transport ajm_mn_trans",
									"fontsize" : 11.1,
									"patching_rect" : [ 239.0, 166.0, 314.0, 20.0 ],
									"numinlets" : 2,
									"numoutlets" : 2,
									"id" : "obj-1",
									"fontname" : "Verdana",
									"outlettype" : [ "bang", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"patching_rect" : [ 42.0, 330.0, 112.0, 106.0 ],
									"name" : "ajm.help-transport.maxpat",
									"numinlets" : 1,
									"args" : [ "@transport", "ajm_mn_trans" ],
									"numoutlets" : 0,
									"id" : "obj-17"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ajm.makenote @transport ajm_mn_trans @transpose 0 @velscale 0.9 @durscale 0.9",
									"linecount" : 2,
									"fontsize" : 11.0,
									"patching_rect" : [ 182.0, 373.0, 261.0, 33.0 ],
									"numinlets" : 2,
									"numoutlets" : 3,
									"id" : "obj-3",
									"fontname" : "Verdana",
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"outlettype" : [ "float", "float", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Hit restart to play:",
									"fontsize" : 12.0,
									"patching_rect" : [ 51.0, 310.0, 106.0, 20.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-55",
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "<-- format: bars.beats.units, \"pitch velocity duration\" \"tempo xxx\";",
									"fontsize" : 11.0,
									"patching_rect" : [ 296.0, 223.0, 385.0, 20.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-25",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "noteout",
									"fontsize" : 11.0,
									"patching_rect" : [ 182.0, 424.0, 53.0, 20.0 ],
									"numinlets" : 3,
									"numoutlets" : 0,
									"id" : "obj-27",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "coll",
									"fontsize" : 11.0,
									"patching_rect" : [ 239.0, 222.0, 60.0, 20.0 ],
									"numinlets" : 1,
									"numoutlets" : 4,
									"id" : "obj-30",
									"fontname" : "Verdana",
									"outlettype" : [ "", "", "", "" ],
									"coll_data" : 									{
										"count" : 47,
										"data" : [ 											{
												"key" : "1.1.0",
												"value" : [ "tempo 120", "60 80 8n" ]
											}
, 											{
												"key" : "1.1.240",
												"value" : [ "60 80 8n" ]
											}
, 											{
												"key" : "1.2.0",
												"value" : [ "60 80 8n" ]
											}
, 											{
												"key" : "1.2.240",
												"value" : [ "60 80 8n" ]
											}
, 											{
												"key" : "1.3.0",
												"value" : [ "tempo 130", "60 80 8n" ]
											}
, 											{
												"key" : "1.3.240",
												"value" : [ "60 80 8n" ]
											}
, 											{
												"key" : "1.4.0",
												"value" : [ "60 80 8n" ]
											}
, 											{
												"key" : "1.4.240",
												"value" : [ "60 80 8n" ]
											}
, 											{
												"key" : "2.1.0",
												"value" : [ "tempo 140", "62 80 8n" ]
											}
, 											{
												"key" : "2.1.240",
												"value" : [ "62 80 8n" ]
											}
, 											{
												"key" : "2.2.0",
												"value" : [ "62 80 8n" ]
											}
, 											{
												"key" : "2.2.240",
												"value" : [ "62 80 8n" ]
											}
, 											{
												"key" : "2.3.0",
												"value" : [ "tempo 150", "62 80 8n" ]
											}
, 											{
												"key" : "2.3.240",
												"value" : [ "62 80 8n" ]
											}
, 											{
												"key" : "2.4.0",
												"value" : [ "62 80 8n" ]
											}
, 											{
												"key" : "2.4.240",
												"value" : [ "62 80 8n" ]
											}
, 											{
												"key" : "3.1.0",
												"value" : [ "tempo 160", "64 80 8n" ]
											}
, 											{
												"key" : "3.1.240",
												"value" : [ "64 80 8n" ]
											}
, 											{
												"key" : "3.2.0",
												"value" : [ "64 80 8n" ]
											}
, 											{
												"key" : "3.2.240",
												"value" : [ "64 80 8n" ]
											}
, 											{
												"key" : "3.3.0",
												"value" : [ "tempo 170", "64 80 8n" ]
											}
, 											{
												"key" : "3.3.240",
												"value" : [ "64 80 8n" ]
											}
, 											{
												"key" : "3.4.0",
												"value" : [ "64 80 8n" ]
											}
, 											{
												"key" : "3.4.240",
												"value" : [ "64 80 8n" ]
											}
, 											{
												"key" : "4.1.0",
												"value" : [ "tempo 180", "65 80 8n" ]
											}
, 											{
												"key" : "4.1.240",
												"value" : [ "65 80 8n" ]
											}
, 											{
												"key" : "4.2.0",
												"value" : [ "65 80 8n" ]
											}
, 											{
												"key" : "4.2.240",
												"value" : [ "65 80 8n" ]
											}
, 											{
												"key" : "4.3.0",
												"value" : [ "tempo 190", "65 80 8n" ]
											}
, 											{
												"key" : "4.3.240",
												"value" : [ "65 80 8n" ]
											}
, 											{
												"key" : "4.4.0",
												"value" : [ "65 80 8n" ]
											}
, 											{
												"key" : "4.4.240",
												"value" : [ "65 80 8n" ]
											}
, 											{
												"key" : "5.1.0",
												"value" : [ "tempo 200", "67 80 8n" ]
											}
, 											{
												"key" : "5.1.240",
												"value" : [ "67 80 8n" ]
											}
, 											{
												"key" : "5.2.0",
												"value" : [ "67 80 8n" ]
											}
, 											{
												"key" : "5.2.240",
												"value" : [ "67 80 8n" ]
											}
, 											{
												"key" : "5.3.0",
												"value" : [ "tempo 210", "67 80 8n" ]
											}
, 											{
												"key" : "5.3.240",
												"value" : [ "67 80 8n" ]
											}
, 											{
												"key" : "5.4.0",
												"value" : [ "67 80 8n" ]
											}
, 											{
												"key" : "5.4.240",
												"value" : [ "67 80 8n" ]
											}
, 											{
												"key" : "6.1.0",
												"value" : [ "tempo 200", "65 80 4n" ]
											}
, 											{
												"key" : "6.2.0",
												"value" : [ "tempo 190", "65 80 4n" ]
											}
, 											{
												"key" : "6.3.0",
												"value" : [ "tempo 180", "64 80 4n" ]
											}
, 											{
												"key" : "6.4.0",
												"value" : [ "tempo 160", "64 80 4n" ]
											}
, 											{
												"key" : "7.1.0",
												"value" : [ "tempo 140", "62 80 4n" ]
											}
, 											{
												"key" : "7.2.0",
												"value" : [ "tempo 120", "62 80 4n" ]
											}
, 											{
												"key" : "7.3.0",
												"value" : [ "60 80 4n" ]
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
									"source" : [ "obj-3", 2 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-34", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-3", 1 ],
									"hidden" : 0,
									"midpoints" : [ 219.5, 367.0, 433.5, 367.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-3", 1 ],
									"hidden" : 0,
									"midpoints" : [ 345.5, 367.0, 433.5, 367.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-3", 1 ],
									"hidden" : 0,
									"midpoints" : [ 510.5, 367.0, 433.5, 367.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 1 ],
									"destination" : [ "obj-27", 1 ],
									"hidden" : 0,
									"midpoints" : [ 312.5, 416.0, 208.5, 416.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [ 248.5, 301.0, 191.5, 301.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-34", 0 ],
									"hidden" : 0,
									"midpoints" : [ 433.5, 464.0, 18.0, 464.0, 18.0, 240.0, 51.5, 240.0 ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"fontsize" : 11.1,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"fontname" : "Verdana",
						"default_fontsize" : 11.1,
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b",
					"fontsize" : 11.1,
					"patching_rect" : [ 326.0, 206.0, 26.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-18",
					"fontname" : "Verdana",
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sel 0",
					"fontsize" : 11.1,
					"patching_rect" : [ 308.0, 180.0, 37.0, 20.0 ],
					"numinlets" : 2,
					"numoutlets" : 2,
					"id" : "obj-15",
					"fontname" : "Verdana",
					"outlettype" : [ "bang", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "==",
					"fontsize" : 11.1,
					"patching_rect" : [ 102.0, 103.0, 30.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-41",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Try changing the tempo and see how the duration changes",
					"linecount" : 3,
					"fontsize" : 11.1,
					"patching_rect" : [ 143.0, 236.0, 128.0, 47.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-39",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\"60 80 0.5\"",
					"fontsize" : 11.1,
					"patching_rect" : [ 30.0, 104.0, 75.0, 18.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"id" : "obj-37",
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "noteout",
					"fontsize" : 11.0,
					"patching_rect" : [ 30.0, 182.0, 53.0, 20.0 ],
					"numinlets" : 3,
					"numoutlets" : 0,
					"id" : "obj-29",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "ajm.makenote @transport ajm_mn_help",
					"fontsize" : 11.0,
					"patching_rect" : [ 30.0, 148.0, 236.0, 20.0 ],
					"numinlets" : 2,
					"numoutlets" : 3,
					"id" : "obj-28",
					"fontname" : "Verdana",
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"outlettype" : [ "float", "float", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontsize" : 11.1,
					"patching_rect" : [ 287.0, 274.0, 50.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"id" : "obj-9",
					"fontname" : "Verdana",
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "timer",
					"fontsize" : 11.1,
					"patching_rect" : [ 287.0, 247.0, 40.0, 20.0 ],
					"numinlets" : 2,
					"numoutlets" : 2,
					"id" : "obj-7",
					"fontname" : "Verdana",
					"outlettype" : [ "float", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\"60 80 8n\"",
					"fontsize" : 11.1,
					"patching_rect" : [ 128.0, 104.0, 71.0, 18.0 ],
					"numinlets" : 2,
					"numoutlets" : 1,
					"id" : "obj-5",
					"fontname" : "Verdana",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "thispatcher",
					"fontsize" : 11.1,
					"hidden" : 1,
					"patching_rect" : [ 128.0, 460.0, 73.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"id" : "obj-31",
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ],
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "ajm.bring-to-front-listener ajm.makenote",
					"fontsize" : 11.1,
					"hidden" : 1,
					"patching_rect" : [ 128.0, 434.0, 243.0, 20.0 ],
					"numinlets" : 0,
					"numoutlets" : 1,
					"id" : "obj-2",
					"fontname" : "Verdana",
					"outlettype" : [ "front" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "durations are expressed in beats or notevalues for the specified transport",
					"linecount" : 2,
					"fontsize" : 11.1,
					"patching_rect" : [ 25.0, 69.0, 225.0, 33.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-14",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p chords",
					"fontsize" : 11.0,
					"patching_rect" : [ 417.0, 192.0, 58.0, 20.0 ],
					"numinlets" : 0,
					"numoutlets" : 0,
					"id" : "obj-10",
					"fontname" : "Verdana",
					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 379.0, 100.0, 530.0, 227.0 ],
						"bglocked" : 0,
						"defrect" : [ 379.0, 100.0, 530.0, 227.0 ],
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
									"text" : "ajm.metro 2n @transport ajm_mn_chord @start 1.1.0",
									"fontsize" : 11.1,
									"patching_rect" : [ 14.0, 9.0, 330.0, 20.0 ],
									"numinlets" : 2,
									"numoutlets" : 2,
									"id" : "obj-2",
									"fontname" : "Verdana",
									"outlettype" : [ "bang", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess set",
									"fontsize" : 11.1,
									"hidden" : 1,
									"patching_rect" : [ 207.0, 89.0, 84.0, 20.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"id" : "obj-1",
									"fontname" : "Verdana",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"fontsize" : 12.0,
									"patching_rect" : [ 32.0, 94.0, 257.0, 18.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"id" : "obj-12",
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "the [zl iter] inside ajm.maktenote separates the chord into individual notes",
									"linecount" : 3,
									"fontsize" : 11.0,
									"patching_rect" : [ 100.0, 152.0, 182.0, 47.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-13",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ajm.makenote @transport ajm_mn_chord",
									"fontsize" : 12.0,
									"patching_rect" : [ 14.0, 122.0, 231.0, 20.0 ],
									"numinlets" : 2,
									"numoutlets" : 3,
									"id" : "obj-11",
									"fontname" : "Arial",
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"outlettype" : [ "float", "float", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"patching_rect" : [ 314.0, 93.0, 116.0, 117.0 ],
									"name" : "ajm.help-transport.maxpat",
									"numinlets" : 1,
									"args" : [ "@transport", "ajm_mn_chord" ],
									"numoutlets" : 0,
									"id" : "obj-8"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "each coll entry can contain multiple notes using the format:\nbars.beats.units, \"pitch1 velocity1 duration1\" ... \"pitchN velocityN durationN\";",
									"linecount" : 2,
									"fontsize" : 11.1,
									"patching_rect" : [ 76.0, 46.0, 449.0, 33.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-4",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "noteout",
									"fontsize" : 11.1,
									"patching_rect" : [ 14.0, 183.0, 73.0, 20.0 ],
									"numinlets" : 3,
									"numoutlets" : 0,
									"id" : "obj-7",
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "coll",
									"fontsize" : 11.1,
									"patching_rect" : [ 14.0, 53.0, 59.5, 20.0 ],
									"numinlets" : 1,
									"numoutlets" : 4,
									"id" : "obj-9",
									"fontname" : "Verdana",
									"outlettype" : [ "", "", "", "" ],
									"coll_data" : 									{
										"count" : 4,
										"data" : [ 											{
												"key" : "1.1.0",
												"value" : [ "60 80 1.9", "64 80 1.9", "67 80 1.9" ]
											}
, 											{
												"key" : "1.3.0",
												"value" : [ "60 80 1.9", "65 80 1.9", "69 80 1.9" ]
											}
, 											{
												"key" : "2.1.0",
												"value" : [ "59 80 1.9", "62 80 1.9", "65 80 1.9", "67 80 1.9" ]
											}
, 											{
												"key" : "2.3.0",
												"value" : [ "60 80 1.9", "64 80 1.9", "67 80 1.9" ]
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
									"source" : [ "obj-11", 1 ],
									"destination" : [ "obj-7", 1 ],
									"hidden" : 0,
									"midpoints" : [ 129.5, 147.0, 50.5, 147.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-12", 1 ],
									"hidden" : 0,
									"midpoints" : [ 23.5, 88.0, 279.5, 88.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"fontsize" : 11.1,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"fontname" : "Verdana",
						"default_fontsize" : 11.1,
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"patching_rect" : [ 496.0, 261.0, 145.0, 55.0 ],
					"name" : "ajm.seealso.maxpat",
					"numinlets" : 1,
					"args" : [ "ajm.metro", "ajm.midi2coll", "makenote", "translate", "transport", "coll", "noteout" ],
					"numoutlets" : 0,
					"id" : "obj-60",
					"lockeddragscroll" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"patching_rect" : [ 501.0, 7.0, 138.0, 55.0 ],
					"name" : "ajm.helplinks.maxpat",
					"numinlets" : 0,
					"args" : [  ],
					"numoutlets" : 0,
					"id" : "obj-48",
					"lockeddragscroll" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "make and transform notes from \"pitch,velocity,duration\" symbols with durations relative to transport time",
					"linecount" : 2,
					"fontsize" : 12.0,
					"patching_rect" : [ 130.0, 14.0, 355.0, 36.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-56",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "ajm.makenote",
					"fontsize" : 18.0,
					"patching_rect" : [ 7.0, 10.0, 132.0, 27.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-57",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "abstraction",
					"fontsize" : 9.0,
					"patching_rect" : [ 8.0, 35.0, 100.0, 17.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-58",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"grad1" : [ 0.823529, 1.0, 0.956863, 1.0 ],
					"patching_rect" : [ 5.0, 6.0, 474.0, 50.0 ],
					"mode" : 1,
					"grad2" : [ 0.219608, 0.564706, 0.462745, 1.0 ],
					"rounded" : 12,
					"angle" : 270.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-50"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"grad1" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"patching_rect" : [ 4.0, 5.0, 477.0, 54.0 ],
					"mode" : 1,
					"grad2" : [ 0.0, 0.0, 0.0, 1.0 ],
					"rounded" : 16,
					"angle" : 270.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-54"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 1 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [ 148.0, 173.0, 317.5, 173.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [ 137.5, 142.0, 39.5, 142.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 1 ],
					"destination" : [ "obj-29", 1 ],
					"hidden" : 0,
					"midpoints" : [ 148.0, 173.0, 56.5, 173.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 1 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-7", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 4 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [ 163.5, 308.0, 70.0, 308.0, 70.0, 214.0, 83.5, 214.0 ]
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
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [ 273.5, 142.0, 39.5, 142.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 2 ],
					"destination" : [ "obj-11", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
