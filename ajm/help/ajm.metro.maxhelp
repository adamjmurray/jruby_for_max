{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 1.0, 44.0, 761.0, 483.0 ],
		"bglocked" : 0,
		"defrect" : [ 1.0, 44.0, 761.0, 483.0 ],
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
					"text" : "thispatcher",
					"hidden" : 1,
					"numoutlets" : 2,
					"fontsize" : 11.1,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 278.0, 494.0, 73.0, 20.0 ],
					"id" : "obj-31",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "ajm.bring-to-front-listener ajm.metro",
					"hidden" : 1,
					"numoutlets" : 1,
					"fontsize" : 11.1,
					"outlettype" : [ "front" ],
					"patching_rect" : [ 278.0, 468.0, 236.0, 20.0 ],
					"id" : "obj-17",
					"fontname" : "Verdana",
					"numinlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Note: you don't need to set a @transport. \nThe help files use it so they don't interfere with the global transport, which is the default.",
					"linecount" : 6,
					"numoutlets" : 0,
					"fontsize" : 11.1,
					"patching_rect" : [ 1.0, 259.0, 151.0, 87.0 ],
					"id" : "obj-19",
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Send a silent note to noteout so we don't have lag when playback first starts",
					"linecount" : 3,
					"hidden" : 1,
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"patching_rect" : [ 98.0, 473.0, 159.0, 43.0 ],
					"id" : "obj-16",
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess 0 0",
					"hidden" : 1,
					"numoutlets" : 1,
					"fontsize" : 11.1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 13.0, 473.0, 85.0, 20.0 ],
					"id" : "obj-18",
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p \"interactive start\"",
					"numoutlets" : 0,
					"fontsize" : 11.0,
					"patching_rect" : [ 631.0, 165.0, 122.0, 20.0 ],
					"id" : "obj-10",
					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
					"fontname" : "Verdana",
					"numinlets" : 0,
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
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "interactive start respects @duration and @stop",
									"numoutlets" : 0,
									"fontsize" : 11.1,
									"patching_rect" : [ 223.0, 381.0, 280.0, 20.0 ],
									"id" : "obj-24",
									"fontname" : "Verdana",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "startnow",
									"numoutlets" : 1,
									"fontsize" : 11.1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 204.0, 326.0, 59.0, 18.0 ],
									"id" : "obj-20",
									"fontname" : "Verdana",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "1.4.0",
									"numoutlets" : 1,
									"fontsize" : 11.1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 173.0, 392.0, 50.0, 18.0 ],
									"id" : "obj-19",
									"fontname" : "Verdana",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ajm.metro 4n @transport ajm_met_start @duration 1.0.0",
									"linecount" : 2,
									"numoutlets" : 2,
									"fontsize" : 11.1,
									"outlettype" : [ "bang", "bang" ],
									"patching_rect" : [ 204.0, 349.0, 242.0, 33.0 ],
									"id" : "obj-8",
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"fontname" : "Verdana",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess set",
									"hidden" : 1,
									"numoutlets" : 1,
									"fontsize" : 11.1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 98.0, 335.0, 84.0, 20.0 ],
									"id" : "obj-7",
									"fontname" : "Verdana",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "start at a timepoint",
									"numoutlets" : 0,
									"fontsize" : 11.1,
									"patching_rect" : [ 296.0, 203.0, 126.0, 20.0 ],
									"id" : "obj-4",
									"fontname" : "Verdana",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "startat 4.1.0",
									"numoutlets" : 1,
									"fontsize" : 11.1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 213.0, 203.0, 81.0, 18.0 ],
									"id" : "obj-2",
									"fontname" : "Verdana",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "you can stop it interactively too",
									"numoutlets" : 0,
									"fontsize" : 11.1,
									"patching_rect" : [ 248.0, 244.0, 214.0, 20.0 ],
									"id" : "obj-17",
									"fontname" : "Verdana",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "starts the metro at the beginning of the next bar (the next downbeat)",
									"linecount" : 2,
									"numoutlets" : 0,
									"fontsize" : 11.1,
									"patching_rect" : [ 283.0, 152.0, 214.0, 33.0 ],
									"id" : "obj-16",
									"fontname" : "Verdana",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "starts the metro on the next beat",
									"numoutlets" : 0,
									"fontsize" : 11.1,
									"patching_rect" : [ 269.0, 109.0, 205.0, 20.0 ],
									"id" : "obj-13",
									"fontname" : "Verdana",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "starts the metro immediately",
									"numoutlets" : 0,
									"fontsize" : 11.1,
									"patching_rect" : [ 220.0, 66.0, 205.0, 20.0 ],
									"id" : "obj-12",
									"fontname" : "Verdana",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Instead of scheduling ajm.metro's @start when you construct the object, you can start it interactively in a variety of ways.",
									"linecount" : 2,
									"numoutlets" : 0,
									"fontsize" : 14.0,
									"patching_rect" : [ 22.0, 4.0, 453.0, 41.0 ],
									"id" : "obj-9",
									"fontname" : "Verdana",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "stop",
									"numoutlets" : 1,
									"fontsize" : 11.1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 211.0, 243.0, 34.0, 18.0 ],
									"id" : "obj-1",
									"fontname" : "Verdana",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "startnextbeat",
									"numoutlets" : 1,
									"fontsize" : 11.1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 182.0, 111.0, 86.0, 18.0 ],
									"id" : "obj-15",
									"fontname" : "Verdana",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "startnextbar",
									"numoutlets" : 1,
									"fontsize" : 11.1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 203.0, 157.0, 79.0, 18.0 ],
									"id" : "obj-14",
									"fontname" : "Verdana",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "startnow",
									"numoutlets" : 1,
									"fontsize" : 11.1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 160.0, 67.0, 59.0, 18.0 ],
									"id" : "obj-11",
									"fontname" : "Verdana",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "7.4.0",
									"numoutlets" : 1,
									"fontsize" : 11.1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 129.0, 310.0, 50.0, 18.0 ],
									"id" : "obj-6",
									"fontname" : "Verdana",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"numoutlets" : 0,
									"patching_rect" : [ 15.0, 255.0, 117.0, 111.0 ],
									"id" : "obj-5",
									"args" : [ "@transport", "ajm_met_start" ],
									"name" : "ajm.help-transport.maxpat",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ajm.metro 4n @transport ajm_met_start",
									"numoutlets" : 2,
									"fontsize" : 11.1,
									"outlettype" : [ "bang", "bang" ],
									"patching_rect" : [ 160.0, 277.0, 240.0, 20.0 ],
									"id" : "obj-3",
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"fontname" : "Verdana",
									"numinlets" : 2
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 1,
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
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
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
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [ 220.5, 269.0, 169.5, 269.0 ]
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
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-6", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
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
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [ 212.5, 189.0, 169.5, 189.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 1,
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
						"globalpatchername" : "",
						"default_fontsize" : 11.1
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "symbol \"48 80 1.9\"",
					"numoutlets" : 1,
					"fontsize" : 11.1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 4.0, 418.0, 125.0, 18.0 ],
					"id" : "obj-14",
					"fontname" : "Verdana",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess set",
					"hidden" : 1,
					"numoutlets" : 1,
					"fontsize" : 11.1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 548.0, 68.0, 84.0, 20.0 ],
					"id" : "obj-6",
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "4.4.0",
					"numoutlets" : 1,
					"fontsize" : 11.1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 583.0, 333.166656, 50.0, 18.0 ],
					"id" : "obj-13",
					"fontname" : "Verdana",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "4.4.0",
					"numoutlets" : 1,
					"fontsize" : 11.1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 583.0, 294.166656, 50.0, 18.0 ],
					"id" : "obj-12",
					"fontname" : "Verdana",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "4.4.0",
					"numoutlets" : 1,
					"fontsize" : 11.1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 583.0, 255.166656, 50.0, 18.0 ],
					"id" : "obj-11",
					"fontname" : "Verdana",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "4.4.0",
					"numoutlets" : 1,
					"fontsize" : 11.1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 571.0, 216.166672, 50.0, 18.0 ],
					"id" : "obj-7",
					"fontname" : "Verdana",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p attributes",
					"numoutlets" : 0,
					"fontsize" : 11.0,
					"patching_rect" : [ 631.0, 82.0, 75.0, 20.0 ],
					"id" : "obj-9",
					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
					"fontname" : "Verdana",
					"numinlets" : 0,
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
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "@duration and @offset can be expressed in bars.beats.units, notevalues, or ticks",
									"linecount" : 2,
									"numoutlets" : 0,
									"fontsize" : 11.0,
									"patching_rect" : [ 356.0, 178.0, 243.0, 33.0 ],
									"id" : "obj-11",
									"fontname" : "Verdana",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "The @offset will be added to the output",
									"numoutlets" : 0,
									"fontsize" : 11.0,
									"patching_rect" : [ 324.0, 150.0, 313.0, 20.0 ],
									"id" : "obj-8",
									"fontname" : "Verdana",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "To optionally stop the metro after a certain amount of time use either @stop or @duration. @stop = @duration + @start",
									"linecount" : 3,
									"numoutlets" : 0,
									"fontsize" : 11.0,
									"patching_rect" : [ 324.0, 98.0, 278.0, 47.0 ],
									"id" : "obj-5",
									"fontname" : "Verdana",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "The @interval attribute can also be set via the first argument to the object, so [ajm.metro 4n] is equivalent to [ajm.relmentro @interval 4n]",
									"linecount" : 3,
									"numoutlets" : 0,
									"fontsize" : 11.1,
									"patching_rect" : [ 345.0, 2.0, 297.0, 47.0 ],
									"id" : "obj-7",
									"fontname" : "Verdana",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "jit.cellblock",
									"vscroll" : 0,
									"hscroll" : 0,
									"numoutlets" : 4,
									"fontsize" : 11.1,
									"rows" : 5,
									"outlettype" : [ "list", "", "", "" ],
									"colwidth" : 323,
									"patching_rect" : [ 312.0, 224.0, 324.0, 89.0 ],
									"id" : "obj-14",
									"hcellcolor" : [ 0.443137, 0.815686, 0.705882, 1.0 ],
									"fontname" : "Verdana",
									"cols" : 1,
									"savemode" : 1,
									"ignoreclick" : 1,
									"numinlets" : 2,
									"selmode" : 5,
									"cellmap" : [ [ 0, 0, "Example:", "1st", "beat", "of", "2nd", "measure", "in", "4/4", "time", "signature" ], [ 0, 1, "2.1.0" ], [ 0, 2, 2, 1, 0 ], [ 0, 3, 1920 ], [ 0, 4, "bang" ] ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "bbustring is the default format, and is intended for indexing a [coll]",
									"numoutlets" : 0,
									"fontsize" : 11.1,
									"patching_rect" : [ 18.0, 321.0, 416.0, 20.0 ],
									"id" : "obj-10",
									"fontname" : "Verdana",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "The options for @format are:",
									"numoutlets" : 0,
									"fontsize" : 11.1,
									"patching_rect" : [ 19.0, 201.0, 306.0, 20.0 ],
									"id" : "obj-9",
									"fontname" : "Verdana",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "jit.cellblock",
									"vscroll" : 0,
									"hscroll" : 0,
									"numoutlets" : 4,
									"fontsize" : 11.1,
									"rows" : 5,
									"outlettype" : [ "list", "", "", "" ],
									"colwidth" : 227,
									"patching_rect" : [ 85.0, 224.0, 231.0, 89.0 ],
									"id" : "obj-4",
									"hcellcolor" : [ 0.443137, 0.815686, 0.705882, 1.0 ],
									"fontname" : "Verdana",
									"cols" : 1,
									"savemode" : 1,
									"ignoreclick" : 1,
									"numinlets" : 2,
									"selmode" : 5,
									"cellmap" : [ [ 0, 0, "Description" ], [ 0, 1, "bars.beats.units", "as", "a", "text", "symbol" ], [ 0, 2, "bars", "beats", "units", "as", "a", "list", "of", "numbers" ], [ 0, 3, "total", "ticks", "(aka", "units)", "since", "the", "@start" ], [ 0, 4, "just", "bang" ] ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "jit.cellblock",
									"vscroll" : 0,
									"hscroll" : 0,
									"numoutlets" : 4,
									"fontsize" : 11.1,
									"rows" : 5,
									"outlettype" : [ "list", "", "", "" ],
									"colwidth" : 67,
									"patching_rect" : [ 18.0, 224.0, 71.0, 89.0 ],
									"id" : "obj-6",
									"hcellcolor" : [ 0.443137, 0.815686, 0.705882, 1.0 ],
									"fontname" : "Verdana",
									"cols" : 1,
									"savemode" : 1,
									"ignoreclick" : 1,
									"numinlets" : 2,
									"selmode" : 5,
									"cellmap" : [ [ 0, 0, "Format" ], [ 0, 1, "bbustring" ], [ 0, 2, "bbulist" ], [ 0, 3, "ticks" ], [ 0, 4, "bang" ] ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "jit.cellblock",
									"vscroll" : 0,
									"hscroll" : 0,
									"numoutlets" : 4,
									"fontsize" : 11.1,
									"rows" : 9,
									"outlettype" : [ "list", "", "", "" ],
									"colwidth" : 230,
									"patching_rect" : [ 91.0, 19.0, 229.0, 163.0 ],
									"id" : "obj-2",
									"hcellcolor" : [ 0.443137, 0.815686, 0.705882, 1.0 ],
									"fontname" : "Verdana",
									"cols" : 1,
									"savemode" : 1,
									"ignoreclick" : 1,
									"numinlets" : 2,
									"selmode" : 5,
									"cellmap" : [ [ 0, 0, "Description" ], [ 0, 1, "the", "metro's", "@interval" ], [ 0, 2, "the", "metro's", "@transport" ], [ 0, 3, "the", "metro's", "@defer" ], [ 0, 4, "start", "time", "(bars.beats.units)" ], [ 0, 5, "absolute", "stop", "time", "(bars.beats.units)" ], [ 0, 6, "relative", "stop", "time" ], [ 0, 7, "offset", "time" ], [ 0, 8, "output", "format" ] ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "jit.cellblock",
									"vscroll" : 0,
									"hscroll" : 0,
									"numoutlets" : 4,
									"fontsize" : 11.1,
									"rows" : 9,
									"outlettype" : [ "list", "", "", "" ],
									"colwidth" : 74,
									"patching_rect" : [ 17.0, 19.0, 77.0, 163.0 ],
									"id" : "obj-1",
									"hcellcolor" : [ 0.443137, 0.815686, 0.705882, 1.0 ],
									"fontname" : "Verdana",
									"cols" : 1,
									"savemode" : 1,
									"ignoreclick" : 1,
									"numinlets" : 2,
									"selmode" : 5,
									"cellmap" : [ [ 0, 0, "Attribute" ], [ 0, 1, "@interval" ], [ 0, 2, "@transport" ], [ 0, 3, "@defer" ], [ 0, 4, "@start" ], [ 0, 5, "@stop" ], [ 0, 6, "@duration" ], [ 0, 7, "@offset" ], [ 0, 8, "@format" ] ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "See metro's help/reference for more info on the metro attributes.",
									"linecount" : 2,
									"numoutlets" : 0,
									"fontsize" : 11.0,
									"patching_rect" : [ 324.0, 60.0, 200.0, 33.0 ],
									"id" : "obj-3",
									"fontname" : "Verdana",
									"numinlets" : 1
								}

							}
 ],
						"lines" : [  ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"fontsize" : 11.1,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"fontname" : "Verdana",
						"globalpatchername" : "",
						"default_fontsize" : 11.1
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Start the transport named \"ajm_rm_help\":",
					"linecount" : 3,
					"numoutlets" : 0,
					"fontsize" : 11.1,
					"patching_rect" : [ 12.0, 104.0, 109.0, 47.0 ],
					"id" : "obj-8",
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"numoutlets" : 0,
					"patching_rect" : [ 11.0, 153.0, 113.0, 115.0 ],
					"id" : "obj-5",
					"args" : [ "@transport", "ajm_met_help" ],
					"name" : "ajm.help-transport.maxpat",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "ajm.makenote @transport ajm_met_help",
					"numoutlets" : 3,
					"fontsize" : 11.0,
					"outlettype" : [ "float", "float", "" ],
					"patching_rect" : [ 132.0, 417.0, 240.0, 20.0 ],
					"id" : "obj-3",
					"fontname" : "Verdana",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : " Time (bars.beats.units) is relative to the start time of the relmetro",
					"numoutlets" : 0,
					"fontsize" : 11.0,
					"patching_rect" : [ 142.0, 72.0, 386.0, 20.0 ],
					"id" : "obj-33",
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "coll format: bars.beats.units, \"pitch velocity duration_in_beats\";\nDouble click coll to see the sequence and edit it.",
					"linecount" : 2,
					"numoutlets" : 0,
					"fontsize" : 11.0,
					"patching_rect" : [ 171.0, 370.0, 372.0, 33.0 ],
					"id" : "obj-25",
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "ajm.metro 4n @transport ajm_met_help @start 9.4.240 @duration 4.0.0",
					"numoutlets" : 2,
					"fontsize" : 11.0,
					"outlettype" : [ "bang", "bang" ],
					"patching_rect" : [ 148.0, 331.833344, 417.0, 20.0 ],
					"id" : "obj-49",
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"fontname" : "Verdana",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "ajm.metro 4n @transport ajm_met_help @start 9.2.160 @duration 4.0.0",
					"numoutlets" : 2,
					"fontsize" : 11.0,
					"outlettype" : [ "bang", "bang" ],
					"patching_rect" : [ 148.0, 292.833344, 417.0, 20.0 ],
					"id" : "obj-4",
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"fontname" : "Verdana",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "ajm.metro 4n @transport ajm_met_help @start 8.3.320 @duration 4.0.0",
					"numoutlets" : 2,
					"fontsize" : 11.0,
					"outlettype" : [ "bang", "bang" ],
					"patching_rect" : [ 148.0, 253.833344, 417.0, 20.0 ],
					"id" : "obj-47",
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"fontname" : "Verdana",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "ajm.metro 4n @transport ajm_met_help @start 8.1.0 @duration 4.0.0",
					"numoutlets" : 2,
					"fontsize" : 11.0,
					"outlettype" : [ "bang", "bang" ],
					"patching_rect" : [ 148.0, 214.833328, 403.0, 20.0 ],
					"id" : "obj-46",
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"fontname" : "Verdana",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "4.4.0",
					"numoutlets" : 1,
					"fontsize" : 11.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 571.0, 177.166672, 52.0, 18.0 ],
					"id" : "obj-45",
					"fontname" : "Verdana",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "4.4.0",
					"numoutlets" : 1,
					"fontsize" : 11.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 546.0, 138.166672, 52.0, 18.0 ],
					"id" : "obj-44",
					"fontname" : "Verdana",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "4.4.0",
					"numoutlets" : 1,
					"fontsize" : 11.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 546.0, 99.0, 55.0, 18.0 ],
					"id" : "obj-43",
					"fontname" : "Verdana",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "ajm.metro 4n @transport ajm_met_help @start 6.2.0 @duration 4.0.0",
					"numoutlets" : 2,
					"fontsize" : 11.0,
					"outlettype" : [ "bang", "bang" ],
					"patching_rect" : [ 148.0, 175.833328, 403.0, 20.0 ],
					"id" : "obj-41",
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"fontname" : "Verdana",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "ajm.metro 4n @transport ajm_met_help @start 5.1.0 @stop 9.1.0",
					"numoutlets" : 2,
					"fontsize" : 11.0,
					"outlettype" : [ "bang", "bang" ],
					"patching_rect" : [ 148.0, 136.833328, 381.0, 20.0 ],
					"id" : "obj-40",
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"fontname" : "Verdana",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "noteout",
					"numoutlets" : 0,
					"fontsize" : 11.0,
					"patching_rect" : [ 132.0, 451.0, 84.0, 20.0 ],
					"id" : "obj-27",
					"fontname" : "Verdana",
					"numinlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "ajm.metro 4n @transport ajm_met_help @start 1.1.0 @stop 5.1.0",
					"numoutlets" : 2,
					"fontsize" : 11.0,
					"outlettype" : [ "bang", "bang" ],
					"patching_rect" : [ 148.0, 97.0, 381.0, 20.0 ],
					"id" : "obj-29",
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"fontname" : "Verdana",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "coll",
					"numoutlets" : 4,
					"fontsize" : 11.0,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 132.0, 372.0, 37.0, 20.0 ],
					"id" : "obj-30",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"coll_data" : 					{
						"count" : 8,
						"data" : [ 							{
								"key" : "1.1.0",
								"value" : [ "60 80 1.9" ]
							}
, 							{
								"key" : "1.3.0",
								"value" : [ "55 80 1.9" ]
							}
, 							{
								"key" : "2.1.0",
								"value" : [ "58 80 1.9" ]
							}
, 							{
								"key" : "2.3.0",
								"value" : [ "60 80 1.9" ]
							}
, 							{
								"key" : "3.1.0",
								"value" : [ "53 80 1.9" ]
							}
, 							{
								"key" : "3.3.0",
								"value" : [ "55 80 1.9" ]
							}
, 							{
								"key" : "4.1.0",
								"value" : [ "51 80 1.9" ]
							}
, 							{
								"key" : "4.3.0",
								"value" : [ "48 80 1.9" ]
							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"embed" : 1
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p \"sequencing tricks\"",
					"numoutlets" : 0,
					"fontsize" : 11.0,
					"patching_rect" : [ 631.0, 137.0, 127.0, 20.0 ],
					"id" : "obj-2",
					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
					"fontname" : "Verdana",
					"numinlets" : 0,
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
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ajm.metro 4n @start 1.1.0 @transport ajm_met_tricks @offset 8n @format ticks",
									"linecount" : 2,
									"numoutlets" : 2,
									"fontsize" : 11.1,
									"outlettype" : [ "bang", "bang" ],
									"patching_rect" : [ 619.0, 106.0, 248.0, 33.0 ],
									"id" : "obj-11",
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"fontname" : "Verdana",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "-- try restarting the transport",
									"numoutlets" : 0,
									"fontsize" : 11.1,
									"patching_rect" : [ 98.0, 203.0, 177.0, 20.0 ],
									"id" : "obj-1",
									"fontname" : "Verdana",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess 1",
									"hidden" : 1,
									"numoutlets" : 1,
									"fontsize" : 11.1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 137.0, 12.0, 74.0, 20.0 ],
									"id" : "obj-10",
									"fontname" : "Verdana",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Select playback type:",
									"numoutlets" : 0,
									"fontsize" : 12.0,
									"patching_rect" : [ 11.0, 13.0, 124.0, 20.0 ],
									"id" : "obj-55",
									"fontname" : "Arial",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"numoutlets" : 0,
									"patching_rect" : [ 71.0, 285.0, 114.0, 115.0 ],
									"id" : "obj-6",
									"args" : [ "@transport", "ajm_met_tricks" ],
									"name" : "ajm.help-transport.maxpat",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "This metro intentionally bangs too slowly in order to play every other beat",
									"linecount" : 2,
									"numoutlets" : 0,
									"fontsize" : 11.1,
									"patching_rect" : [ 663.0, 22.0, 234.0, 33.0 ],
									"id" : "obj-19",
									"fontname" : "Verdana",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "-- change the blue number box -->",
									"numoutlets" : 0,
									"fontsize" : 11.1,
									"patching_rect" : [ 98.0, 141.0, 207.0, 20.0 ],
									"id" : "obj-15",
									"fontname" : "Verdana",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ajm.metro 4n @start 1.1.0 @transport ajm_met_tricks @format ticks",
									"linecount" : 2,
									"numoutlets" : 2,
									"fontsize" : 11.1,
									"outlettype" : [ "bang", "bang" ],
									"patching_rect" : [ 600.0, 56.0, 229.0, 33.0 ],
									"id" : "obj-2",
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"fontname" : "Verdana",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "32n offset",
									"numoutlets" : 0,
									"fontsize" : 11.1,
									"patching_rect" : [ 527.0, 122.0, 65.0, 20.0 ],
									"id" : "obj-22",
									"fontname" : "Verdana",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "The drum hits are every 8n, but the interval must be higher to support increasing the speed and offsetting in small increments",
									"linecount" : 3,
									"numoutlets" : 0,
									"fontsize" : 11.1,
									"patching_rect" : [ 304.0, 42.0, 259.0, 47.0 ],
									"id" : "obj-13",
									"fontname" : "Verdana",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "+",
									"numoutlets" : 1,
									"fontsize" : 11.1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 515.0, 187.0, 32.5, 20.0 ],
									"id" : "obj-9",
									"fontname" : "Verdana",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* 60",
									"numoutlets" : 1,
									"fontsize" : 11.1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 529.0, 164.0, 36.0, 20.0 ],
									"id" : "obj-8",
									"fontname" : "Verdana",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"numoutlets" : 2,
									"fontsize" : 11.1,
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 529.0, 140.0, 50.0, 20.0 ],
									"id" : "obj-5",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"bgcolor" : [ 0.611765, 0.701961, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "This outputs ticks slighty faster and converts to the normal 240 ticks per 8n. This approach is needed when the speed change is not a multiple of 2 or 1/2.",
									"linecount" : 4,
									"numoutlets" : 0,
									"fontsize" : 11.1,
									"patching_rect" : [ 653.0, 219.0, 250.0, 60.0 ],
									"id" : "obj-38",
									"fontname" : "Verdana",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "expr $i1/235 * 240",
									"numoutlets" : 1,
									"fontsize" : 11.1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 641.0, 200.0, 119.0, 20.0 ],
									"id" : "obj-17",
									"fontname" : "Verdana",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ajm.metro 235 ticks @start 1.1.0 @transport ajm_met_tricks @format ticks",
									"linecount" : 2,
									"numoutlets" : 2,
									"fontsize" : 11.1,
									"outlettype" : [ "bang", "bang" ],
									"patching_rect" : [ 641.0, 158.0, 246.0, 33.0 ],
									"id" : "obj-14",
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"fontname" : "Verdana",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "loop length = 2 bars of 4/4 = 8*480 ticks",
									"numoutlets" : 0,
									"fontsize" : 11.1,
									"patching_rect" : [ 336.0, 285.0, 252.0, 20.0 ],
									"id" : "obj-83",
									"fontname" : "Verdana",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "% 3840",
									"numoutlets" : 1,
									"fontsize" : 11.1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 279.0, 286.0, 55.0, 20.0 ],
									"id" : "obj-80",
									"fontname" : "Verdana",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "(a large number divisible by the loop length)",
									"linecount" : 3,
									"numoutlets" : 0,
									"fontsize" : 11.1,
									"patching_rect" : [ 318.0, 150.0, 103.0, 47.0 ],
									"id" : "obj-79",
									"fontname" : "Verdana",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "translate ticks bbu @mode position @transport ajm_met_tricks",
									"linecount" : 2,
									"numoutlets" : 1,
									"fontsize" : 11.1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 279.0, 312.0, 210.0, 33.0 ],
									"id" : "obj-68",
									"fontname" : "Verdana",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ajm.metro 32n @start 1.1.0 @transport ajm_met_tricks @format ticks",
									"linecount" : 2,
									"numoutlets" : 2,
									"fontsize" : 11.1,
									"outlettype" : [ "bang", "bang" ],
									"patching_rect" : [ 293.0, 10.0, 328.0, 33.0 ],
									"id" : "obj-63",
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"fontname" : "Verdana",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* 2",
									"numoutlets" : 1,
									"fontsize" : 11.1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 470.0, 166.0, 32.5, 20.0 ],
									"id" : "obj-60",
									"fontname" : "Verdana",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "2.2.120",
									"numoutlets" : 1,
									"fontsize" : 11.1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 342.0, 381.0, 61.0, 18.0 ],
									"id" : "obj-57",
									"fontname" : "Verdana",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "tab",
									"tabs" : [ "off", "forward", "reverse", "half speed", "double speed", "offset", "down beats", "up beats", "phased" ],
									"clicktabcolor" : [ 0.047059, 0.913725, 0.913725, 1.0 ],
									"numoutlets" : 3,
									"fontsize" : 11.1,
									"outlettype" : [ "int", "", "" ],
									"patching_rect" : [ 19.0, 40.0, 87.0, 182.0 ],
									"id" : "obj-51",
									"htabcolor" : [ 0.611765, 0.701961, 1.0, 1.0 ],
									"hovertabcolor" : [ 0.678431, 0.819608, 0.819608, 1.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "switch 8 1",
									"numoutlets" : 1,
									"fontsize" : 11.1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 279.0, 237.0, 127.0, 20.0 ],
									"id" : "obj-50",
									"fontname" : "Verdana",
									"numinlets" : 9
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "!- 48000000",
									"numoutlets" : 1,
									"fontsize" : 11.1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 306.0, 133.0, 80.0, 20.0 ],
									"id" : "obj-41",
									"fontname" : "Verdana",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* 0.5",
									"numoutlets" : 1,
									"fontsize" : 11.1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 420.0, 167.0, 40.0, 20.0 ],
									"id" : "obj-33",
									"fontname" : "Verdana",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sprintf %d.%d.%d",
									"numoutlets" : 1,
									"fontsize" : 11.1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 279.0, 352.0, 115.0, 20.0 ],
									"id" : "obj-20",
									"fontname" : "Verdana",
									"numinlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ajm.makenote @transport ajm_met_tricks",
									"numoutlets" : 3,
									"fontsize" : 11.1,
									"outlettype" : [ "float", "float", "" ],
									"patching_rect" : [ 279.0, 406.0, 249.0, 20.0 ],
									"id" : "obj-18",
									"fontname" : "Verdana",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "noteout 10",
									"numoutlets" : 0,
									"fontsize" : 11.100006,
									"patching_rect" : [ 279.0, 438.0, 83.0, 20.0 ],
									"id" : "obj-4",
									"fontname" : "Verdana",
									"numinlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "coll",
									"numoutlets" : 4,
									"fontsize" : 11.1,
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 279.0, 382.0, 55.5, 20.0 ],
									"id" : "obj-7",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"coll_data" : 									{
										"count" : 16,
										"data" : [ 											{
												"key" : "1.1.0",
												"value" : [ "36 95 0.248", "42 56 0.248" ]
											}
, 											{
												"key" : "1.1.240",
												"value" : [ "42 41 0.248" ]
											}
, 											{
												"key" : "1.2.0",
												"value" : [ "37 95 0.248", "42 35 0.248" ]
											}
, 											{
												"key" : "1.2.240",
												"value" : [ "42 100 0.248" ]
											}
, 											{
												"key" : "1.3.0",
												"value" : [ "42 12 0.248" ]
											}
, 											{
												"key" : "1.3.240",
												"value" : [ "36 95 0.248", "42 39 0.248" ]
											}
, 											{
												"key" : "1.4.0",
												"value" : [ "37 95 0.248", "42 22 0.248" ]
											}
, 											{
												"key" : "1.4.240",
												"value" : [ "42 45 0.248" ]
											}
, 											{
												"key" : "2.1.0",
												"value" : [ "36 95 0.248", "42 96 0.248" ]
											}
, 											{
												"key" : "2.1.240",
												"value" : [ "42 35 0.248" ]
											}
, 											{
												"key" : "2.2.0",
												"value" : [ "37 95 0.248", "42 117 0.248" ]
											}
, 											{
												"key" : "2.2.240",
												"value" : [ "42 24 0.248" ]
											}
, 											{
												"key" : "2.3.0",
												"value" : [ "42 61 0.248" ]
											}
, 											{
												"key" : "2.3.240",
												"value" : [ "36 95 0.248", "42 5 0.248" ]
											}
, 											{
												"key" : "2.4.0",
												"value" : [ "37 95 0.248", "42 71 0.248" ]
											}
, 											{
												"key" : "2.4.240",
												"value" : [ "55 65 0.248" ]
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
									"maxclass" : "panel",
									"numoutlets" : 0,
									"grad1" : [ 0.239216, 0.643137, 0.709804, 0.156863 ],
									"grad2" : [ 0.678431, 0.819608, 0.819608, 0.372549 ],
									"patching_rect" : [ 18.0, 39.0, 90.0, 184.0 ],
									"id" : "obj-12",
									"background" : 1,
									"numinlets" : 1,
									"bgcolor" : [ 0.678431, 0.819608, 0.819608, 0.552941 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
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
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-50", 6 ],
									"hidden" : 0,
									"midpoints" : [ 609.5, 219.0, 369.5, 219.0 ]
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
									"source" : [ "obj-63", 0 ],
									"destination" : [ "obj-41", 0 ],
									"hidden" : 0,
									"midpoints" : [ 302.5, 121.0, 315.5, 121.0 ]
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
									"destination" : [ "obj-33", 0 ],
									"hidden" : 0,
									"midpoints" : [ 302.5, 121.0, 429.5, 121.0 ]
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
									"destination" : [ "obj-50", 5 ],
									"hidden" : 0,
									"midpoints" : [ 302.5, 215.0 ]
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
									"source" : [ "obj-50", 0 ],
									"destination" : [ "obj-80", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
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
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-57", 1 ],
									"hidden" : 0,
									"midpoints" : [ 288.5, 376.0, 393.5, 376.0 ]
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
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-9", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
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
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-50", 3 ],
									"hidden" : 0,
									"midpoints" : [ 429.5, 201.0, 329.0, 201.0 ]
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
									"source" : [ "obj-51", 0 ],
									"destination" : [ "obj-50", 0 ],
									"hidden" : 0,
									"midpoints" : [ 28.5, 233.0, 288.5, 233.0 ]
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
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-50", 8 ],
									"hidden" : 0,
									"midpoints" : [ 650.5, 231.0, 396.5, 231.0 ]
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
									"source" : [ "obj-68", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
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
									"midpoints" : [ 403.5, 431.0, 320.5, 431.0 ]
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
						"globalpatchername" : "",
						"default_fontsize" : 11.1
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p loops",
					"numoutlets" : 0,
					"fontsize" : 11.0,
					"patching_rect" : [ 631.0, 110.0, 50.0, 20.0 ],
					"id" : "obj-1",
					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
					"fontname" : "Verdana",
					"numinlets" : 0,
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
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess set",
									"hidden" : 1,
									"numoutlets" : 1,
									"fontsize" : 11.1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 122.0, 66.0, 84.0, 20.0 ],
									"id" : "obj-2",
									"fontname" : "Verdana",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"numoutlets" : 0,
									"patching_rect" : [ 305.0, 131.0, 113.0, 116.0 ],
									"id" : "obj-9",
									"args" : [ "@transport", "ajm_met_loop" ],
									"name" : "ajm.help-transport.maxpat",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ajm.makenote @transport ajm_met_loop",
									"numoutlets" : 3,
									"fontsize" : 11.1,
									"outlettype" : [ "float", "float", "" ],
									"patching_rect" : [ 17.0, 186.0, 242.0, 20.0 ],
									"id" : "obj-7",
									"fontname" : "Verdana",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "bbulist format is used so the current bar number can be manipulated",
									"linecount" : 3,
									"numoutlets" : 0,
									"fontsize" : 11.1,
									"patching_rect" : [ 271.0, 33.0, 153.0, 47.0 ],
									"id" : "obj-3",
									"fontname" : "Verdana",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p \"4 bar loop\"",
									"numoutlets" : 1,
									"fontsize" : 11.1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 17.0, 88.0, 88.0, 20.0 ],
									"id" : "obj-20",
									"fontname" : "Verdana",
									"numinlets" : 1,
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
										"enablehscroll" : 1,
										"enablevscroll" : 1,
										"devicewidth" : 0.0,
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sprintf %d.%d.%d",
													"numoutlets" : 1,
													"fontsize" : 11.1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 27.0, 163.0, 115.0, 20.0 ],
													"id" : "obj-30",
													"fontname" : "Verdana",
													"numinlets" : 3
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pack 0 0 0",
													"numoutlets" : 1,
													"fontsize" : 11.1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 27.0, 118.0, 263.0, 20.0 ],
													"id" : "obj-17",
													"fontname" : "Verdana",
													"numinlets" : 3
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "expr ($i1-1)%4 + 1",
													"numoutlets" : 1,
													"fontsize" : 11.1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 27.0, 88.0, 122.0, 20.0 ],
													"id" : "obj-15",
													"fontname" : "Verdana",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "unpack 0 0 0",
													"numoutlets" : 3,
													"fontsize" : 11.1,
													"outlettype" : [ "int", "int", "int" ],
													"patching_rect" : [ 27.0, 59.0, 263.0, 20.0 ],
													"id" : "obj-14",
													"fontname" : "Verdana",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 27.0, 16.0, 25.0, 25.0 ],
													"id" : "obj-18",
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numoutlets" : 0,
													"patching_rect" : [ 27.0, 193.0, 25.0, 25.0 ],
													"id" : "obj-19",
													"numinlets" : 1,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-14", 1 ],
													"destination" : [ "obj-17", 1 ],
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
													"source" : [ "obj-15", 0 ],
													"destination" : [ "obj-17", 0 ],
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
													"source" : [ "obj-18", 0 ],
													"destination" : [ "obj-14", 0 ],
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
													"source" : [ "obj-30", 0 ],
													"destination" : [ "obj-19", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontface" : 0,
										"fontsize" : 11.1,
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"fontname" : "Verdana",
										"globalpatchername" : "",
										"default_fontsize" : 11.1
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"numoutlets" : 1,
									"fontsize" : 11.1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 37.0, 124.0, 60.0, 18.0 ],
									"id" : "obj-16",
									"fontname" : "Verdana",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "coll",
									"numoutlets" : 4,
									"fontsize" : 11.1,
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 17.0, 152.0, 59.5, 20.0 ],
									"id" : "obj-10",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"coll_data" : 									{
										"count" : 6,
										"data" : [ 											{
												"key" : "1.1.0",
												"value" : [ "50 81 3.346", "57 82 3.452", "53 83 3.538", "38 83 3.648" ]
											}
, 											{
												"key" : "2.1.0",
												"value" : [ "57 73 3.583", "53 81 3.587", "52 82 3.625", "40 90 3.681" ]
											}
, 											{
												"key" : "3.1.0",
												"value" : [ "52 82 3.602", "36 88 3.619", "57 81 3.725", "55 90 3.744" ]
											}
, 											{
												"key" : "4.1.0",
												"value" : [ "59 73 1.363", "43 88 3.45", "52 82 3.927", "55 82 3.946" ]
											}
, 											{
												"key" : "4.2.240",
												"value" : [ "60 83 1.346" ]
											}
, 											{
												"key" : "4.4.0",
												"value" : [ "59 82 1.004" ]
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
									"text" : "noteout",
									"numoutlets" : 0,
									"fontsize" : 11.1,
									"patching_rect" : [ 17.0, 222.0, 80.0, 20.0 ],
									"id" : "obj-27",
									"fontname" : "Verdana",
									"numinlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"numoutlets" : 1,
									"fontsize" : 11.1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 31.0, 46.0, 60.0, 18.0 ],
									"id" : "obj-4",
									"fontname" : "Verdana",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ajm.metro 8n @transport ajm_met_loop @start 1.1.0 @format bbulist",
									"numoutlets" : 2,
									"fontsize" : 11.1,
									"outlettype" : [ "bang", "bang" ],
									"patching_rect" : [ 17.0, 10.0, 405.0, 20.0 ],
									"id" : "obj-1",
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"fontname" : "Verdana",
									"numinlets" : 2
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-16", 1 ],
									"hidden" : 0,
									"midpoints" : [ 26.5, 115.0, 87.5, 115.0 ]
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
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 1,
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
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-20", 0 ],
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
									"midpoints" : [ 138.0, 212.0, 57.0, 212.0 ]
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
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"fontsize" : 11.1,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"fontname" : "Verdana",
						"globalpatchername" : "",
						"default_fontsize" : 11.1
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"numoutlets" : 0,
					"lockeddragscroll" : 1,
					"patching_rect" : [ 609.0, 423.0, 145.0, 55.0 ],
					"id" : "obj-60",
					"args" : [ "ajm.makenote", "ajm.midi2coll", "metro", "transport", "timepoint", "translate" ],
					"name" : "ajm.seealso.maxpat",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"numoutlets" : 0,
					"lockeddragscroll" : 1,
					"patching_rect" : [ 620.0, 7.0, 138.0, 55.0 ],
					"id" : "obj-48",
					"args" : [  ],
					"name" : "ajm.helplinks.maxpat",
					"numinlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "a transport-synced metro that reports time relative to a starting timepoint",
					"linecount" : 2,
					"numoutlets" : 0,
					"fontsize" : 12.0,
					"patching_rect" : [ 126.0, 13.0, 243.0, 36.0 ],
					"id" : "obj-56",
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "ajm.metro",
					"numoutlets" : 0,
					"fontsize" : 18.0,
					"patching_rect" : [ 10.0, 11.0, 123.0, 27.0 ],
					"id" : "obj-57",
					"fontname" : "Arial",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "abstraction",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 11.0, 38.0, 100.0, 17.0 ],
					"id" : "obj-58",
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"grad1" : [ 0.823529, 1.0, 0.956863, 1.0 ],
					"mode" : 1,
					"grad2" : [ 0.219608, 0.564706, 0.462745, 1.0 ],
					"patching_rect" : [ 8.0, 9.0, 389.0, 47.0 ],
					"id" : "obj-50",
					"rounded" : 12,
					"angle" : 270.0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"grad1" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"mode" : 1,
					"grad2" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 7.0, 8.0, 392.0, 51.0 ],
					"id" : "obj-54",
					"rounded" : 16,
					"angle" : 270.0,
					"numinlets" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-49", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [ 157.5, 357.0, 141.5, 357.0 ]
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
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-12", 1 ],
					"hidden" : 0,
					"midpoints" : [ 157.5, 318.0, 578.0, 318.0, 578.0, 290.0, 623.5, 290.0 ]
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
					"source" : [ "obj-47", 0 ],
					"destination" : [ "obj-11", 1 ],
					"hidden" : 0,
					"midpoints" : [ 157.5, 279.0, 578.0, 279.0, 578.0, 252.0, 623.5, 252.0 ]
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
					"source" : [ "obj-46", 0 ],
					"destination" : [ "obj-7", 1 ],
					"hidden" : 0,
					"midpoints" : [ 157.5, 240.0, 563.0, 240.0, 563.0, 213.0, 611.5, 213.0 ]
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
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [ 157.5, 201.0, 141.5, 201.0 ]
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
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [ 157.5, 161.0, 141.0, 161.0, 141.0, 350.0, 141.5, 350.0 ]
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
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-43", 1 ],
					"hidden" : 0,
					"midpoints" : [ 157.5, 121.0, 541.0, 121.0, 541.0, 96.0, 591.5, 96.0 ]
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
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-43", 0 ],
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
					"destination" : [ "obj-45", 0 ],
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
					"destination" : [ "obj-11", 0 ],
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
					"destination" : [ "obj-13", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-14", 1 ],
					"hidden" : 0,
					"midpoints" : [ 141.5, 402.0, 119.5, 402.0 ]
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
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 1 ],
					"destination" : [ "obj-27", 1 ],
					"hidden" : 0,
					"midpoints" : [ 252.0, 443.0, 174.0, 443.0 ]
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
 ]
	}

}
