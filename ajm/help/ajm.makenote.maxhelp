{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 23.0, 49.0, 638.0, 425.0 ],
		"bglocked" : 0,
		"defrect" : [ 23.0, 49.0, 638.0, 425.0 ],
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
					"text" : "tempo changes",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 165.0, 263.0, 59.0, 33.0 ],
					"fontsize" : 11.1,
					"numoutlets" : 0,
					"id" : "obj-16"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t s s",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 222.0, 196.0, 34.0, 20.0 ],
					"fontsize" : 11.1,
					"numoutlets" : 2,
					"id" : "obj-12",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "coll",
					"fontname" : "Verdana",
					"presentation_rect" : [ 165.0, 254.0, 0.0, 0.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 157.0, 247.0, 60.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 4,
					"id" : "obj-8",
					"outlettype" : [ "", "", "", "" ],
					"save" : [ "#N", "coll", ";", "#T", "flags", 1, 0, ";", "#T", "store", "1.1.0", 120, ";", "#T", "store", "1.3.0", 130, ";", "#T", "store", "2.1.0", 140, ";", "#T", "store", "2.3.0", 150, ";", "#T", "store", "3.1.0", 160, ";", "#T", "store", "3.3.0", 170, ";", "#T", "store", "4.1.0", 180, ";", "#T", "store", "4.3.0", 190, ";", "#T", "store", "5.1.0", 200, ";", "#T", "store", "5.3.0", 210, ";", "#T", "store", "6.1.0", 200, ";", "#T", "store", "6.2.0", 190, ";", "#T", "store", "6.3.0", 180, ";", "#T", "store", "6.4.0", 160, ";", "#T", "store", "7.1.0", 140, ";", "#T", "store", "7.2.0", 120, ";" ],
					"saved_object_attributes" : 					{
						"embed" : 1
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess 0.9",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"hidden" : 1,
					"patching_rect" : [ 399.0, 270.0, 85.0, 20.0 ],
					"fontsize" : 11.1,
					"numoutlets" : 1,
					"id" : "obj-24",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "legato",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 453.0, 306.0, 63.0, 20.0 ],
					"fontsize" : 11.1,
					"numoutlets" : 0,
					"id" : "obj-23"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "staccato",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 302.0, 306.0, 63.0, 20.0 ],
					"fontsize" : 11.1,
					"numoutlets" : 0,
					"id" : "obj-22"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "slider",
					"floatoutput" : 1,
					"numinlets" : 1,
					"min" : 0.01,
					"patching_rect" : [ 356.0, 305.0, 97.0, 20.0 ],
					"numoutlets" : 1,
					"id" : "obj-19",
					"outlettype" : [ "" ],
					"size" : 1.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "The @multiplier will multiply all durations. This can control legato vs. staccato, and help avoid overlapping notes when changing tempos.",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 233.0, 268.0, 396.0, 33.0 ],
					"fontsize" : 11.1,
					"numoutlets" : 0,
					"id" : "obj-11"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "deferlow",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"hidden" : 1,
					"patching_rect" : [ 61.0, 211.0, 58.0, 20.0 ],
					"fontsize" : 11.1,
					"numoutlets" : 1,
					"id" : "obj-6",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess 120",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"hidden" : 1,
					"patching_rect" : [ 117.0, 213.0, 88.0, 20.0 ],
					"fontsize" : 11.1,
					"numoutlets" : 1,
					"id" : "obj-4",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "==",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 116.0, 75.0, 30.0, 20.0 ],
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
					"patching_rect" : [ 40.0, 165.0, 85.0, 33.0 ],
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
					"patching_rect" : [ 52.0, 76.0, 65.0, 18.0 ],
					"fontsize" : 11.1,
					"numoutlets" : 1,
					"id" : "obj-37",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"minimum" : 30,
					"patching_rect" : [ 25.0, 205.0, 50.0, 20.0 ],
					"fontsize" : 11.1,
					"numoutlets" : 2,
					"maximum" : 3000,
					"id" : "obj-34",
					"outlettype" : [ "int", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "noteout",
					"fontname" : "Verdana",
					"numinlets" : 3,
					"patching_rect" : [ 52.0, 142.0, 53.0, 20.0 ],
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
					"patching_rect" : [ 52.0, 108.0, 236.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 2,
					"id" : "obj-28",
					"outlettype" : [ "int", "int" ],
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "tempo $1",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 25.0, 243.0, 64.0, 18.0 ],
					"fontsize" : 11.1,
					"numoutlets" : 1,
					"id" : "obj-20",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numinlets" : 1,
					"patching_rect" : [ 137.0, 137.0, 20.0, 20.0 ],
					"numoutlets" : 1,
					"id" : "obj-13",
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 126.0, 192.0, 50.0, 20.0 ],
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
					"patching_rect" : [ 126.0, 165.0, 40.0, 20.0 ],
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
					"patching_rect" : [ 141.0, 76.0, 61.0, 18.0 ],
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
					"patching_rect" : [ 148.0, 444.0, 73.0, 20.0 ],
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
					"patching_rect" : [ 148.0, 418.0, 243.0, 20.0 ],
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
					"patching_rect" : [ 209.0, 73.0, 225.0, 33.0 ],
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
					"patching_rect" : [ 496.0, 113.0, 58.0, 20.0 ],
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
									"outlettype" : [ "bang", "bang" ]
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
, 							{
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
					"text" : "ajm.metro 8n @transport ajm_mn_help",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 222.0, 172.0, 234.0, 20.0 ],
					"fontsize" : 11.1,
					"numoutlets" : 2,
					"id" : "obj-1",
					"outlettype" : [ "bang", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"numinlets" : 1,
					"args" : [ "@transport", "ajm_mn_help" ],
					"patching_rect" : [ 25.0, 287.0, 112.0, 106.0 ],
					"numoutlets" : 0,
					"id" : "obj-17",
					"name" : "ajm.help-transport.maxpat"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "ajm.makenote @transport ajm_mn_help @multiplier 0.9",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 160.0, 331.0, 325.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 2,
					"id" : "obj-3",
					"outlettype" : [ "int", "int" ],
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Hit restart to play:",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 34.0, 267.0, 106.0, 20.0 ],
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"id" : "obj-55"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "<-- format: bars.beats.units, pitch velocity duration;",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 277.0, 229.0, 307.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 0,
					"id" : "obj-25"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "noteout",
					"fontname" : "Verdana",
					"numinlets" : 3,
					"patching_rect" : [ 160.0, 370.0, 53.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 0,
					"id" : "obj-27"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "coll",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 222.0, 228.0, 60.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 4,
					"id" : "obj-30",
					"outlettype" : [ "", "", "", "" ],
					"save" : [ "#N", "coll", ";", "#T", "flags", 1, 0, ";", "#T", "store", "1.1.0", 60, 80, "8n", ";", "#T", "store", "1.1.240", 60, 80, "8n", ";", "#T", "store", "1.2.0", 60, 80, "8n", ";", "#T", "store", "1.2.240", 60, 80, "8n", ";", "#T", "store", "1.3.0", 60, 80, "8n", ";", "#T", "store", "1.3.240", 60, 80, "8n", ";", "#T", "store", "1.4.0", 60, 80, "8n", ";", "#T", "store", "1.4.240", 60, 80, "8n", ";", "#T", "store", "2.1.0", 62, 80, "8n", ";", "#T", "store", "2.1.240", 62, 80, "8n", ";", "#T", "store", "2.2.0", 62, 80, "8n", ";", "#T", "store", "2.2.240", 62, 80, "8n", ";", "#T", "store", "2.3.0", 62, 80, "8n", ";", "#T", "store", "2.3.240", 62, 80, "8n", ";", "#T", "store", "2.4.0", 62, 80, "8n", ";", "#T", "store", "2.4.240", 62, 80, "8n", ";", "#T", "store", "3.1.0", 64, 80, "8n", ";", "#T", "store", "3.1.240", 64, 80, "8n", ";", "#T", "store", "3.2.0", 64, 80, "8n", ";", "#T", "store", "3.2.240", 64, 80, "8n", ";", "#T", "store", "3.3.0", 64, 80, "8n", ";", "#T", "store", "3.3.240", 64, 80, "8n", ";", "#T", "store", "3.4.0", 64, 80, "8n", ";", "#T", "store", "3.4.240", 64, 80, "8n", ";", "#T", "store", "4.1.0", 65, 80, "8n", ";", "#T", "store", "4.1.240", 65, 80, "8n", ";", "#T", "store", "4.2.0", 65, 80, "8n", ";", "#T", "store", "4.2.240", 65, 80, "8n", ";", "#T", "store", "4.3.0", 65, 80, "8n", ";", "#T", "store", "4.3.240", 65, 80, "8n", ";", "#T", "store", "4.4.0", 65, 80, "8n", ";", "#T", "store", "4.4.240", 65, 80, "8n", ";", "#T", "store", "5.1.0", 67, 80, "8n", ";", "#T", "store", "5.1.240", 67, 80, "8n", ";", "#T", "store", "5.2.0", 67, 80, "8n", ";", "#T", "store", "5.2.240", 67, 80, "8n", ";", "#T", "store", "5.3.0", 67, 80, "8n", ";", "#T", "store", "5.3.240", 67, 80, "8n", ";", "#T", "store", "5.4.0", 67, 80, "8n", ";", "#T", "store", "5.4.240", 67, 80, "8n", ";", "#T", "store", "6.1.0", 65, 80, "4n", ";", "#T", "store", "6.2.0", 65, 80, "4n", ";", "#T", "store", "6.3.0", 64, 80, "4n", ";", "#T", "store", "6.4.0", 64, 80, "4n", ";", "#T", "store", "7.1.0", 62, 80, "4n", ";", "#T", "store", "7.2.0", 62, 80, "4n", ";", "#T", "store", "7.3.0", 60, 80, "4n", ";" ],
					"saved_object_attributes" : 					{
						"embed" : 1
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"numinlets" : 1,
					"lockeddragscroll" : 1,
					"args" : [ "ajm.metro", "ajm.midi2coll", "makenote", "translate", "transport", "coll", "noteout" ],
					"patching_rect" : [ 485.0, 365.0, 145.0, 55.0 ],
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
					"patching_rect" : [ 495.0, 10.0, 138.0, 55.0 ],
					"numoutlets" : 0,
					"id" : "obj-48",
					"name" : "ajm.helplinks.maxpat"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "make notes from a pitch,velocity,duration list\nwith durations relative to transport time",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 162.0, 16.0, 324.0, 36.0 ],
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
					"patching_rect" : [ 27.0, 13.0, 132.0, 27.0 ],
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
					"patching_rect" : [ 28.0, 38.0, 100.0, 17.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"id" : "obj-58"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"grad1" : [ 0.823529, 1.0, 0.956863, 1.0 ],
					"grad2" : [ 0.219608, 0.564706, 0.462745, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 25.0, 9.0, 448.0, 50.0 ],
					"mode" : 1,
					"numoutlets" : 0,
					"rounded" : 12,
					"angle" : 270.0,
					"id" : "obj-50"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"grad1" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"grad2" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 24.0, 8.0, 451.0, 54.0 ],
					"mode" : 1,
					"numoutlets" : 0,
					"rounded" : 16,
					"angle" : 270.0,
					"id" : "obj-54"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [ 166.5, 271.0, 146.0, 271.0, 146.0, 236.0, 34.5, 236.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 1 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [ 231.5, 327.0, 169.5, 327.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-7", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-7", 0 ],
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
					"source" : [ "obj-28", 1 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [ 278.5, 133.0, 146.5, 133.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [ 150.5, 102.0, 61.5, 102.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 1 ],
					"destination" : [ "obj-29", 1 ],
					"hidden" : 0,
					"midpoints" : [ 278.5, 133.0, 78.5, 133.0 ]
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
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-3", 1 ],
					"hidden" : 0,
					"midpoints" : [ 365.5, 327.0, 475.5, 327.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 1 ],
					"destination" : [ "obj-27", 1 ],
					"hidden" : 0,
					"midpoints" : [ 475.5, 359.0, 186.5, 359.0 ]
				}

			}
 ]
	}

}
