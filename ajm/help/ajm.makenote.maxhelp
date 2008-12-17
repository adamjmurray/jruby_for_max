{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 23.0, 49.0, 650.0, 329.0 ],
		"bglocked" : 0,
		"defrect" : [ 23.0, 49.0, 650.0, 329.0 ],
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
					"maxclass" : "comment",
					"text" : "Send a silent note to noteout so we don't have lag when playback first starts",
					"linecount" : 4,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"hidden" : 1,
					"patching_rect" : [ -20.0, 211.0, 122.0, 55.0 ],
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"id" : "obj-16"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess 0 0",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"hidden" : 1,
					"patching_rect" : [ -14.0, 267.0, 85.0, 20.0 ],
					"fontsize" : 11.1,
					"numoutlets" : 1,
					"id" : "obj-1",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"numinlets" : 1,
					"args" : [ "@transport", "ajm_mn_help" ],
					"patching_rect" : [ 92.0, 200.0, 112.0, 106.0 ],
					"numoutlets" : 0,
					"id" : "obj-17",
					"name" : "ajm.help-transport.maxpat"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "duration of note in ms",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 280.0, 258.0, 150.0, 20.0 ],
					"fontsize" : 11.1,
					"numoutlets" : 0,
					"id" : "obj-23"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p \"transpose, velscale, durscale\"",
					"fontname" : "Verdana",
					"numinlets" : 0,
					"patching_rect" : [ 419.0, 144.0, 195.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 0,
					"id" : "obj-21",
					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 322.0, 50.0, 682.0, 493.0 ],
						"bglocked" : 0,
						"defrect" : [ 322.0, 50.0, 682.0, 493.0 ],
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
									"text" : "volume",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 321.0, 277.0, 57.0, 20.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 0,
									"id" : "obj-31"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 206.0, 336.0, 50.0, 20.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 2,
									"minimum" : -36,
									"id" : "obj-28",
									"outlettype" : [ "int", "bang" ],
									"maximum" : 36
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "multislider",
									"contdata" : 1,
									"numinlets" : 1,
									"setminmax" : [ 0.0, 1.0 ],
									"patching_rect" : [ 332.0, 297.0, 25.0, 55.0 ],
									"numoutlets" : 2,
									"ghostbar" : 50,
									"id" : "obj-21",
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend velscale",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 332.0, 362.0, 104.0, 20.0 ],
									"fontsize" : 11.1,
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
									"numinlets" : 1,
									"patching_rect" : [ 206.0, 362.0, 115.0, 20.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 1,
									"id" : "obj-10",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "All attributes can be set via messages to the right inlet or as normal attributes when constructing the object.",
									"linecount" : 4,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 445.0, 393.0, 178.0, 60.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 0,
									"id" : "obj-9"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "jit.cellblock",
									"savemode" : 1,
									"fontname" : "Verdana",
									"ignoreclick" : 1,
									"hcellcolor" : [ 0.443137, 0.815686, 0.705882, 1.0 ],
									"numinlets" : 2,
									"patching_rect" : [ 113.0, 67.0, 234.0, 76.0 ],
									"rows" : 4,
									"fontsize" : 11.1,
									"numoutlets" : 4,
									"cols" : 1,
									"id" : "obj-2",
									"outlettype" : [ "list", "", "", "" ],
									"colwidth" : 230,
									"selmode" : 5,
									"cellmap" : [ [ 0, 0, "Description" ], [ 0, 1, "add", "a", "number", "of", "semitones", "to", "the", "pitch" ], [ 0, 2, "multiply", "the", "velocity" ], [ 0, 3, "multiply", "the", "duration" ] ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "jit.cellblock",
									"savemode" : 1,
									"fontname" : "Verdana",
									"ignoreclick" : 1,
									"hcellcolor" : [ 0.443137, 0.815686, 0.705882, 1.0 ],
									"numinlets" : 2,
									"patching_rect" : [ 39.0, 67.0, 78.0, 76.0 ],
									"rows" : 4,
									"fontsize" : 11.1,
									"numoutlets" : 4,
									"cols" : 1,
									"id" : "obj-7",
									"outlettype" : [ "list", "", "", "" ],
									"colwidth" : 74,
									"selmode" : 5,
									"cellmap" : [ [ 0, 0, "Attribute" ], [ 0, 1, "@transpose" ], [ 0, 2, "@velscale" ], [ 0, 3, "@durscale" ] ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "ajm.makenote supports basic MIDI transformation features:\ntranspose pitches or scale the velocity or duration",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 38.0, 16.0, 441.0, 41.0 ],
									"fontsize" : 14.0,
									"numoutlets" : 0,
									"id" : "obj-5"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend durscale",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 497.0, 359.0, 107.0, 20.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 1,
									"id" : "obj-13",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "tempo changes",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 182.0, 257.0, 59.0, 33.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 0,
									"id" : "obj-16"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t s s",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 239.0, 190.0, 34.0, 20.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 2,
									"id" : "obj-12",
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "coll",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 174.0, 241.0, 60.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 4,
									"id" : "obj-8",
									"outlettype" : [ "", "", "", "" ],
									"save" : [ "#N", "coll", ";", "#T", "flags", 1, 0, ";", "#T", "store", "1.1.0", 120, ";", "#T", "store", "1.3.0", 130, ";", "#T", "store", "2.1.0", 140, ";", "#T", "store", "2.3.0", 150, ";", "#T", "store", "3.1.0", 160, ";", "#T", "store", "3.3.0", 170, ";", "#T", "store", "4.1.0", 180, ";", "#T", "store", "4.3.0", 190, ";", "#T", "store", "5.1.0", 200, ";", "#T", "store", "5.3.0", 210, ";", "#T", "store", "6.1.0", 200, ";", "#T", "store", "6.2.0", 190, ";", "#T", "store", "6.3.0", 180, ";", "#T", "store", "6.4.0", 160, ";", "#T", "store", "7.1.0", 140, ";", "#T", "store", "7.2.0", 120, ";" ],
									"saved_object_attributes" : 									{
										"embed" : 1
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess 0.9",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"hidden" : 1,
									"patching_rect" : [ 403.0, 256.0, 85.0, 20.0 ],
									"fontsize" : 11.1,
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
									"numinlets" : 1,
									"patching_rect" : [ 594.0, 334.0, 63.0, 20.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 0,
									"id" : "obj-23"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "staccato",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 443.0, 334.0, 63.0, 20.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 0,
									"id" : "obj-22"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "slider",
									"floatoutput" : 1,
									"mult" : 0.95,
									"numinlets" : 1,
									"min" : 0.01,
									"patching_rect" : [ 497.0, 333.0, 97.0, 20.0 ],
									"numoutlets" : 1,
									"id" : "obj-19",
									"outlettype" : [ "" ],
									"size" : 1.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "@durscale can control legato vs. staccato, and help avoid overlapping notes when changing tempos.",
									"linecount" : 3,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 438.0, 282.0, 222.0, 47.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 0,
									"id" : "obj-11"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "deferlow",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"hidden" : 1,
									"patching_rect" : [ 78.0, 205.0, 58.0, 20.0 ],
									"fontsize" : 11.1,
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
									"numinlets" : 1,
									"hidden" : 1,
									"patching_rect" : [ 134.0, 207.0, 88.0, 20.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 1,
									"id" : "obj-4",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 42.0, 199.0, 50.0, 20.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 2,
									"minimum" : 30,
									"id" : "obj-34",
									"outlettype" : [ "int", "bang" ],
									"maximum" : 3000
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "tempo $1",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 42.0, 237.0, 64.0, 18.0 ],
									"fontsize" : 11.1,
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
									"numinlets" : 1,
									"patching_rect" : [ 239.0, 166.0, 314.0, 20.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 2,
									"id" : "obj-1",
									"outlettype" : [ "", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"numinlets" : 1,
									"args" : [ "@transport", "ajm_mn_trans" ],
									"patching_rect" : [ 42.0, 281.0, 112.0, 106.0 ],
									"numoutlets" : 0,
									"id" : "obj-17",
									"name" : "ajm.help-transport.maxpat"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ajm.makenote @transport ajm_mn_trans @transpose 0 @velscale 0.9 @durscale 0.9",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 178.0, 394.0, 261.0, 33.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 2,
									"id" : "obj-3",
									"outlettype" : [ "int", "int" ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Hit restart to play:",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 51.0, 261.0, 106.0, 20.0 ],
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"id" : "obj-55"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "<-- format: bars.beats.units, pitch velocity duration;",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 296.0, 223.0, 307.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-25"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "noteout",
									"fontname" : "Verdana",
									"numinlets" : 3,
									"patching_rect" : [ 178.0, 445.0, 53.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-27"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "coll",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 239.0, 222.0, 60.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 4,
									"id" : "obj-30",
									"outlettype" : [ "", "", "", "" ],
									"save" : [ "#N", "coll", ";", "#T", "flags", 1, 0, ";", "#T", "store", "1.1.0", 60, 80, "8n", ";", "#T", "store", "1.1.240", 60, 80, "8n", ";", "#T", "store", "1.2.0", 60, 80, "8n", ";", "#T", "store", "1.2.240", 60, 80, "8n", ";", "#T", "store", "1.3.0", 60, 80, "8n", ";", "#T", "store", "1.3.240", 60, 80, "8n", ";", "#T", "store", "1.4.0", 60, 80, "8n", ";", "#T", "store", "1.4.240", 60, 80, "8n", ";", "#T", "store", "2.1.0", 62, 80, "8n", ";", "#T", "store", "2.1.240", 62, 80, "8n", ";", "#T", "store", "2.2.0", 62, 80, "8n", ";", "#T", "store", "2.2.240", 62, 80, "8n", ";", "#T", "store", "2.3.0", 62, 80, "8n", ";", "#T", "store", "2.3.240", 62, 80, "8n", ";", "#T", "store", "2.4.0", 62, 80, "8n", ";", "#T", "store", "2.4.240", 62, 80, "8n", ";", "#T", "store", "3.1.0", 64, 80, "8n", ";", "#T", "store", "3.1.240", 64, 80, "8n", ";", "#T", "store", "3.2.0", 64, 80, "8n", ";", "#T", "store", "3.2.240", 64, 80, "8n", ";", "#T", "store", "3.3.0", 64, 80, "8n", ";", "#T", "store", "3.3.240", 64, 80, "8n", ";", "#T", "store", "3.4.0", 64, 80, "8n", ";", "#T", "store", "3.4.240", 64, 80, "8n", ";", "#T", "store", "4.1.0", 65, 80, "8n", ";", "#T", "store", "4.1.240", 65, 80, "8n", ";", "#T", "store", "4.2.0", 65, 80, "8n", ";", "#T", "store", "4.2.240", 65, 80, "8n", ";", "#T", "store", "4.3.0", 65, 80, "8n", ";", "#T", "store", "4.3.240", 65, 80, "8n", ";", "#T", "store", "4.4.0", 65, 80, "8n", ";", "#T", "store", "4.4.240", 65, 80, "8n", ";", "#T", "store", "5.1.0", 67, 80, "8n", ";", "#T", "store", "5.1.240", 67, 80, "8n", ";", "#T", "store", "5.2.0", 67, 80, "8n", ";", "#T", "store", "5.2.240", 67, 80, "8n", ";", "#T", "store", "5.3.0", 67, 80, "8n", ";", "#T", "store", "5.3.240", 67, 80, "8n", ";", "#T", "store", "5.4.0", 67, 80, "8n", ";", "#T", "store", "5.4.240", 67, 80, "8n", ";", "#T", "store", "6.1.0", 65, 80, "4n", ";", "#T", "store", "6.2.0", 65, 80, "4n", ";", "#T", "store", "6.3.0", 64, 80, "4n", ";", "#T", "store", "6.4.0", 64, 80, "4n", ";", "#T", "store", "7.1.0", 62, 80, "4n", ";", "#T", "store", "7.2.0", 62, 80, "4n", ";", "#T", "store", "7.3.0", 60, 80, "4n", ";" ],
									"saved_object_attributes" : 									{
										"embed" : 1
									}

								}

							}
 ],
						"lines" : [ 							{
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
									"source" : [ "obj-12", 1 ],
									"destination" : [ "obj-8", 0 ],
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
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [ 183.5, 265.0, 163.0, 265.0, 163.0, 230.0, 51.5, 230.0 ]
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
									"midpoints" : [ 215.5, 388.0, 429.5, 388.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-3", 1 ],
									"hidden" : 0,
									"midpoints" : [ 341.5, 388.0, 429.5, 388.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-3", 1 ],
									"hidden" : 0,
									"midpoints" : [ 506.5, 388.0, 429.5, 388.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 1 ],
									"destination" : [ "obj-27", 1 ],
									"hidden" : 0,
									"midpoints" : [ 429.5, 437.0, 204.5, 437.0 ]
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
									"midpoints" : [ 248.5, 321.0, 187.5, 321.0 ]
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
					"text" : "t b",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 267.0, 190.0, 26.0, 20.0 ],
					"fontsize" : 11.1,
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
					"numinlets" : 2,
					"patching_rect" : [ 249.0, 164.0, 37.0, 20.0 ],
					"fontsize" : 11.1,
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
					"numinlets" : 1,
					"patching_rect" : [ 96.0, 86.0, 30.0, 20.0 ],
					"fontsize" : 11.1,
					"numoutlets" : 0,
					"id" : "obj-41"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Try changing the tempo",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 106.0, 165.0, 85.0, 33.0 ],
					"fontsize" : 11.1,
					"numoutlets" : 0,
					"id" : "obj-39"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "60 80 0.5",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 32.0, 87.0, 65.0, 18.0 ],
					"fontsize" : 11.1,
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
					"numinlets" : 3,
					"patching_rect" : [ 32.0, 165.0, 53.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 0,
					"id" : "obj-29"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "ajm.makenote @transport ajm_mn_help",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 32.0, 131.0, 236.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 2,
					"id" : "obj-28",
					"outlettype" : [ "int", "int" ],
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 228.0, 258.0, 50.0, 20.0 ],
					"fontsize" : 11.1,
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
					"numinlets" : 2,
					"patching_rect" : [ 228.0, 231.0, 40.0, 20.0 ],
					"fontsize" : 11.1,
					"numoutlets" : 2,
					"id" : "obj-7",
					"outlettype" : [ "float", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "60 80 8n",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 121.0, 87.0, 61.0, 18.0 ],
					"fontsize" : 11.1,
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
					"numinlets" : 1,
					"hidden" : 1,
					"patching_rect" : [ 130.0, 443.0, 73.0, 20.0 ],
					"fontsize" : 11.1,
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
					"numinlets" : 0,
					"hidden" : 1,
					"patching_rect" : [ 130.0, 417.0, 243.0, 20.0 ],
					"fontsize" : 11.1,
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
					"numinlets" : 1,
					"patching_rect" : [ 189.0, 84.0, 225.0, 33.0 ],
					"fontsize" : 11.1,
					"numoutlets" : 0,
					"id" : "obj-14"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p chords",
					"fontname" : "Verdana",
					"numinlets" : 0,
					"patching_rect" : [ 419.0, 175.0, 58.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 0,
					"id" : "obj-10",
					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 379.0, 100.0, 513.0, 229.0 ],
						"bglocked" : 0,
						"defrect" : [ 379.0, 100.0, 513.0, 229.0 ],
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
									"numinlets" : 1,
									"patching_rect" : [ 14.0, 9.0, 330.0, 20.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 2,
									"id" : "obj-2",
									"outlettype" : [ "", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess set",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"hidden" : 1,
									"patching_rect" : [ 201.0, 92.0, 84.0, 20.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 1,
									"id" : "obj-1",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"fontname" : "Arial",
									"numinlets" : 2,
									"patching_rect" : [ 32.0, 94.0, 234.0, 18.0 ],
									"fontsize" : 12.0,
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
									"numinlets" : 1,
									"patching_rect" : [ 100.0, 152.0, 182.0, 47.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-13"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ajm.makenote @transport ajm_mn_chord",
									"fontname" : "Arial",
									"numinlets" : 2,
									"patching_rect" : [ 14.0, 122.0, 231.0, 20.0 ],
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"id" : "obj-11",
									"outlettype" : [ "int", "int" ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"numinlets" : 1,
									"args" : [ "@transport", "ajm_mn_chord" ],
									"patching_rect" : [ 314.0, 93.0, 116.0, 117.0 ],
									"numoutlets" : 0,
									"id" : "obj-8",
									"name" : "ajm.help-transport.maxpat"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "each coll entry can contain multiple notes using the format:\nbars.beats.units, pitch1 velocity1 duration1 ... pitchN velocityN durationN;",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 76.0, 46.0, 431.0, 33.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 0,
									"id" : "obj-4"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "noteout",
									"fontname" : "Verdana",
									"numinlets" : 3,
									"patching_rect" : [ 14.0, 183.0, 73.0, 20.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 0,
									"id" : "obj-7"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "coll",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 14.0, 53.0, 59.5, 20.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 4,
									"id" : "obj-9",
									"outlettype" : [ "", "", "", "" ],
									"save" : [ "#N", "coll", ";", "#T", "flags", 1, 0, ";", "#T", "store", "1.1.0", 60, 80, 1.9, 64, 80, 1.9, 67, 80, 1.9, ";", "#T", "store", "1.3.0", 60, 80, 1.9, 65, 80, 1.9, 69, 80, 1.9, ";", "#T", "store", "2.1.0", 59, 80, 1.9, 62, 80, 1.9, 65, 80, 1.9, 67, 80, 1.9, ";", "#T", "store", "2.3.0", 60, 80, 1.9, 64, 80, 1.9, 67, 80, 1.9, ";" ],
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
									"midpoints" : [ 235.5, 147.0, 50.5, 147.0 ]
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
									"midpoints" : [ 23.5, 88.0, 256.5, 88.0 ]
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
					"numinlets" : 1,
					"lockeddragscroll" : 1,
					"args" : [ "ajm.metro", "ajm.midi2coll", "makenote", "translate", "transport", "coll", "noteout" ],
					"patching_rect" : [ 500.0, 271.0, 145.0, 55.0 ],
					"numoutlets" : 0,
					"id" : "obj-60",
					"name" : "ajm.seealso.maxpat"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"numinlets" : 0,
					"lockeddragscroll" : 1,
					"args" : [  ],
					"patching_rect" : [ 510.0, 9.0, 138.0, 55.0 ],
					"numoutlets" : 0,
					"id" : "obj-48",
					"name" : "ajm.helplinks.maxpat"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "make and transform notes from pitch,velocity,duration list with durations relative to transport time",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 132.0, 16.0, 355.0, 36.0 ],
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"id" : "obj-56"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "ajm.makenote",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 9.0, 12.0, 132.0, 27.0 ],
					"fontsize" : 18.0,
					"numoutlets" : 0,
					"id" : "obj-57"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "abstraction",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 10.0, 37.0, 100.0, 17.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"id" : "obj-58"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"patching_rect" : [ 7.0, 8.0, 465.0, 50.0 ],
					"mode" : 1,
					"numoutlets" : 0,
					"rounded" : 12,
					"id" : "obj-50",
					"grad1" : [ 0.823529, 1.0, 0.956863, 1.0 ],
					"angle" : 270.0,
					"grad2" : [ 0.219608, 0.564706, 0.462745, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"patching_rect" : [ 6.0, 7.0, 468.0, 54.0 ],
					"mode" : 1,
					"numoutlets" : 0,
					"rounded" : 16,
					"id" : "obj-54",
					"grad1" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"angle" : 270.0,
					"grad2" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-28", 1 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [ 130.5, 125.0, 41.5, 125.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 1 ],
					"destination" : [ "obj-29", 1 ],
					"hidden" : 0,
					"midpoints" : [ 258.5, 156.0, 58.5, 156.0 ]
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
 ]
	}

}
