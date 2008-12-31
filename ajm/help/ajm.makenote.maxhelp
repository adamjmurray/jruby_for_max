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
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess set",
					"fontname" : "Verdana",
					"patching_rect" : [ 178.0, 184.0, 84.0, 20.0 ],
					"hidden" : 1,
					"fontsize" : 11.1,
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-20",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Other symbols will pass through the right outlet.",
					"linecount" : 2,
					"fontname" : "Verdana",
					"patching_rect" : [ 268.0, 70.0, 155.0, 33.0 ],
					"fontsize" : 11.1,
					"numinlets" : 1,
					"presentation_rect" : [ 268.0, 67.0, 0.0, 0.0 ],
					"numoutlets" : 0,
					"id" : "obj-17"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "some random message",
					"fontname" : "Verdana",
					"patching_rect" : [ 144.0, 182.0, 140.0, 18.0 ],
					"fontsize" : 11.1,
					"numinlets" : 2,
					"presentation_rect" : [ 146.0, 168.0, 0.0, 0.0 ],
					"numoutlets" : 1,
					"id" : "obj-11",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\"some random message\"",
					"fontname" : "Verdana",
					"patching_rect" : [ 264.0, 107.0, 151.0, 18.0 ],
					"fontsize" : 11.1,
					"numinlets" : 2,
					"numoutlets" : 1,
					"id" : "obj-4",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess 120",
					"fontname" : "Verdana",
					"patching_rect" : [ 134.0, 240.0, 88.0, 20.0 ],
					"hidden" : 1,
					"fontsize" : 11.1,
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-6",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"htricolor" : [ 0.333333, 0.870588, 0.239216, 1.0 ],
					"fontname" : "Verdana",
					"patching_rect" : [ 74.0, 239.5, 50.0, 20.0 ],
					"tricolor" : [ 0.0, 0.0, 0.0, 0.501961 ],
					"minimum" : 1.0,
					"fontsize" : 11.1,
					"numinlets" : 1,
					"maximum" : 9999.0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.501961 ],
					"numoutlets" : 2,
					"id" : "obj-19",
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "transport @name ajm_mn_help",
					"fontname" : "Arial",
					"patching_rect" : [ 74.0, 283.5, 179.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 2,
					"numoutlets" : 9,
					"id" : "obj-42",
					"outlettype" : [ "int", "int", "float", "float", "float", "", "int", "float", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "tempo $1",
					"fontname" : "Verdana",
					"patching_rect" : [ 74.0, 262.5, 62.0, 18.0 ],
					"fontsize" : 11.1,
					"numinlets" : 2,
					"numoutlets" : 1,
					"id" : "obj-8",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Send a silent note to noteout so we don't have lag when playback first starts",
					"linecount" : 4,
					"fontname" : "Verdana",
					"patching_rect" : [ -22.0, 228.0, 122.0, 55.0 ],
					"hidden" : 1,
					"fontsize" : 10.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-16"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess 0 0",
					"fontname" : "Verdana",
					"patching_rect" : [ -16.0, 284.0, 85.0, 20.0 ],
					"hidden" : 1,
					"fontsize" : 11.1,
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-1",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "duration of note in ms",
					"fontname" : "Verdana",
					"patching_rect" : [ 337.0, 275.0, 150.0, 20.0 ],
					"fontsize" : 11.1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-23"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p \"transpose, velscale, durscale\"",
					"fontname" : "Verdana",
					"patching_rect" : [ 417.0, 161.0, 195.0, 20.0 ],
					"fontsize" : 11.0,
					"numinlets" : 0,
					"numoutlets" : 0,
					"id" : "obj-21",
					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 322.0, 50.0, 684.0, 476.0 ],
						"bglocked" : 0,
						"defrect" : [ 322.0, 50.0, 684.0, 476.0 ],
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
									"text" : "route tempo",
									"fontname" : "Verdana",
									"patching_rect" : [ 424.0, 441.0, 79.0, 20.0 ],
									"fontsize" : 11.1,
									"numinlets" : 1,
									"numoutlets" : 2,
									"id" : "obj-26",
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "volume",
									"fontname" : "Verdana",
									"patching_rect" : [ 325.0, 256.0, 57.0, 20.0 ],
									"fontsize" : 11.1,
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-31"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"fontname" : "Verdana",
									"patching_rect" : [ 210.0, 315.0, 50.0, 20.0 ],
									"minimum" : -36,
									"fontsize" : 11.1,
									"numinlets" : 1,
									"maximum" : 36,
									"numoutlets" : 2,
									"id" : "obj-28",
									"outlettype" : [ "int", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "multislider",
									"contdata" : 1,
									"patching_rect" : [ 336.0, 276.0, 25.0, 55.0 ],
									"setminmax" : [ 0.0, 1.0 ],
									"ghostbar" : 50,
									"numinlets" : 1,
									"numoutlets" : 2,
									"id" : "obj-21",
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend velscale",
									"fontname" : "Verdana",
									"patching_rect" : [ 336.0, 341.0, 104.0, 20.0 ],
									"fontsize" : 11.1,
									"numinlets" : 1,
									"numoutlets" : 1,
									"id" : "obj-14",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend transpose",
									"fontname" : "Verdana",
									"patching_rect" : [ 210.0, 341.0, 115.0, 20.0 ],
									"fontsize" : 11.1,
									"numinlets" : 1,
									"numoutlets" : 1,
									"id" : "obj-10",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "All attributes can be set via messages to the right inlet or as normal attributes when constructing the object.",
									"linecount" : 3,
									"fontname" : "Verdana",
									"patching_rect" : [ 446.0, 371.0, 234.0, 47.0 ],
									"fontsize" : 11.1,
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-9"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "jit.cellblock",
									"hcellcolor" : [ 0.443137, 0.815686, 0.705882, 1.0 ],
									"fontname" : "Verdana",
									"patching_rect" : [ 113.0, 67.0, 234.0, 76.0 ],
									"ignoreclick" : 1,
									"rows" : 4,
									"savemode" : 1,
									"fontsize" : 11.1,
									"selmode" : 5,
									"numinlets" : 2,
									"colwidth" : 230,
									"numoutlets" : 4,
									"id" : "obj-2",
									"cols" : 1,
									"outlettype" : [ "list", "", "", "" ],
									"cellmap" : [ [ 0, 0, "Description" ], [ 0, 1, "add", "a", "number", "of", "semitones", "to", "the", "pitch" ], [ 0, 2, "multiply", "the", "velocity" ], [ 0, 3, "multiply", "the", "duration" ] ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "jit.cellblock",
									"hcellcolor" : [ 0.443137, 0.815686, 0.705882, 1.0 ],
									"fontname" : "Verdana",
									"patching_rect" : [ 39.0, 67.0, 78.0, 76.0 ],
									"ignoreclick" : 1,
									"rows" : 4,
									"savemode" : 1,
									"fontsize" : 11.1,
									"selmode" : 5,
									"numinlets" : 2,
									"colwidth" : 74,
									"numoutlets" : 4,
									"id" : "obj-7",
									"cols" : 1,
									"outlettype" : [ "list", "", "", "" ],
									"cellmap" : [ [ 0, 0, "Attribute" ], [ 0, 1, "@transpose" ], [ 0, 2, "@velscale" ], [ 0, 3, "@durscale" ] ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "ajm.makenote supports basic MIDI transformation features:\ntranspose pitches or scale the velocity or duration",
									"linecount" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 38.0, 16.0, 441.0, 41.0 ],
									"fontsize" : 14.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-5"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend durscale",
									"fontname" : "Verdana",
									"patching_rect" : [ 501.0, 338.0, 107.0, 20.0 ],
									"fontsize" : 11.1,
									"numinlets" : 1,
									"numoutlets" : 1,
									"id" : "obj-13",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t s s",
									"fontname" : "Verdana",
									"patching_rect" : [ 239.0, 190.0, 34.0, 20.0 ],
									"fontsize" : 11.1,
									"numinlets" : 1,
									"numoutlets" : 2,
									"id" : "obj-12",
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess 0.9",
									"fontname" : "Verdana",
									"patching_rect" : [ 407.0, 235.0, 85.0, 20.0 ],
									"hidden" : 1,
									"fontsize" : 11.1,
									"numinlets" : 1,
									"numoutlets" : 1,
									"id" : "obj-24",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "legato",
									"fontname" : "Verdana",
									"patching_rect" : [ 598.0, 313.0, 63.0, 20.0 ],
									"fontsize" : 11.1,
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-23"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "staccato",
									"fontname" : "Verdana",
									"patching_rect" : [ 447.0, 313.0, 63.0, 20.0 ],
									"fontsize" : 11.1,
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-22"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "slider",
									"patching_rect" : [ 501.0, 312.0, 97.0, 20.0 ],
									"mult" : 0.95,
									"min" : 0.01,
									"numinlets" : 1,
									"numoutlets" : 1,
									"id" : "obj-19",
									"floatoutput" : 1,
									"size" : 1.0,
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "@durscale can control legato vs. staccato, and help avoid overlapping notes when changing tempos.",
									"linecount" : 3,
									"fontname" : "Verdana",
									"patching_rect" : [ 442.0, 261.0, 222.0, 47.0 ],
									"fontsize" : 11.1,
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-11"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "deferlow",
									"fontname" : "Verdana",
									"patching_rect" : [ 78.0, 254.0, 58.0, 20.0 ],
									"hidden" : 1,
									"fontsize" : 11.1,
									"numinlets" : 1,
									"numoutlets" : 1,
									"id" : "obj-6",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess 120",
									"fontname" : "Verdana",
									"patching_rect" : [ 134.0, 256.0, 88.0, 20.0 ],
									"hidden" : 1,
									"fontsize" : 11.1,
									"numinlets" : 1,
									"numoutlets" : 1,
									"id" : "obj-4",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"fontname" : "Verdana",
									"patching_rect" : [ 42.0, 248.0, 50.0, 20.0 ],
									"minimum" : 30,
									"fontsize" : 11.1,
									"numinlets" : 1,
									"maximum" : 3000,
									"numoutlets" : 2,
									"id" : "obj-34",
									"outlettype" : [ "int", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "tempo $1",
									"fontname" : "Verdana",
									"patching_rect" : [ 42.0, 286.0, 64.0, 18.0 ],
									"fontsize" : 11.1,
									"numinlets" : 2,
									"numoutlets" : 1,
									"id" : "obj-20",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ajm.metro 8n @start 1.1.0 @transport ajm_mn_trans",
									"fontname" : "Verdana",
									"patching_rect" : [ 239.0, 166.0, 314.0, 20.0 ],
									"fontsize" : 11.1,
									"numinlets" : 1,
									"numoutlets" : 2,
									"id" : "obj-1",
									"outlettype" : [ "bang", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"patching_rect" : [ 42.0, 330.0, 112.0, 106.0 ],
									"name" : "ajm.help-transport.maxpat",
									"args" : [ "@transport", "ajm_mn_trans" ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-17"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ajm.makenote @transport ajm_mn_trans @transpose 0 @velscale 0.9 @durscale 0.9",
									"linecount" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 182.0, 373.0, 261.0, 33.0 ],
									"fontsize" : 11.0,
									"numinlets" : 2,
									"numoutlets" : 3,
									"id" : "obj-3",
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"outlettype" : [ "int", "int", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Hit restart to play:",
									"fontname" : "Arial",
									"patching_rect" : [ 51.0, 310.0, 106.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-55"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "<-- format: bars.beats.units, \"pitch velocity duration\" \"tempo xxx\";",
									"fontname" : "Verdana",
									"patching_rect" : [ 296.0, 223.0, 385.0, 20.0 ],
									"fontsize" : 11.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-25"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "noteout",
									"fontname" : "Verdana",
									"patching_rect" : [ 182.0, 424.0, 53.0, 20.0 ],
									"fontsize" : 11.0,
									"numinlets" : 3,
									"numoutlets" : 0,
									"id" : "obj-27"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "coll",
									"fontname" : "Verdana",
									"patching_rect" : [ 239.0, 222.0, 60.0, 20.0 ],
									"fontsize" : 11.0,
									"numinlets" : 1,
									"numoutlets" : 4,
									"id" : "obj-30",
									"outlettype" : [ "", "", "", "" ],
									"save" : [ "#N", "coll", ";", "#T", "flags", 1, 0, ";", "#T", "store", "1.1.0", "tempo 120", "60 80 8n", ";", "#T", "store", "1.1.240", "60 80 8n", ";", "#T", "store", "1.2.0", "60 80 8n", ";", "#T", "store", "1.2.240", "60 80 8n", ";", "#T", "store", "1.3.0", "tempo 130", "60 80 8n", ";", "#T", "store", "1.3.240", "60 80 8n", ";", "#T", "store", "1.4.0", "60 80 8n", ";", "#T", "store", "1.4.240", "60 80 8n", ";", "#T", "store", "2.1.0", "tempo 140", "62 80 8n", ";", "#T", "store", "2.1.240", "62 80 8n", ";", "#T", "store", "2.2.0", "62 80 8n", ";", "#T", "store", "2.2.240", "62 80 8n", ";", "#T", "store", "2.3.0", "tempo 150", "62 80 8n", ";", "#T", "store", "2.3.240", "62 80 8n", ";", "#T", "store", "2.4.0", "62 80 8n", ";", "#T", "store", "2.4.240", "62 80 8n", ";", "#T", "store", "3.1.0", "tempo 160", "64 80 8n", ";", "#T", "store", "3.1.240", "64 80 8n", ";", "#T", "store", "3.2.0", "64 80 8n", ";", "#T", "store", "3.2.240", "64 80 8n", ";", "#T", "store", "3.3.0", "tempo 170", "64 80 8n", ";", "#T", "store", "3.3.240", "64 80 8n", ";", "#T", "store", "3.4.0", "64 80 8n", ";", "#T", "store", "3.4.240", "64 80 8n", ";", "#T", "store", "4.1.0", "tempo 180", "65 80 8n", ";", "#T", "store", "4.1.240", "65 80 8n", ";", "#T", "store", "4.2.0", "65 80 8n", ";", "#T", "store", "4.2.240", "65 80 8n", ";", "#T", "store", "4.3.0", "tempo 190", "65 80 8n", ";", "#T", "store", "4.3.240", "65 80 8n", ";", "#T", "store", "4.4.0", "65 80 8n", ";", "#T", "store", "4.4.240", "65 80 8n", ";", "#T", "store", "5.1.0", "tempo 200", "67 80 8n", ";", "#T", "store", "5.1.240", "67 80 8n", ";", "#T", "store", "5.2.0", "67 80 8n", ";", "#T", "store", "5.2.240", "67 80 8n", ";", "#T", "store", "5.3.0", "tempo 210", "67 80 8n", ";", "#T", "store", "5.3.240", "67 80 8n", ";", "#T", "store", "5.4.0", "67 80 8n", ";", "#T", "store", "5.4.240", "67 80 8n", ";", "#T", "store", "6.1.0", "tempo 200", "65 80 4n", ";", "#T", "store", "6.2.0", "tempo 190", "65 80 4n", ";", "#T", "store", "6.3.0", "tempo 180", "64 80 4n", ";", "#T", "store", "6.4.0", "tempo 160", "64 80 4n", ";", "#T", "store", "7.1.0", "tempo 140", "62 80 4n", ";", "#T", "store", "7.2.0", "tempo 120", "62 80 4n", ";", "#T", "store", "7.3.0", "60 80 4n", ";" ],
									"saved_object_attributes" : 									{
										"embed" : 1
									}

								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-34", 0 ],
									"hidden" : 0,
									"midpoints" : [ 433.5, 464.0, 18.0, 464.0, 18.0, 240.0, 51.5, 240.0 ]
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
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [ 248.5, 301.0, 191.5, 301.0 ]
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
									"source" : [ "obj-3", 1 ],
									"destination" : [ "obj-27", 1 ],
									"hidden" : 0,
									"midpoints" : [ 312.5, 416.0, 208.5, 416.0 ]
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
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-3", 1 ],
									"hidden" : 0,
									"midpoints" : [ 345.5, 367.0, 433.5, 367.0 ]
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
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-10", 0 ],
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
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-13", 0 ],
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
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
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
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-6", 0 ],
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
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 1,
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
									"source" : [ "obj-3", 2 ],
									"destination" : [ "obj-26", 0 ],
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
					"text" : "t b",
					"fontname" : "Verdana",
					"patching_rect" : [ 326.0, 206.0, 26.0, 20.0 ],
					"fontsize" : 11.1,
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-18",
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "sel 0",
					"fontname" : "Verdana",
					"patching_rect" : [ 308.0, 180.0, 37.0, 20.0 ],
					"fontsize" : 11.1,
					"numinlets" : 2,
					"numoutlets" : 2,
					"id" : "obj-15",
					"outlettype" : [ "bang", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "==",
					"fontname" : "Verdana",
					"patching_rect" : [ 102.0, 103.0, 30.0, 20.0 ],
					"fontsize" : 11.1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-41"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Try changing the tempo and see how the duration changes",
					"linecount" : 3,
					"fontname" : "Verdana",
					"patching_rect" : [ 143.0, 236.0, 128.0, 47.0 ],
					"fontsize" : 11.1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-39"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\"60 80 0.5\"",
					"fontname" : "Verdana",
					"patching_rect" : [ 30.0, 104.0, 75.0, 18.0 ],
					"fontsize" : 11.1,
					"numinlets" : 2,
					"numoutlets" : 1,
					"id" : "obj-37",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "noteout",
					"fontname" : "Verdana",
					"patching_rect" : [ 30.0, 182.0, 53.0, 20.0 ],
					"fontsize" : 11.0,
					"numinlets" : 3,
					"numoutlets" : 0,
					"id" : "obj-29"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "ajm.makenote @transport ajm_mn_help",
					"fontname" : "Verdana",
					"patching_rect" : [ 30.0, 148.0, 236.0, 20.0 ],
					"fontsize" : 11.0,
					"numinlets" : 2,
					"numoutlets" : 3,
					"id" : "obj-28",
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"outlettype" : [ "int", "int", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontname" : "Verdana",
					"patching_rect" : [ 287.0, 274.0, 50.0, 20.0 ],
					"fontsize" : 11.1,
					"numinlets" : 1,
					"numoutlets" : 2,
					"id" : "obj-9",
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "timer",
					"fontname" : "Verdana",
					"patching_rect" : [ 287.0, 247.0, 40.0, 20.0 ],
					"fontsize" : 11.1,
					"numinlets" : 2,
					"numoutlets" : 2,
					"id" : "obj-7",
					"outlettype" : [ "float", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\"60 80 8n\"",
					"fontname" : "Verdana",
					"patching_rect" : [ 128.0, 104.0, 71.0, 18.0 ],
					"fontsize" : 11.1,
					"numinlets" : 2,
					"numoutlets" : 1,
					"id" : "obj-5",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "thispatcher",
					"fontname" : "Verdana",
					"patching_rect" : [ 128.0, 460.0, 73.0, 20.0 ],
					"hidden" : 1,
					"fontsize" : 11.1,
					"numinlets" : 1,
					"numoutlets" : 2,
					"id" : "obj-31",
					"outlettype" : [ "", "" ],
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "ajm.bring-to-front-listener ajm.makenote",
					"fontname" : "Verdana",
					"patching_rect" : [ 128.0, 434.0, 243.0, 20.0 ],
					"hidden" : 1,
					"fontsize" : 11.1,
					"numinlets" : 0,
					"numoutlets" : 1,
					"id" : "obj-2",
					"outlettype" : [ "front" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "durations are expressed in beats or notevalues for the specified transport",
					"linecount" : 2,
					"fontname" : "Verdana",
					"patching_rect" : [ 25.0, 69.0, 225.0, 33.0 ],
					"fontsize" : 11.1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-14"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p chords",
					"fontname" : "Verdana",
					"patching_rect" : [ 417.0, 192.0, 58.0, 20.0 ],
					"fontsize" : 11.0,
					"numinlets" : 0,
					"numoutlets" : 0,
					"id" : "obj-10",
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
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ajm.metro 2n @transport ajm_mn_chord @start 1.1.0",
									"fontname" : "Verdana",
									"patching_rect" : [ 14.0, 9.0, 330.0, 20.0 ],
									"fontsize" : 11.1,
									"numinlets" : 1,
									"numoutlets" : 2,
									"id" : "obj-2",
									"outlettype" : [ "bang", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess set",
									"fontname" : "Verdana",
									"patching_rect" : [ 207.0, 89.0, 84.0, 20.0 ],
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
									"maxclass" : "message",
									"fontname" : "Arial",
									"patching_rect" : [ 32.0, 94.0, 257.0, 18.0 ],
									"fontsize" : 12.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"id" : "obj-12",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "the [zl iter] inside ajm.maktenote separates the chord into individual notes",
									"linecount" : 3,
									"fontname" : "Verdana",
									"patching_rect" : [ 100.0, 152.0, 182.0, 47.0 ],
									"fontsize" : 11.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-13"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ajm.makenote @transport ajm_mn_chord",
									"fontname" : "Arial",
									"patching_rect" : [ 14.0, 122.0, 231.0, 20.0 ],
									"fontsize" : 12.0,
									"numinlets" : 2,
									"numoutlets" : 3,
									"id" : "obj-11",
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"outlettype" : [ "int", "int", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"patching_rect" : [ 314.0, 93.0, 116.0, 117.0 ],
									"name" : "ajm.help-transport.maxpat",
									"args" : [ "@transport", "ajm_mn_chord" ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-8"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "each coll entry can contain multiple notes using the format:\nbars.beats.units, \"pitch1 velocity1 duration1\" ... \"pitchN velocityN durationN\";",
									"linecount" : 2,
									"fontname" : "Verdana",
									"patching_rect" : [ 76.0, 46.0, 449.0, 33.0 ],
									"fontsize" : 11.1,
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-4"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "noteout",
									"fontname" : "Verdana",
									"patching_rect" : [ 14.0, 183.0, 73.0, 20.0 ],
									"fontsize" : 11.1,
									"numinlets" : 3,
									"numoutlets" : 0,
									"id" : "obj-7"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "coll",
									"fontname" : "Verdana",
									"patching_rect" : [ 14.0, 53.0, 59.5, 20.0 ],
									"fontsize" : 11.1,
									"numinlets" : 1,
									"numoutlets" : 4,
									"id" : "obj-9",
									"outlettype" : [ "", "", "", "" ],
									"save" : [ "#N", "coll", ";", "#T", "flags", 1, 0, ";", "#T", "store", "1.1.0", "60 80 1.9", "64 80 1.9", "67 80 1.9", ";", "#T", "store", "1.3.0", "60 80 1.9", "65 80 1.9", "69 80 1.9", ";", "#T", "store", "2.1.0", "59 80 1.9", "62 80 1.9", "65 80 1.9", "67 80 1.9", ";", "#T", "store", "2.3.0", "60 80 1.9", "64 80 1.9", "67 80 1.9", ";" ],
									"saved_object_attributes" : 									{
										"embed" : 1
									}

								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
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
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-12", 1 ],
									"hidden" : 0,
									"midpoints" : [ 23.5, 88.0, 279.5, 88.0 ]
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
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 1 ],
									"destination" : [ "obj-7", 1 ],
									"hidden" : 0,
									"midpoints" : [ 129.5, 147.0, 50.5, 147.0 ]
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
					"patching_rect" : [ 496.0, 261.0, 145.0, 55.0 ],
					"name" : "ajm.seealso.maxpat",
					"args" : [ "ajm.metro", "ajm.midi2coll", "makenote", "translate", "transport", "coll", "noteout" ],
					"numinlets" : 1,
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
					"text" : "make and transform notes from \"pitch,velocity,duration\" symbols with durations relative to transport time",
					"linecount" : 2,
					"fontname" : "Verdana",
					"patching_rect" : [ 130.0, 14.0, 355.0, 36.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-56"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "ajm.makenote",
					"fontname" : "Arial",
					"patching_rect" : [ 7.0, 10.0, 132.0, 27.0 ],
					"fontsize" : 18.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-57"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "abstraction",
					"fontname" : "Verdana",
					"patching_rect" : [ 8.0, 35.0, 100.0, 17.0 ],
					"fontsize" : 9.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-58"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 5.0, 6.0, 474.0, 50.0 ],
					"rounded" : 12,
					"grad1" : [ 0.823529, 1.0, 0.956863, 1.0 ],
					"angle" : 270.0,
					"mode" : 1,
					"grad2" : [ 0.219608, 0.564706, 0.462745, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-50"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 4.0, 5.0, 477.0, 54.0 ],
					"rounded" : 16,
					"grad1" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"angle" : 270.0,
					"mode" : 1,
					"grad2" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-54"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
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
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [ 273.5, 142.0, 39.5, 142.0 ]
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
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 4 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [ 163.5, 308.0, 70.0, 308.0, 70.0, 231.0, 83.5, 231.0 ]
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
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 1,
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
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
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
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 1,
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
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
					"source" : [ "obj-28", 1 ],
					"destination" : [ "obj-29", 1 ],
					"hidden" : 0,
					"midpoints" : [ 148.0, 173.0, 56.5, 173.0 ]
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
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [ 148.0, 173.0, 317.5, 173.0 ]
				}

			}
 ]
	}

}
