{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 31.0, 44.0, 761.0, 483.0 ],
		"bglocked" : 0,
		"defrect" : [ 31.0, 44.0, 761.0, 483.0 ],
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
					"patching_rect" : [ 6.0, 317.0, 122.0, 55.0 ],
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
					"patching_rect" : [ 12.0, 373.0, 85.0, 20.0 ],
					"fontsize" : 11.1,
					"numoutlets" : 1,
					"id" : "obj-18",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p \"interactive start\"",
					"fontname" : "Verdana",
					"numinlets" : 0,
					"patching_rect" : [ 631.0, 165.0, 122.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 0,
					"id" : "obj-10",
					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 480.0, 48.0, 511.0, 431.0 ],
						"bglocked" : 0,
						"defrect" : [ 480.0, 48.0, 511.0, 431.0 ],
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
									"text" : "interactive start respects @duration and @stop",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 223.0, 381.0, 280.0, 20.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 0,
									"id" : "obj-24"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "startnow",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 204.0, 326.0, 59.0, 18.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 1,
									"id" : "obj-20",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 173.0, 392.0, 50.0, 18.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 1,
									"id" : "obj-19",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ajm.metro 4n @transport ajm_met_start @duration 1.0.0",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 204.0, 349.0, 242.0, 33.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 2,
									"id" : "obj-8",
									"outlettype" : [ "", "bang" ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess set",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"hidden" : 1,
									"patching_rect" : [ 98.0, 335.0, 84.0, 20.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 1,
									"id" : "obj-7",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "start at a timepoint",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 296.0, 203.0, 126.0, 20.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 0,
									"id" : "obj-4"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "startat 4.1.0",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 213.0, 203.0, 81.0, 18.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 1,
									"id" : "obj-2",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "you can stop it interactively too",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 248.0, 244.0, 214.0, 20.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 0,
									"id" : "obj-17"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "starts the metro at the beginning of the next bar (the next downbeat)",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 283.0, 152.0, 214.0, 33.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 0,
									"id" : "obj-16"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "starts the metro on the next beat",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 269.0, 109.0, 205.0, 20.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 0,
									"id" : "obj-13"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "starts the metro immediately",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 220.0, 66.0, 205.0, 20.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 0,
									"id" : "obj-12"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Instead of scheduling ajm.metro's @start when you construct the object, you can start it interactively in a variety of ways.",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 22.0, 4.0, 453.0, 41.0 ],
									"fontsize" : 14.0,
									"numoutlets" : 0,
									"id" : "obj-9"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "stop",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 211.0, 243.0, 34.0, 18.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 1,
									"id" : "obj-1",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "startnextbeat",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 182.0, 111.0, 86.0, 18.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 1,
									"id" : "obj-15",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "startnextbar",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 203.0, 157.0, 79.0, 18.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 1,
									"id" : "obj-14",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "startnow",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 160.0, 67.0, 59.0, 18.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 1,
									"id" : "obj-11",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 129.0, 310.0, 50.0, 18.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 1,
									"id" : "obj-6",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"numinlets" : 1,
									"args" : [ "@transport", "ajm_met_start" ],
									"patching_rect" : [ 21.0, 194.0, 117.0, 111.0 ],
									"numoutlets" : 0,
									"id" : "obj-5",
									"name" : "ajm.help-transport.maxpat"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ajm.metro 4n @transport ajm_met_start",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 160.0, 277.0, 240.0, 20.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 2,
									"id" : "obj-3",
									"outlettype" : [ "", "bang" ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [ 212.5, 189.0, 169.5, 189.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [ 191.5, 140.0, 169.5, 140.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-6", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [ 220.5, 269.0, 169.5, 269.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [ 222.5, 231.0, 169.5, 231.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-19", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-19", 0 ],
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
					"maxclass" : "message",
					"text" : "60 80 1.9",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 53.0, 418.0, 74.0, 18.0 ],
					"fontsize" : 11.1,
					"numoutlets" : 1,
					"id" : "obj-14",
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
					"patching_rect" : [ 263.0, 479.0, 73.0, 20.0 ],
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
					"text" : "ajm.bring-to-front-listener ajm.metro",
					"fontname" : "Verdana",
					"numinlets" : 0,
					"hidden" : 1,
					"patching_rect" : [ 263.0, 453.0, 236.0, 20.0 ],
					"fontsize" : 11.1,
					"numoutlets" : 1,
					"id" : "obj-17",
					"outlettype" : [ "front" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess set",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"hidden" : 1,
					"patching_rect" : [ 548.0, 68.0, 84.0, 20.0 ],
					"fontsize" : 11.1,
					"numoutlets" : 1,
					"id" : "obj-6",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 583.0, 333.166656, 50.0, 18.0 ],
					"fontsize" : 11.1,
					"numoutlets" : 1,
					"id" : "obj-13",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 583.0, 294.166656, 50.0, 18.0 ],
					"fontsize" : 11.1,
					"numoutlets" : 1,
					"id" : "obj-12",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 583.0, 255.166656, 50.0, 18.0 ],
					"fontsize" : 11.1,
					"numoutlets" : 1,
					"id" : "obj-11",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 571.0, 216.166672, 50.0, 18.0 ],
					"fontsize" : 11.1,
					"numoutlets" : 1,
					"id" : "obj-7",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p attributes",
					"fontname" : "Verdana",
					"numinlets" : 0,
					"patching_rect" : [ 631.0, 82.0, 75.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 0,
					"id" : "obj-9",
					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 374.0, 46.0, 653.0, 350.0 ],
						"bglocked" : 0,
						"defrect" : [ 374.0, 46.0, 653.0, 350.0 ],
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
									"text" : "@duration and @offset can be expressed in bars.beats.units, notevalues, or ticks",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 356.0, 178.0, 243.0, 33.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-11"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "The @offset will be added to the output",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 324.0, 150.0, 313.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-8"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "To optionally stop the metro after a certain amount of time use either @stop or @duration. @stop = @duration + @start",
									"linecount" : 3,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 324.0, 98.0, 278.0, 47.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-5"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "The @interval attribute can also be set via the first argument to the object, so [ajm.metro 4n] is equivalent to [ajm.relmentro @interval 4n]",
									"linecount" : 3,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 345.0, 2.0, 297.0, 47.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 0,
									"id" : "obj-7"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "jit.cellblock",
									"fontname" : "Verdana",
									"hcellcolor" : [ 0.443137, 0.815686, 0.705882, 1.0 ],
									"ignoreclick" : 1,
									"rows" : 5,
									"numinlets" : 2,
									"patching_rect" : [ 312.0, 224.0, 327.0, 94.0 ],
									"cols" : 1,
									"fontsize" : 11.1,
									"numoutlets" : 4,
									"colwidth" : 323,
									"id" : "obj-14",
									"outlettype" : [ "list", "", "", "" ],
									"savemode" : 1,
									"selmode" : 5,
									"cellmap" : [ [ 0, 0, "Example:", "1st", "beat", "of", "2nd", "measure", "in", "4/4", "time", "signature" ], [ 0, 1, "2.1.0" ], [ 0, 2, 2, 1, 0 ], [ 0, 3, 1920 ], [ 0, 4, "bang" ] ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "bbustring is the default format, and is intended for indexing a [coll]",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 18.0, 321.0, 416.0, 20.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 0,
									"id" : "obj-10"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "The options for @format are:",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 19.0, 201.0, 306.0, 20.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 0,
									"id" : "obj-9"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "jit.cellblock",
									"fontname" : "Verdana",
									"hcellcolor" : [ 0.443137, 0.815686, 0.705882, 1.0 ],
									"ignoreclick" : 1,
									"rows" : 5,
									"numinlets" : 2,
									"patching_rect" : [ 85.0, 224.0, 231.0, 94.0 ],
									"cols" : 1,
									"fontsize" : 11.1,
									"numoutlets" : 4,
									"colwidth" : 227,
									"id" : "obj-4",
									"outlettype" : [ "list", "", "", "" ],
									"savemode" : 1,
									"selmode" : 5,
									"cellmap" : [ [ 0, 0, "Description" ], [ 0, 1, "bars.beats.units", "as", "a", "text", "symbol" ], [ 0, 2, "bars", "beats", "units", "as", "a", "list", "of", "numbers" ], [ 0, 3, "total", "ticks", "(aka", "units)", "since", "the", "@start" ], [ 0, 4, "just", "bang" ] ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "jit.cellblock",
									"fontname" : "Verdana",
									"hcellcolor" : [ 0.443137, 0.815686, 0.705882, 1.0 ],
									"ignoreclick" : 1,
									"rows" : 5,
									"numinlets" : 2,
									"patching_rect" : [ 18.0, 224.0, 71.0, 94.0 ],
									"cols" : 1,
									"fontsize" : 11.1,
									"numoutlets" : 4,
									"colwidth" : 67,
									"id" : "obj-6",
									"outlettype" : [ "list", "", "", "" ],
									"savemode" : 1,
									"selmode" : 5,
									"cellmap" : [ [ 0, 0, "Format" ], [ 0, 1, "bbustring" ], [ 0, 2, "bbulist" ], [ 0, 3, "ticks" ], [ 0, 4, "bang" ] ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "jit.cellblock",
									"fontname" : "Verdana",
									"hcellcolor" : [ 0.443137, 0.815686, 0.705882, 1.0 ],
									"ignoreclick" : 1,
									"rows" : 9,
									"numinlets" : 2,
									"patching_rect" : [ 91.0, 19.0, 234.0, 166.0 ],
									"cols" : 1,
									"fontsize" : 11.1,
									"numoutlets" : 4,
									"colwidth" : 230,
									"id" : "obj-2",
									"outlettype" : [ "list", "", "", "" ],
									"savemode" : 1,
									"selmode" : 5,
									"cellmap" : [ [ 0, 0, "Description" ], [ 0, 1, "the", "metro's", "@interval" ], [ 0, 2, "the", "metro's", "@transport" ], [ 0, 3, "the", "metro's", "@defer" ], [ 0, 4, "start", "time", "(bars.beats.units)" ], [ 0, 5, "absolute", "stop", "time", "(bars.beats.units)" ], [ 0, 6, "relative", "stop", "time" ], [ 0, 7, "offset", "time" ], [ 0, 8, "output", "format" ] ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "jit.cellblock",
									"fontname" : "Verdana",
									"hcellcolor" : [ 0.443137, 0.815686, 0.705882, 1.0 ],
									"ignoreclick" : 1,
									"rows" : 9,
									"numinlets" : 2,
									"patching_rect" : [ 17.0, 19.0, 78.0, 166.0 ],
									"cols" : 1,
									"fontsize" : 11.1,
									"numoutlets" : 4,
									"colwidth" : 74,
									"id" : "obj-1",
									"outlettype" : [ "list", "", "", "" ],
									"savemode" : 1,
									"selmode" : 5,
									"cellmap" : [ [ 0, 0, "Attribute" ], [ 0, 1, "@interval" ], [ 0, 2, "@transport" ], [ 0, 3, "@defer" ], [ 0, 4, "@start" ], [ 0, 5, "@stop" ], [ 0, 6, "@duration" ], [ 0, 7, "@offset" ], [ 0, 8, "@format" ] ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "See metro's help/reference for more info on the metro attributes.",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 324.0, 60.0, 200.0, 33.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-3"
								}

							}
 ],
						"lines" : [  ]
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
					"maxclass" : "comment",
					"text" : "Start the transport named \"ajm_rm_help\":",
					"linecount" : 3,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 12.0, 104.0, 109.0, 47.0 ],
					"fontsize" : 11.1,
					"numoutlets" : 0,
					"id" : "obj-8"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"numinlets" : 1,
					"args" : [ "@transport", "ajm_met_help" ],
					"patching_rect" : [ 11.0, 153.0, 113.0, 115.0 ],
					"numoutlets" : 0,
					"id" : "obj-5",
					"name" : "ajm.help-transport.maxpat"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "ajm.makenote @transport ajm_met_help",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 132.0, 417.0, 240.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 2,
					"id" : "obj-3",
					"outlettype" : [ "int", "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : " Time (bars.beats.units) is relative to the start time of the relmetro",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 142.0, 72.0, 386.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 0,
					"id" : "obj-33"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "coll format: bars.beats.units, pitch velocity duration_in_beats;\nDouble click coll to see the sequence and edit it.",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 171.0, 370.0, 372.0, 33.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 0,
					"id" : "obj-25"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "ajm.metro 4n @transport ajm_met_help @start 9.4.240 @duration 4.0.0",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 148.0, 331.833344, 417.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 2,
					"id" : "obj-49",
					"outlettype" : [ "", "bang" ],
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "ajm.metro 4n @transport ajm_met_help @start 9.2.160 @duration 4.0.0",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 148.0, 292.833344, 417.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 2,
					"id" : "obj-4",
					"outlettype" : [ "", "bang" ],
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "ajm.metro 4n @transport ajm_met_help @start 8.3.320 @duration 4.0.0",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 148.0, 253.833344, 417.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 2,
					"id" : "obj-47",
					"outlettype" : [ "", "bang" ],
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "ajm.metro 4n @transport ajm_met_help @start 8.1.0 @duration 4.0.0",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 148.0, 214.833328, 403.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 2,
					"id" : "obj-46",
					"outlettype" : [ "", "bang" ],
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 571.0, 177.166672, 52.0, 18.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 1,
					"id" : "obj-45",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "1.2.0",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 546.0, 138.166672, 52.0, 18.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 1,
					"id" : "obj-44",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "5.1.0",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 546.0, 99.0, 55.0, 18.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 1,
					"id" : "obj-43",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "ajm.metro 4n @transport ajm_met_help @start 6.2.0 @duration 4.0.0",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 148.0, 175.833328, 403.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 2,
					"id" : "obj-41",
					"outlettype" : [ "", "bang" ],
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "ajm.metro 4n @transport ajm_met_help @start 5.1.0 @stop 9.1.0",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 148.0, 136.833328, 381.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 2,
					"id" : "obj-40",
					"outlettype" : [ "", "bang" ],
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "noteout",
					"fontname" : "Verdana",
					"numinlets" : 3,
					"patching_rect" : [ 132.0, 451.0, 84.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 0,
					"id" : "obj-27"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "ajm.metro 4n @transport ajm_met_help @start 1.1.0 @stop 5.1.0",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 148.0, 97.0, 381.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 2,
					"id" : "obj-29",
					"outlettype" : [ "", "bang" ],
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "coll",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 132.0, 372.0, 37.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 4,
					"id" : "obj-30",
					"outlettype" : [ "", "", "", "" ],
					"save" : [ "#N", "coll", ";", "#T", "flags", 1, 0, ";", "#T", "store", "1.1.0", 60, 80, 1.9, ";", "#T", "store", "1.3.0", 55, 80, 1.9, ";", "#T", "store", "2.1.0", 58, 80, 1.9, ";", "#T", "store", "2.3.0", 60, 80, 1.9, ";", "#T", "store", "3.1.0", 53, 80, 1.9, ";", "#T", "store", "3.3.0", 55, 80, 1.9, ";", "#T", "store", "4.1.0", 51, 80, 1.9, ";", "#T", "store", "4.3.0", 48, 80, 1.9, ";" ],
					"saved_object_attributes" : 					{
						"embed" : 1
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p \"sequencing tricks\"",
					"fontname" : "Verdana",
					"numinlets" : 0,
					"patching_rect" : [ 631.0, 137.0, 127.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 0,
					"id" : "obj-2",
					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 48.0, 57.0, 905.0, 482.0 ],
						"bglocked" : 0,
						"defrect" : [ 48.0, 57.0, 905.0, 482.0 ],
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
									"text" : "ajm.metro 4n @start 1.1.0 @transport ajm_met_tricks @offset 8n @format ticks",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 619.0, 106.0, 248.0, 33.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 2,
									"id" : "obj-11",
									"outlettype" : [ "", "bang" ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "-- try restarting the transport",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 98.0, 203.0, 177.0, 20.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 0,
									"id" : "obj-1"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess 1",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"hidden" : 1,
									"patching_rect" : [ 137.0, 12.0, 74.0, 20.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 1,
									"id" : "obj-10",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Select playback type:",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 11.0, 13.0, 124.0, 20.0 ],
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"id" : "obj-55"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"numinlets" : 1,
									"args" : [ "@transport", "ajm_met_tricks" ],
									"patching_rect" : [ 71.0, 285.0, 114.0, 115.0 ],
									"numoutlets" : 0,
									"id" : "obj-6",
									"name" : "ajm.help-transport.maxpat"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "This metro intentionally bangs too slowly in order to play every other beat",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 663.0, 22.0, 234.0, 33.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 0,
									"id" : "obj-19"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "-- change the blue number box ->",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 98.0, 141.0, 203.0, 20.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 0,
									"id" : "obj-15"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ajm.metro 4n @start 1.1.0 @transport ajm_met_tricks @format ticks",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 600.0, 56.0, 229.0, 33.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 2,
									"id" : "obj-2",
									"outlettype" : [ "", "bang" ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "32n offset",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 527.0, 122.0, 65.0, 20.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 0,
									"id" : "obj-22"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "The drum hits are every 8n, but the interval must be higher to support increasing the speed and offsetting in small increments",
									"linecount" : 3,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 304.0, 42.0, 259.0, 47.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 0,
									"id" : "obj-13"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "+",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 515.0, 187.0, 32.5, 20.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 1,
									"id" : "obj-9",
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* 60",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 529.0, 164.0, 36.0, 20.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 1,
									"id" : "obj-8",
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 529.0, 140.0, 50.0, 20.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 2,
									"id" : "obj-5",
									"outlettype" : [ "int", "bang" ],
									"bgcolor" : [ 0.611765, 0.701961, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "This outputs ticks slighty faster and converts to the normal 240 ticks per 8n. This approach is needed when the speed change is not a multiple of 2 or 1/2.",
									"linecount" : 4,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 653.0, 219.0, 250.0, 60.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 0,
									"id" : "obj-38"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "expr $i1/235 * 240",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 641.0, 200.0, 119.0, 20.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 1,
									"id" : "obj-17",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ajm.metro 235 ticks @start 1.1.0 @transport ajm_met_tricks @format ticks",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 641.0, 158.0, 246.0, 33.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 2,
									"id" : "obj-14",
									"outlettype" : [ "", "bang" ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "loop length = 2 bars of 4/4 = 8*480 ticks",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 336.0, 285.0, 252.0, 20.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 0,
									"id" : "obj-83"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "% 3840",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 279.0, 286.0, 55.0, 20.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 1,
									"id" : "obj-80",
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "(a large number divisible by the loop length)",
									"linecount" : 3,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 318.0, 150.0, 103.0, 47.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 0,
									"id" : "obj-79"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "translate ticks bbu @mode position @transport ajm_met_tricks",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 279.0, 312.0, 210.0, 33.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 1,
									"id" : "obj-68",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ajm.metro 32n @start 1.1.0 @transport ajm_met_tricks @format ticks",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 293.0, 10.0, 326.0, 33.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 2,
									"id" : "obj-63",
									"outlettype" : [ "", "bang" ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* 2",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 470.0, 166.0, 32.5, 20.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 1,
									"id" : "obj-60",
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "1.2.240",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 342.0, 381.0, 61.0, 18.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 1,
									"id" : "obj-57",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "tab",
									"clicktabcolor" : [ 0.047059, 0.913725, 0.913725, 1.0 ],
									"fontname" : "Verdana",
									"hovertabcolor" : [ 0.678431, 0.819608, 0.819608, 1.0 ],
									"numinlets" : 1,
									"patching_rect" : [ 19.0, 40.0, 87.0, 182.0 ],
									"htabcolor" : [ 0.611765, 0.701961, 1.0, 1.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 3,
									"id" : "obj-51",
									"outlettype" : [ "int", "", "" ],
									"tabs" : [ "off", "forward", "reverse", "half speed", "double speed", "offset", "down beats", "up beats", "phased" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "switch 8 1",
									"fontname" : "Verdana",
									"numinlets" : 9,
									"patching_rect" : [ 279.0, 237.0, 127.0, 20.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 1,
									"id" : "obj-50",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "!- 48000000",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 306.0, 133.0, 80.0, 20.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 1,
									"id" : "obj-41",
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* 0.5",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 420.0, 167.0, 40.0, 20.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 1,
									"id" : "obj-33",
									"outlettype" : [ "float" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sprintf %d.%d.%d",
									"fontname" : "Verdana",
									"numinlets" : 3,
									"patching_rect" : [ 279.0, 352.0, 115.0, 20.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 1,
									"id" : "obj-20",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ajm.makenote @transport ajm_met_tricks",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 279.0, 406.0, 249.0, 20.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 2,
									"id" : "obj-18",
									"outlettype" : [ "int", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "noteout 10",
									"fontname" : "Verdana",
									"numinlets" : 3,
									"patching_rect" : [ 279.0, 438.0, 83.0, 20.0 ],
									"fontsize" : 11.100006,
									"numoutlets" : 0,
									"id" : "obj-4"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "coll",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 279.0, 382.0, 55.5, 20.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 4,
									"id" : "obj-7",
									"outlettype" : [ "", "", "", "" ],
									"save" : [ "#N", "coll", ";", "#T", "flags", 1, 0, ";", "#T", "store", "1.1.0", 36, 95, 0.248, 42, 56, 0.248, ";", "#T", "store", "1.1.240", 42, 41, 0.248, ";", "#T", "store", "1.2.0", 37, 95, 0.248, 42, 35, 0.248, ";", "#T", "store", "1.2.240", 42, 100, 0.248, ";", "#T", "store", "1.3.0", 42, 12, 0.248, ";", "#T", "store", "1.3.240", 36, 95, 0.248, 42, 39, 0.248, ";", "#T", "store", "1.4.0", 37, 95, 0.248, 42, 22, 0.248, ";", "#T", "store", "1.4.240", 42, 45, 0.248, ";", "#T", "store", "2.1.0", 36, 95, 0.248, 42, 96, 0.248, ";", "#T", "store", "2.1.240", 42, 35, 0.248, ";", "#T", "store", "2.2.0", 37, 95, 0.248, 42, 117, 0.248, ";", "#T", "store", "2.2.240", 42, 24, 0.248, ";", "#T", "store", "2.3.0", 42, 61, 0.248, ";", "#T", "store", "2.3.240", 36, 95, 0.248, 42, 5, 0.248, ";", "#T", "store", "2.4.0", 37, 95, 0.248, 42, 71, 0.248, ";", "#T", "store", "2.4.240", 55, 65, 0.248, ";" ],
									"saved_object_attributes" : 									{
										"embed" : 1
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numinlets" : 1,
									"patching_rect" : [ 18.0, 39.0, 90.0, 184.0 ],
									"numoutlets" : 0,
									"id" : "obj-12",
									"bgcolor" : [ 0.678431, 0.819608, 0.819608, 0.552941 ],
									"grad1" : [ 0.239216, 0.643137, 0.709804, 0.156863 ],
									"background" : 1,
									"grad2" : [ 0.678431, 0.819608, 0.819608, 0.372549 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 1 ],
									"destination" : [ "obj-4", 1 ],
									"hidden" : 0,
									"midpoints" : [ 518.5, 431.0, 320.5, 431.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-80", 0 ],
									"destination" : [ "obj-68", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-68", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-51", 0 ],
									"hidden" : 1,
									"midpoints" : [ 146.5, 39.0, 28.5, 39.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-50", 8 ],
									"hidden" : 0,
									"midpoints" : [ 650.5, 231.0, 396.5, 231.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-50", 5 ],
									"hidden" : 0,
									"midpoints" : [ 524.5, 213.0, 356.0, 213.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 0 ],
									"destination" : [ "obj-50", 0 ],
									"hidden" : 0,
									"midpoints" : [ 28.5, 233.0, 288.5, 233.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-41", 0 ],
									"destination" : [ "obj-50", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-50", 3 ],
									"hidden" : 0,
									"midpoints" : [ 429.5, 201.0, 329.0, 201.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-60", 0 ],
									"destination" : [ "obj-50", 4 ],
									"hidden" : 0,
									"midpoints" : [ 479.5, 207.0, 342.5, 207.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-9", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-57", 1 ],
									"hidden" : 0,
									"midpoints" : [ 288.5, 376.0, 393.5, 376.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-50", 0 ],
									"destination" : [ "obj-80", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-63", 0 ],
									"destination" : [ "obj-50", 8 ],
									"hidden" : 0,
									"midpoints" : [ 302.5, 196.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-63", 0 ],
									"destination" : [ "obj-50", 5 ],
									"hidden" : 0,
									"midpoints" : [ 302.5, 215.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-63", 0 ],
									"destination" : [ "obj-50", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-63", 0 ],
									"destination" : [ "obj-33", 0 ],
									"hidden" : 0,
									"midpoints" : [ 302.5, 121.0, 429.5, 121.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-63", 0 ],
									"destination" : [ "obj-60", 0 ],
									"hidden" : 0,
									"midpoints" : [ 302.5, 121.0, 479.5, 121.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-63", 0 ],
									"destination" : [ "obj-41", 0 ],
									"hidden" : 0,
									"midpoints" : [ 302.5, 121.0, 315.5, 121.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-63", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [ 302.5, 121.0, 524.5, 121.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-50", 6 ],
									"hidden" : 0,
									"midpoints" : [ 609.5, 219.0, 369.5, 219.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-50", 7 ],
									"hidden" : 0,
									"midpoints" : [ 628.5, 225.0, 383.0, 225.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-17", 0 ],
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
					"text" : "p loops",
					"fontname" : "Verdana",
					"numinlets" : 0,
					"patching_rect" : [ 631.0, 110.0, 50.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 0,
					"id" : "obj-1",
					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 445.0, 89.0, 446.0, 266.0 ],
						"bglocked" : 0,
						"defrect" : [ 445.0, 89.0, 446.0, 266.0 ],
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
									"text" : "loadmess set",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"hidden" : 1,
									"patching_rect" : [ 122.0, 66.0, 84.0, 20.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 1,
									"id" : "obj-2",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"numinlets" : 1,
									"args" : [ "@transport", "ajm_met_loop" ],
									"patching_rect" : [ 305.0, 131.0, 113.0, 116.0 ],
									"numoutlets" : 0,
									"id" : "obj-9",
									"name" : "ajm.help-transport.maxpat"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ajm.makenote @transport ajm_met_loop",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 17.0, 186.0, 242.0, 20.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 2,
									"id" : "obj-7",
									"outlettype" : [ "int", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "bbulist format is used so the current bar number can be manipulated",
									"linecount" : 3,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 271.0, 33.0, 153.0, 47.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 0,
									"id" : "obj-3"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p \"4 bar loop\"",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 17.0, 88.0, 88.0, 20.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 1,
									"id" : "obj-20",
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 439.0, 406.0, 362.0, 232.0 ],
										"bglocked" : 0,
										"defrect" : [ 439.0, 406.0, 362.0, 232.0 ],
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
													"maxclass" : "newobj",
													"text" : "sprintf %d.%d.%d",
													"fontname" : "Verdana",
													"numinlets" : 3,
													"patching_rect" : [ 27.0, 163.0, 115.0, 20.0 ],
													"fontsize" : 11.1,
													"numoutlets" : 1,
													"id" : "obj-30",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pack 0 0 0",
													"fontname" : "Verdana",
													"numinlets" : 3,
													"patching_rect" : [ 27.0, 118.0, 263.0, 20.0 ],
													"fontsize" : 11.1,
													"numoutlets" : 1,
													"id" : "obj-17",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "expr ($i1-1)%4 + 1",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"patching_rect" : [ 27.0, 88.0, 122.0, 20.0 ],
													"fontsize" : 11.1,
													"numoutlets" : 1,
													"id" : "obj-15",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "unpack 0 0 0",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"patching_rect" : [ 27.0, 59.0, 263.0, 20.0 ],
													"fontsize" : 11.1,
													"numoutlets" : 3,
													"id" : "obj-14",
													"outlettype" : [ "int", "int", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"patching_rect" : [ 27.0, 16.0, 25.0, 25.0 ],
													"numoutlets" : 1,
													"id" : "obj-18",
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"patching_rect" : [ 27.0, 193.0, 25.0, 25.0 ],
													"numoutlets" : 0,
													"id" : "obj-19",
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-30", 0 ],
													"destination" : [ "obj-19", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 0 ],
													"destination" : [ "obj-30", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-18", 0 ],
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
													"source" : [ "obj-15", 0 ],
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 2 ],
													"destination" : [ "obj-17", 2 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 1 ],
													"destination" : [ "obj-17", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
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
									"maxclass" : "message",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 37.0, 124.0, 60.0, 18.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 1,
									"id" : "obj-16",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "coll",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 17.0, 152.0, 59.5, 20.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 4,
									"id" : "obj-10",
									"outlettype" : [ "", "", "", "" ],
									"save" : [ "#N", "coll", ";", "#T", "flags", 1, 0, ";", "#T", "store", "1.1.0", 50, 81, 3.346, 57, 82, 3.452, 53, 83, 3.538, 38, 83, 3.648, ";", "#T", "store", "2.1.0", 57, 73, 3.583, 53, 81, 3.587, 52, 82, 3.625, 40, 90, 3.681, ";", "#T", "store", "3.1.0", 52, 82, 3.602, 36, 88, 3.619, 57, 81, 3.725, 55, 90, 3.744, ";", "#T", "store", "4.1.0", 59, 73, 1.363, 43, 88, 3.45, 52, 82, 3.927, 55, 82, 3.946, ";", "#T", "store", "4.2.240", 60, 83, 1.346, ";", "#T", "store", "4.4.0", 59, 82, 1.004, ";" ],
									"saved_object_attributes" : 									{
										"embed" : 1
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "noteout",
									"fontname" : "Verdana",
									"numinlets" : 3,
									"patching_rect" : [ 17.0, 222.0, 80.0, 20.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 0,
									"id" : "obj-27"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 31.0, 46.0, 60.0, 18.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 1,
									"id" : "obj-4",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ajm.metro 8n @transport ajm_met_loop @start 1.1.0 @format bbulist",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 17.0, 10.0, 405.0, 20.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 2,
									"id" : "obj-1",
									"outlettype" : [ "", "bang" ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 1 ],
									"destination" : [ "obj-27", 1 ],
									"hidden" : 0,
									"midpoints" : [ 249.5, 212.0, 57.0, 212.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-4", 1 ],
									"hidden" : 0,
									"midpoints" : [ 26.5, 40.0, 81.5, 40.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-16", 1 ],
									"hidden" : 0,
									"midpoints" : [ 26.5, 115.0, 87.5, 115.0 ]
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
					"args" : [ "ajm.makenote", "ajm.midi2coll", "metro", "transport", "timepoint", "translate" ],
					"patching_rect" : [ 609.0, 423.0, 145.0, 55.0 ],
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
					"patching_rect" : [ 620.0, 7.0, 138.0, 55.0 ],
					"numoutlets" : 0,
					"id" : "obj-48",
					"name" : "ajm.helplinks.maxpat"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "a transport-synced metro that reports time relative to a starting timepoint",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 126.0, 13.0, 243.0, 36.0 ],
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"id" : "obj-56"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "ajm.metro",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 10.0, 11.0, 123.0, 27.0 ],
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
					"patching_rect" : [ 11.0, 38.0, 100.0, 17.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"id" : "obj-58"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"angle" : 270.0,
					"numinlets" : 1,
					"patching_rect" : [ 8.0, 9.0, 389.0, 47.0 ],
					"mode" : 1,
					"numoutlets" : 0,
					"rounded" : 12,
					"id" : "obj-50",
					"grad1" : [ 0.823529, 1.0, 0.956863, 1.0 ],
					"grad2" : [ 0.219608, 0.564706, 0.462745, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"angle" : 270.0,
					"numinlets" : 1,
					"patching_rect" : [ 7.0, 8.0, 392.0, 51.0 ],
					"mode" : 1,
					"numoutlets" : 0,
					"rounded" : 16,
					"id" : "obj-54",
					"grad1" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"grad2" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-14", 1 ],
					"hidden" : 0,
					"midpoints" : [ 141.5, 402.0, 117.5, 402.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 1 ],
					"destination" : [ "obj-27", 1 ],
					"hidden" : 0,
					"midpoints" : [ 362.5, 443.0, 174.0, 443.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [ 157.5, 121.0, 141.5, 121.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-43", 1 ],
					"hidden" : 0,
					"midpoints" : [ 157.5, 121.0, 541.0, 121.0, 541.0, 96.0, 591.5, 96.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-44", 1 ],
					"hidden" : 0,
					"midpoints" : [ 157.5, 161.0, 541.0, 161.0, 541.0, 135.0, 588.5, 135.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [ 157.5, 161.0, 141.0, 161.0, 141.0, 350.0, 141.5, 350.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-45", 1 ],
					"hidden" : 0,
					"midpoints" : [ 157.5, 201.0, 565.0, 201.0, 565.0, 174.0, 613.5, 174.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [ 157.5, 201.0, 141.5, 201.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-46", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [ 157.5, 240.0, 141.5, 240.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-46", 0 ],
					"destination" : [ "obj-7", 1 ],
					"hidden" : 0,
					"midpoints" : [ 157.5, 240.0, 563.0, 240.0, 563.0, 213.0, 611.5, 213.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-47", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [ 157.5, 279.0, 141.5, 279.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-47", 0 ],
					"destination" : [ "obj-11", 1 ],
					"hidden" : 0,
					"midpoints" : [ 157.5, 279.0, 578.0, 279.0, 578.0, 252.0, 623.5, 252.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [ 157.5, 318.0, 141.5, 318.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-12", 1 ],
					"hidden" : 0,
					"midpoints" : [ 157.5, 318.0, 578.0, 318.0, 578.0, 290.0, 623.5, 290.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 0 ],
					"destination" : [ "obj-13", 1 ],
					"hidden" : 0,
					"midpoints" : [ 157.5, 357.0, 579.0, 357.0, 579.0, 330.0, 623.5, 330.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [ 157.5, 357.0, 141.5, 357.0 ]
				}

			}
 ]
	}

}
