{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 55.0, 44.0, 691.0, 487.0 ],
		"bglocked" : 0,
		"defrect" : [ 55.0, 44.0, 691.0, 487.0 ],
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
					"text" : "26.3.0",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 488.0, 334.166656, 50.0, 18.0 ],
					"fontsize" : 11.1,
					"numoutlets" : 1,
					"id" : "obj-13",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "27.1.0",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 488.0, 295.166656, 50.0, 18.0 ],
					"fontsize" : 11.1,
					"numoutlets" : 1,
					"id" : "obj-12",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "28.1.0",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 488.0, 256.166656, 50.0, 18.0 ],
					"fontsize" : 11.1,
					"numoutlets" : 1,
					"id" : "obj-11",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "28.3.0",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 474.0, 217.166672, 50.0, 18.0 ],
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
					"patching_rect" : [ 555.0, 102.0, 75.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 0,
					"id" : "obj-9",
					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 289.0, 47.0, 621.0, 318.0 ],
						"bglocked" : 0,
						"defrect" : [ 289.0, 47.0, 621.0, 318.0 ],
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
									"text" : "Formats:\n   bbustring (default)\n   bbulist\n   ticks",
									"linecount" : 4,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 218.0, 35.0, 132.0, 60.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 0,
									"id" : "obj-5"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Atributes: \n@interval\n@transport\n@defer\n@start \n@stop \n@format",
									"linecount" : 7,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 105.0, 16.0, 76.0, 100.0 ],
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
					"numinlets" : 0,
					"args" : [ "@transport", "ajm_rm_help" ],
					"patching_rect" : [ 11.0, 153.0, 113.0, 115.0 ],
					"numoutlets" : 0,
					"id" : "obj-5",
					"name" : "ajm.help-transport.maxpat"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "ajm.coll2note",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 132.0, 417.0, 87.0, 20.0 ],
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
					"text" : "ajm.relmetro 2n @transport ajm_rm_help @start 9.4.240",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 148.0, 331.833344, 332.0, 20.0 ],
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
					"text" : "ajm.relmetro 2n @transport ajm_rm_help @start 9.2.160",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 148.0, 292.833344, 332.0, 20.0 ],
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
					"text" : "ajm.relmetro 2n @transport ajm_rm_help @start 8.3.320",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 148.0, 253.833344, 332.0, 20.0 ],
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
					"text" : "ajm.relmetro 2n @transport ajm_rm_help @start 8.1.0",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 148.0, 214.833328, 318.0, 20.0 ],
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
					"text" : "30.1.0",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 474.0, 178.166672, 52.0, 18.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 1,
					"id" : "obj-45",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "31.3.0",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 474.0, 139.166672, 52.0, 18.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 1,
					"id" : "obj-44",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "35.3.0",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 473.0, 100.0, 55.0, 18.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 1,
					"id" : "obj-43",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "ajm.relmetro 2n @transport ajm_rm_help @start 6.2.0",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 148.0, 175.833328, 318.0, 20.0 ],
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
					"text" : "ajm.relmetro 2n @transport ajm_rm_help @start 5.1.0",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 148.0, 136.833328, 318.0, 20.0 ],
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
					"text" : "ajm.relmetro 2n @transport ajm_rm_help @start 1.1.0",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 148.0, 97.0, 318.0, 20.0 ],
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
					"patching_rect" : [ 555.0, 185.0, 127.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 0,
					"id" : "obj-2",
					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 53.0, 45.0, 824.0, 479.0 ],
						"bglocked" : 0,
						"defrect" : [ 53.0, 45.0, 824.0, 479.0 ],
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
									"text" : "loadmess 1",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"hidden" : 1,
									"patching_rect" : [ 134.0, 11.0, 74.0, 20.0 ],
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
									"patching_rect" : [ 13.0, 11.0, 124.0, 20.0 ],
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"id" : "obj-55"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"numinlets" : 0,
									"args" : [ "@transport", "ajm_rm_tricks" ],
									"patching_rect" : [ 322.0, 346.0, 114.0, 115.0 ],
									"numoutlets" : 0,
									"id" : "obj-6",
									"name" : "ajm.help-transport.maxpat"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Here the metro intentionally bangs too slowly to only hit every other beat",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 482.0, 7.0, 229.0, 33.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 0,
									"id" : "obj-19"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "for offset, change the blue number box\n\nfor phased, try restarting the transport\n",
									"linecount" : 7,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 22.0, 230.0, 102.0, 101.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 0,
									"id" : "obj-15"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "+ 240",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 506.0, 96.0, 45.0, 20.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 1,
									"id" : "obj-3",
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ajm.relmetro 4n @transport ajm_rm_tricks @format ticks",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 481.0, 44.0, 180.0, 33.0 ],
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
									"patching_rect" : [ 374.0, 117.0, 65.0, 20.0 ],
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
									"patching_rect" : [ 143.0, 39.0, 259.0, 47.0 ],
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
									"patching_rect" : [ 362.0, 182.0, 32.5, 20.0 ],
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
									"patching_rect" : [ 376.0, 159.0, 36.0, 20.0 ],
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
									"patching_rect" : [ 376.0, 135.0, 50.0, 20.0 ],
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
									"text" : "Outputs ticks slighty faster and converts to the normal 480 ticks/quarter note values. This kind of approach is needed when the speed change is not a multiple of 2 or 1/2.\n\nA separate metro can also allow for offsetting by arbitrary amounts.",
									"linecount" : 8,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 594.0, 155.0, 227.0, 114.0 ],
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
									"patching_rect" : [ 572.0, 129.0, 119.0, 20.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 1,
									"id" : "obj-17",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ajm.relmetro 235 ticks @transport ajm_rm_tricks @format ticks",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 572.0, 87.0, 209.0, 33.0 ],
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
									"patching_rect" : [ 183.0, 280.0, 252.0, 20.0 ],
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
									"patching_rect" : [ 126.0, 281.0, 55.0, 20.0 ],
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
									"patching_rect" : [ 165.0, 145.0, 103.0, 47.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 0,
									"id" : "obj-79"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "translate ticks bbu @mode position",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 126.0, 307.0, 116.0, 33.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 1,
									"id" : "obj-68",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ajm.relmetro 32n @transport ajm_rm_tricks @format ticks",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 140.0, 90.0, 342.0, 20.0 ],
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
									"patching_rect" : [ 317.0, 161.0, 32.5, 20.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 1,
									"id" : "obj-60",
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "1.2.360",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 189.0, 376.0, 61.0, 18.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 1,
									"id" : "obj-57",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "tab",
									"fontname" : "Verdana",
									"tabs" : [ "off", "forward", "reverse", "half speed", "double speed", "offset", "down beats", "up beats", "phased" ],
									"numinlets" : 1,
									"clicktabcolor" : [ 0.047059, 0.913725, 0.913725, 1.0 ],
									"patching_rect" : [ 22.0, 39.0, 92.0, 180.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 3,
									"hovertabcolor" : [ 0.678431, 0.819608, 0.819608, 1.0 ],
									"id" : "obj-51",
									"outlettype" : [ "int", "", "" ],
									"htabcolor" : [ 0.611765, 0.701961, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "switch 8 1",
									"fontname" : "Verdana",
									"numinlets" : 9,
									"patching_rect" : [ 126.0, 232.0, 127.0, 20.0 ],
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
									"patching_rect" : [ 153.0, 128.0, 80.0, 20.0 ],
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
									"patching_rect" : [ 267.0, 162.0, 40.0, 20.0 ],
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
									"patching_rect" : [ 126.0, 347.0, 115.0, 20.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 1,
									"id" : "obj-20",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ajm.coll2note",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 126.0, 401.0, 86.0, 20.0 ],
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
									"patching_rect" : [ 126.0, 433.0, 83.0, 20.0 ],
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
									"patching_rect" : [ 126.0, 377.0, 55.5, 20.0 ],
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
									"grad2" : [ 0.678431, 0.819608, 0.819608, 0.372549 ],
									"numinlets" : 1,
									"patching_rect" : [ 18.0, 34.0, 102.0, 190.0 ],
									"numoutlets" : 0,
									"id" : "obj-12",
									"bgcolor" : [ 0.678431, 0.819608, 0.819608, 0.552941 ],
									"background" : 1,
									"grad1" : [ 0.239216, 0.643137, 0.709804, 0.156863 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-50", 0 ],
									"destination" : [ "obj-80", 0 ],
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
									"source" : [ "obj-68", 0 ],
									"destination" : [ "obj-20", 0 ],
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
									"midpoints" : [ 135.5, 371.0, 240.5, 371.0 ]
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
									"midpoints" : [ 326.5, 202.0, 189.5, 202.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-50", 3 ],
									"hidden" : 0,
									"midpoints" : [ 276.5, 196.0, 176.0, 196.0 ]
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
									"midpoints" : [ 31.5, 228.0, 135.5, 228.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-50", 5 ],
									"hidden" : 0,
									"midpoints" : [ 371.5, 208.0, 203.0, 208.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-50", 7 ],
									"hidden" : 0,
									"midpoints" : [ 515.5, 221.0, 230.0, 221.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-63", 0 ],
									"destination" : [ "obj-50", 8 ],
									"hidden" : 0,
									"midpoints" : [ 149.5, 191.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-63", 0 ],
									"destination" : [ "obj-50", 5 ],
									"hidden" : 0,
									"midpoints" : [ 149.5, 210.0 ]
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
									"midpoints" : [ 149.5, 116.0, 276.5, 116.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-63", 0 ],
									"destination" : [ "obj-60", 0 ],
									"hidden" : 0,
									"midpoints" : [ 149.5, 116.0, 326.5, 116.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-63", 0 ],
									"destination" : [ "obj-41", 0 ],
									"hidden" : 0,
									"midpoints" : [ 149.5, 116.0, 162.5, 116.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-63", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [ 149.5, 116.0, 371.5, 116.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-50", 6 ],
									"hidden" : 0,
									"midpoints" : [ 490.5, 214.0, 216.5, 214.0 ]
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
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-50", 8 ],
									"hidden" : 0,
									"midpoints" : [ 581.5, 226.0, 243.5, 226.0 ]
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
									"midpoints" : [ 202.5, 426.0, 167.5, 426.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-51", 0 ],
									"hidden" : 1,
									"midpoints" : [ 143.5, 34.0, 31.5, 34.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [ 490.5, 91.0, 515.5, 91.0 ]
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
					"patching_rect" : [ 555.0, 158.0, 50.0, 20.0 ],
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
									"maxclass" : "bpatcher",
									"numinlets" : 0,
									"args" : [ "@transport", "ajm_rm_loop" ],
									"patching_rect" : [ 183.0, 110.0, 113.0, 116.0 ],
									"numoutlets" : 0,
									"id" : "obj-9",
									"name" : "ajm.help-transport.maxpat"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ajm.coll2note",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 17.0, 186.0, 86.0, 20.0 ],
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
									"text" : "4.2.240",
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
									"text" : "16 2 240",
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
									"text" : "ajm.relmetro 8n @transport ajm_rm_loop @start 1.1.0 @format bbulist",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 17.0, 10.0, 414.0, 20.0 ],
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
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 1 ],
									"destination" : [ "obj-27", 1 ],
									"hidden" : 0,
									"midpoints" : [ 93.5, 212.0, 57.0, 212.0 ]
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
					"text" : "p chords",
					"fontname" : "Verdana",
					"numinlets" : 0,
					"patching_rect" : [ 555.0, 130.0, 58.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 0,
					"id" : "obj-10",
					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 379.0, 100.0, 576.0, 230.0 ],
						"bglocked" : 0,
						"defrect" : [ 379.0, 100.0, 576.0, 230.0 ],
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
									"text" : "<-- the [zl iter 3] in this abstraction separates the chord into notes",
									"linecount" : 3,
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 98.0, 123.0, 150.0, 48.0 ],
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"id" : "obj-13"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ajm.coll2note",
									"fontname" : "Arial",
									"numinlets" : 1,
									"patching_rect" : [ 14.0, 122.0, 81.0, 20.0 ],
									"fontsize" : 12.0,
									"numoutlets" : 2,
									"id" : "obj-11",
									"outlettype" : [ "int", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"numinlets" : 0,
									"args" : [ "@transport", "ajm_rm_chord" ],
									"patching_rect" : [ 314.0, 93.0, 116.0, 117.0 ],
									"numoutlets" : 0,
									"id" : "obj-8",
									"name" : "ajm.help-transport.maxpat"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "coll format: bars.beats.units, pitch1 velocity1 duration1 ... pitchN velocityN durationN;",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 76.0, 53.0, 495.0, 20.0 ],
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
									"text" : "ajm.relmetro 2n @transport ajm_rm_chord @start 1.1.0",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 14.0, 10.0, 328.0, 20.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 2,
									"id" : "obj-5",
									"outlettype" : [ "", "bang" ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
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
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-9", 0 ],
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
					"args" : [  ],
					"patching_rect" : [ 543.0, 421.0, 145.0, 55.0 ],
					"numoutlets" : 0,
					"id" : "obj-60",
					"name" : "ajm.seealso.maxpat"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"hidden" : 1,
					"patching_rect" : [ 543.0, 330.0, 61.0, 20.0 ],
					"fontsize" : 11.1,
					"numoutlets" : 1,
					"id" : "obj-74",
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "ajm.coll2note, ajm.midi2coll, metro, transport, timepoint, translate",
					"linecount" : 4,
					"fontname" : "Verdana",
					"numinlets" : 2,
					"hidden" : 1,
					"patching_rect" : [ 543.0, 354.0, 134.0, 58.0 ],
					"fontsize" : 11.1,
					"numoutlets" : 1,
					"id" : "obj-73",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"numinlets" : 0,
					"lockeddragscroll" : 1,
					"args" : [  ],
					"patching_rect" : [ 547.0, 7.0, 138.0, 55.0 ],
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
					"patching_rect" : [ 145.0, 15.0, 243.0, 36.0 ],
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"id" : "obj-56"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "ajm.relmetro",
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
					"grad2" : [ 0.219608, 0.564706, 0.462745, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 8.0, 9.0, 389.0, 47.0 ],
					"mode" : 1,
					"numoutlets" : 0,
					"rounded" : 12,
					"angle" : 270.0,
					"id" : "obj-50",
					"grad1" : [ 0.823529, 1.0, 0.956863, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"grad2" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 7.0, 8.0, 392.0, 51.0 ],
					"mode" : 1,
					"numoutlets" : 0,
					"rounded" : 16,
					"angle" : 270.0,
					"id" : "obj-54",
					"grad1" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
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
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [ 157.5, 318.0, 141.5, 318.0 ]
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
					"source" : [ "obj-47", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [ 157.5, 279.0, 141.5, 279.0 ]
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
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
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
					"source" : [ "obj-73", 0 ],
					"destination" : [ "obj-60", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
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
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [ 157.5, 161.0, 141.0, 161.0, 141.0, 350.0, 141.5, 350.0 ]
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
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [ 157.5, 121.0, 141.5, 121.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-44", 1 ],
					"hidden" : 0,
					"midpoints" : [ 157.5, 161.0, 471.0, 161.0, 471.0, 135.0, 516.5, 135.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-43", 1 ],
					"hidden" : 0,
					"midpoints" : [ 157.5, 121.0, 470.0, 121.0, 470.0, 96.0, 518.5, 96.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-45", 1 ],
					"hidden" : 0,
					"midpoints" : [ 157.5, 201.0, 470.0, 201.0, 470.0, 174.0, 516.5, 174.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-46", 0 ],
					"destination" : [ "obj-7", 1 ],
					"hidden" : 0,
					"midpoints" : [ 157.5, 240.0, 470.0, 240.0, 470.0, 213.0, 514.5, 213.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-47", 0 ],
					"destination" : [ "obj-11", 1 ],
					"hidden" : 0,
					"midpoints" : [ 157.5, 279.0, 483.0, 279.0, 483.0, 252.0, 528.5, 252.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-12", 1 ],
					"hidden" : 0,
					"midpoints" : [ 157.5, 318.0, 484.0, 318.0, 484.0, 290.0, 528.5, 290.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 0 ],
					"destination" : [ "obj-13", 1 ],
					"hidden" : 0,
					"midpoints" : [ 157.5, 357.0, 484.0, 357.0, 484.0, 330.0, 528.5, 330.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 1 ],
					"destination" : [ "obj-27", 1 ],
					"hidden" : 0,
					"midpoints" : [ 209.5, 443.0, 174.0, 443.0 ]
				}

			}
 ]
	}

}
