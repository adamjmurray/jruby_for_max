{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 32.0, 44.0, 630.0, 543.0 ],
		"bglocked" : 0,
		"defrect" : [ 32.0, 44.0, 630.0, 543.0 ],
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
					"text" : "t 1",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"hidden" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 156.0, 535.0, 24.0, 20.0 ],
					"fontsize" : 12.0,
					"id" : "obj-18",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "active",
					"text" : "pattr active @bindto toggle @initial 0",
					"fontname" : "Arial",
					"numoutlets" : 3,
					"hidden" : 1,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 156.0, 561.0, 207.0, 20.0 ],
					"fontsize" : 12.0,
					"id" : "obj-14",
					"numinlets" : 1,
					"saved_object_attributes" : 					{
						"initial" : [ 0 ]
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"args" : [  ],
					"patching_rect" : [ 156.0, 426.0, 113.0, 103.0 ],
					"id" : "obj-17",
					"name" : "ajm.help-transport.maxpat",
					"numinlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "ajm.coll2note",
					"fontname" : "Verdana",
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 34.0, 415.0, 87.0, 20.0 ],
					"fontsize" : 11.0,
					"id" : "obj-3",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Hit restart to play:",
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 160.0, 404.0, 106.0, 20.0 ],
					"fontsize" : 12.0,
					"id" : "obj-55",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : " Time (bars.beats.units) is relative to the start time of the relmetro",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"patching_rect" : [ 123.0, 110.0, 386.0, 20.0 ],
					"fontsize" : 11.0,
					"id" : "obj-33",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"varname" : "toggle",
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 34.0, 347.0, 20.0, 20.0 ],
					"id" : "obj-31",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "gate",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 34.0, 388.0, 53.0, 20.0 ],
					"fontsize" : 11.0,
					"id" : "obj-32",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "format: bars.beats.units, pitch velocity duration_in_beats;",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"patching_rect" : [ 128.0, 347.0, 335.0, 20.0 ],
					"fontsize" : 11.0,
					"id" : "obj-25",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "ajm.relmetro @interval 2n @start 9.4.240",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 221.0, 288.0, 245.0, 20.0 ],
					"fontsize" : 11.0,
					"id" : "obj-49",
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"numinlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "ajm.relmetro @interval 2n @start 9.2.160",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 208.0, 264.0, 245.0, 20.0 ],
					"fontsize" : 11.0,
					"id" : "obj-4",
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"numinlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "ajm.relmetro @interval 2n @start 8.3.320",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 184.0, 239.0, 245.0, 20.0 ],
					"fontsize" : 11.0,
					"id" : "obj-47",
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"numinlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "ajm.relmetro @interval 2n @start 8.1.0",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 155.0, 214.0, 231.0, 20.0 ],
					"fontsize" : 11.0,
					"id" : "obj-46",
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"numinlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "8.3.0",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 90.0, 214.0, 49.0, 18.0 ],
					"fontsize" : 11.0,
					"id" : "obj-45",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "10.1.0",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 89.0, 164.0, 49.0, 18.0 ],
					"fontsize" : 11.0,
					"id" : "obj-44",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "1.4.480",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 60.0, 115.0, 55.0, 18.0 ],
					"fontsize" : 11.0,
					"id" : "obj-43",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "ajm.relmetro @interval 2n @start 6.2.0",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 83.0, 187.0, 231.0, 20.0 ],
					"fontsize" : 11.0,
					"id" : "obj-41",
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"numinlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "ajm.relmetro @interval 2n @start 5.1.0",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 75.0, 138.0, 231.0, 20.0 ],
					"fontsize" : 11.0,
					"id" : "obj-40",
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"numinlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "noteout",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"patching_rect" : [ 34.0, 443.0, 75.0, 20.0 ],
					"fontsize" : 11.0,
					"id" : "obj-27",
					"numinlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "ajm.relmetro @interval 2n @start 1.1.0 @end 5.1.0",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 49.0, 83.0, 299.0, 20.0 ],
					"fontsize" : 11.0,
					"id" : "obj-29",
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"numinlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "coll",
					"fontname" : "Verdana",
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 68.0, 347.0, 60.0, 20.0 ],
					"fontsize" : 11.0,
					"id" : "obj-30",
					"numinlets" : 1,
					"save" : [ "#N", "coll", ";", "#T", "flags", 1, 0, ";", "#T", "store", "1.1.0", 60, 80, 1.9, ";", "#T", "store", "1.3.0", 55, 80, 1.9, ";", "#T", "store", "2.1.0", 58, 80, 1.9, ";", "#T", "store", "2.3.0", 60, 80, 1.9, ";", "#T", "store", "3.1.0", 53, 80, 1.9, ";", "#T", "store", "3.3.0", 55, 80, 1.9, ";", "#T", "store", "4.1.0", 51, 80, 1.9, ";", "#T", "store", "4.3.0", 48, 80, 1.9, ";" ],
					"saved_object_attributes" : 					{
						"embed" : 1
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Atributes: \n@interval\n@start \n@stop \n@format",
					"linecount" : 5,
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"patching_rect" : [ 324.0, 138.0, 74.0, 73.0 ],
					"fontsize" : 11.0,
					"id" : "obj-13",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p \"sequencing tricks\"",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"patching_rect" : [ 483.0, 245.0, 127.0, 20.0 ],
					"fontsize" : 11.0,
					"id" : "obj-2",
					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
					"numinlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 289.0, 47.0, 745.0, 490.0 ],
						"bglocked" : 0,
						"defrect" : [ 289.0, 47.0, 745.0, 490.0 ],
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
									"text" : "loadmess 0",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"hidden" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 140.0, 19.0, 74.0, 20.0 ],
									"fontsize" : 11.1,
									"id" : "obj-10",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pipe 8n",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 464.0, 99.0, 52.0, 20.0 ],
									"fontsize" : 11.1,
									"id" : "obj-1",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Select playback type:",
									"fontname" : "Arial",
									"numoutlets" : 0,
									"patching_rect" : [ 19.0, 19.0, 124.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-55",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"args" : [  ],
									"patching_rect" : [ 469.0, 366.0, 113.0, 103.0 ],
									"id" : "obj-6",
									"name" : "ajm.help-transport.maxpat",
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Here the metro intentionally bangs too slowly to only hit every other beat",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"patching_rect" : [ 451.0, 26.0, 229.0, 33.0 ],
									"fontsize" : 11.1,
									"id" : "obj-19",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "for offset, change the blue number box\n\nfor phased, try restarting the transport\n",
									"linecount" : 7,
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"patching_rect" : [ 28.0, 238.0, 102.0, 101.0 ],
									"fontsize" : 11.1,
									"id" : "obj-15",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "+ 240",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 464.0, 125.0, 45.0, 20.0 ],
									"fontsize" : 11.1,
									"id" : "obj-3",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "na.relmetro @interval 4n @format ticks",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 450.0, 63.0, 233.0, 20.0 ],
									"fontsize" : 11.1,
									"id" : "obj-2",
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "32n offset",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"patching_rect" : [ 380.0, 125.0, 65.0, 20.0 ],
									"fontsize" : 11.1,
									"id" : "obj-22",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "The drum hits are every 8n, but the interval must be higher to support increasing the speed and offsetting in small increments",
									"linecount" : 3,
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"patching_rect" : [ 149.0, 47.0, 259.0, 47.0 ],
									"fontsize" : 11.1,
									"id" : "obj-13",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "+",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 368.0, 190.0, 32.5, 20.0 ],
									"fontsize" : 11.1,
									"id" : "obj-9",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* 60",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 382.0, 167.0, 36.0, 20.0 ],
									"fontsize" : 11.1,
									"id" : "obj-8",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 382.0, 143.0, 50.0, 20.0 ],
									"fontsize" : 11.1,
									"bgcolor" : [ 0.611765, 0.701961, 1.0, 1.0 ],
									"id" : "obj-5",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Outputs ticks slighty faster and converts to the normal 480 ticks/quarter note values. This kind of approach is needed when the speed change is not a multiple of 2 or 1/2.\n\nA separate metro can also allow for offsetting by arbitrary amounts.",
									"linecount" : 8,
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"patching_rect" : [ 497.0, 162.0, 227.0, 114.0 ],
									"fontsize" : 11.1,
									"id" : "obj-38",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "expr $i1/235 * 240",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 544.0, 137.0, 119.0, 20.0 ],
									"fontsize" : 11.1,
									"id" : "obj-17",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "na.relmetro @interval 235 ticks @format ticks",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 544.0, 98.0, 147.0, 33.0 ],
									"fontsize" : 11.1,
									"id" : "obj-14",
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "loop length = 2 bars of 4/4 = 8*480 ticks",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"patching_rect" : [ 189.0, 298.0, 252.0, 20.0 ],
									"fontsize" : 11.1,
									"id" : "obj-83",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "% 3840",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 133.0, 314.0, 55.0, 20.0 ],
									"fontsize" : 11.1,
									"id" : "obj-80",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "(a large number divisible by the loop length)",
									"linecount" : 3,
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"patching_rect" : [ 171.0, 153.0, 103.0, 47.0 ],
									"fontsize" : 11.1,
									"id" : "obj-79",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "translate ticks bbu @mode position",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 133.0, 340.0, 116.0, 33.0 ],
									"fontsize" : 11.1,
									"id" : "obj-68",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "na.relmetro @interval 32n @format ticks",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 146.0, 98.0, 240.0, 20.0 ],
									"fontsize" : 11.1,
									"id" : "obj-63",
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* 2",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 323.0, 169.0, 32.5, 20.0 ],
									"fontsize" : 11.1,
									"id" : "obj-60",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "2.1.480",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 196.0, 409.0, 126.0, 18.0 ],
									"fontsize" : 11.1,
									"id" : "obj-57",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "tab",
									"fontname" : "Verdana",
									"numoutlets" : 3,
									"htabcolor" : [ 0.611765, 0.701961, 1.0, 1.0 ],
									"hovertabcolor" : [ 0.678431, 0.819608, 0.819608, 1.0 ],
									"outlettype" : [ "int", "", "" ],
									"patching_rect" : [ 28.0, 47.0, 92.0, 180.0 ],
									"fontsize" : 11.1,
									"tabs" : [ "off", "forward", "reverse", "half speed", "double speed", "offset", "down beats", "up beats", "phased" ],
									"id" : "obj-51",
									"clicktabcolor" : [ 0.047059, 0.913725, 0.913725, 1.0 ],
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "switch 8 1",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 132.0, 240.0, 127.0, 20.0 ],
									"fontsize" : 11.1,
									"id" : "obj-50",
									"numinlets" : 9
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "!- 48000000",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 159.0, 136.0, 80.0, 20.0 ],
									"fontsize" : 11.1,
									"id" : "obj-41",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* 0.5",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 273.0, 170.0, 40.0, 20.0 ],
									"fontsize" : 11.1,
									"id" : "obj-33",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sprintf %d.%d.%d",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 133.0, 380.0, 115.0, 20.0 ],
									"fontsize" : 11.1,
									"id" : "obj-20",
									"numinlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "na.coll2note",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 133.0, 434.0, 79.0, 20.0 ],
									"fontsize" : 11.1,
									"id" : "obj-18",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "noteout 10",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"patching_rect" : [ 133.0, 462.0, 139.0, 20.0 ],
									"fontsize" : 11.100006,
									"id" : "obj-4",
									"numinlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "coll",
									"fontname" : "Verdana",
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 133.0, 410.0, 55.5, 20.0 ],
									"fontsize" : 11.1,
									"id" : "obj-7",
									"numinlets" : 1,
									"save" : [ "#N", "coll", ";", "#T", "flags", 1, 0, ";", "#T", "store", "1.1.0", 36, 95, 0.248, 42, 56, 0.248, ";", "#T", "store", "1.1.240", 42, 41, 0.248, ";", "#T", "store", "1.2.0", 37, 95, 0.248, 42, 35, 0.248, ";", "#T", "store", "1.2.240", 42, 100, 0.248, ";", "#T", "store", "1.3.0", 42, 12, 0.248, ";", "#T", "store", "1.3.240", 36, 95, 0.248, 42, 39, 0.248, ";", "#T", "store", "1.4.0", 37, 95, 0.248, 42, 22, 0.248, ";", "#T", "store", "1.4.240", 42, 45, 0.248, ";", "#T", "store", "2.1.0", 36, 95, 0.248, 42, 96, 0.248, ";", "#T", "store", "2.1.240", 42, 35, 0.248, ";", "#T", "store", "2.2.0", 37, 95, 0.248, 42, 117, 0.248, ";", "#T", "store", "2.2.240", 42, 24, 0.248, ";", "#T", "store", "2.3.0", 42, 61, 0.248, ";", "#T", "store", "2.3.240", 36, 95, 0.248, 42, 5, 0.248, ";", "#T", "store", "2.4.0", 37, 95, 0.248, 42, 71, 0.248, ";", "#T", "store", "2.4.240", 55, 65, 0.248, ";" ],
									"saved_object_attributes" : 									{
										"embed" : 1
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numoutlets" : 0,
									"patching_rect" : [ 24.0, 42.0, 102.0, 190.0 ],
									"grad1" : [ 0.239216, 0.643137, 0.709804, 0.156863 ],
									"bgcolor" : [ 0.678431, 0.819608, 0.819608, 0.552941 ],
									"id" : "obj-12",
									"grad2" : [ 0.678431, 0.819608, 0.819608, 0.372549 ],
									"background" : 1,
									"numinlets" : 1
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [ 459.5, 93.0, 473.5, 93.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-3", 0 ],
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
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-50", 8 ],
									"hidden" : 0,
									"midpoints" : [ 553.5, 161.0, 496.0, 161.0, 496.0, 235.0, 249.5, 235.0 ]
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
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-18", 0 ],
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
									"source" : [ "obj-18", 1 ],
									"destination" : [ "obj-4", 1 ],
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
									"midpoints" : [ 142.5, 404.0, 312.5, 404.0 ]
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
									"midpoints" : [ 332.5, 210.0, 195.5, 210.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-50", 3 ],
									"hidden" : 0,
									"midpoints" : [ 282.5, 204.0, 182.0, 204.0 ]
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
									"midpoints" : [ 37.5, 236.0, 141.5, 236.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-50", 5 ],
									"hidden" : 0,
									"midpoints" : [ 377.5, 216.0, 209.0, 216.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-50", 6 ],
									"hidden" : 0,
									"midpoints" : [ 459.5, 222.0, 222.5, 222.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-50", 7 ],
									"hidden" : 0,
									"midpoints" : [ 473.5, 229.0, 236.0, 229.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-63", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [ 155.5, 124.0, 377.5, 124.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-63", 0 ],
									"destination" : [ "obj-41", 0 ],
									"hidden" : 0,
									"midpoints" : [ 155.5, 124.0, 168.5, 124.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-63", 0 ],
									"destination" : [ "obj-60", 0 ],
									"hidden" : 0,
									"midpoints" : [ 155.5, 124.0, 332.5, 124.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-63", 0 ],
									"destination" : [ "obj-33", 0 ],
									"hidden" : 0,
									"midpoints" : [ 155.5, 124.0, 282.5, 124.0 ]
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
									"midpoints" : [ 155.5, 218.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-63", 0 ],
									"destination" : [ "obj-50", 8 ],
									"hidden" : 0,
									"midpoints" : [ 155.5, 199.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-51", 0 ],
									"hidden" : 1,
									"midpoints" : [ 149.5, 42.0, 37.5, 42.0 ]
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
					"maxclass" : "newobj",
					"text" : "p loops/format",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"patching_rect" : [ 482.0, 213.0, 92.0, 20.0 ],
					"fontsize" : 11.0,
					"id" : "obj-1",
					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
					"numinlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 289.0, 47.0, 536.0, 346.0 ],
						"bglocked" : 0,
						"defrect" : [ 289.0, 47.0, 536.0, 346.0 ],
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
									"text" : "pattrforward parent::toggle",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"hidden" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 346.0, 289.0, 151.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-2",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 1 0",
									"fontname" : "Arial",
									"numoutlets" : 2,
									"hidden" : 1,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 314.0, 260.0, 51.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-12",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 0",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"hidden" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 269.0, 256.0, 24.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-15",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar toggle",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"hidden" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 269.0, 288.0, 70.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-14",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 0",
									"fontname" : "Arial",
									"numoutlets" : 2,
									"hidden" : 1,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 269.0, 232.0, 36.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-8",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"args" : [  ],
									"patching_rect" : [ 314.0, 150.0, 113.0, 103.0 ],
									"id" : "obj-9",
									"name" : "ajm.help-transport.maxpat",
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "active",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"hidden" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 269.0, 207.0, 42.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-11",
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Hit restart to play:",
									"fontname" : "Arial",
									"numoutlets" : 0,
									"patching_rect" : [ 318.0, 128.0, 106.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-55",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "na.coll2note",
									"fontname" : "Verdana",
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 91.0, 208.0, 79.0, 20.0 ],
									"fontsize" : 11.1,
									"id" : "obj-7",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Formats:\n   bbustring (default)\n   bbulist\n   ticks",
									"linecount" : 4,
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"patching_rect" : [ 11.0, 22.0, 132.0, 60.0 ],
									"fontsize" : 11.1,
									"id" : "obj-5",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "bbulist format is used so the current bar number can be manipulated",
									"linecount" : 3,
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"patching_rect" : [ 263.0, 38.0, 153.0, 47.0 ],
									"fontsize" : 11.1,
									"id" : "obj-3",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"varname" : "toggle",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 91.0, 151.0, 20.0, 20.0 ],
									"id" : "obj-17",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p 4_bar_loop",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 153.0, 86.0, 84.0, 20.0 ],
									"fontsize" : 11.1,
									"id" : "obj-20",
									"numinlets" : 1,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 274.0, 440.0, 362.0, 232.0 ],
										"bglocked" : 0,
										"defrect" : [ 274.0, 440.0, 362.0, 232.0 ],
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
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 27.0, 163.0, 115.0, 20.0 ],
													"fontsize" : 11.1,
													"id" : "obj-30",
													"numinlets" : 3
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pack 0 0 0",
													"fontname" : "Verdana",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 27.0, 118.0, 263.0, 20.0 ],
													"fontsize" : 11.1,
													"id" : "obj-17",
													"numinlets" : 3
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "expr ($i1-1)%4 + 1",
													"fontname" : "Verdana",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 27.0, 88.0, 122.0, 20.0 ],
													"fontsize" : 11.1,
													"id" : "obj-15",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "unpack 0 0 0",
													"fontname" : "Verdana",
													"numoutlets" : 3,
													"outlettype" : [ "int", "int", "int" ],
													"patching_rect" : [ 27.0, 59.0, 263.0, 20.0 ],
													"fontsize" : 11.1,
													"id" : "obj-14",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numoutlets" : 1,
													"outlettype" : [ "" ],
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
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "2.1.480",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 173.0, 116.0, 60.0, 18.0 ],
									"fontsize" : 11.1,
									"id" : "obj-16",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "coll",
									"fontname" : "Verdana",
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 153.0, 150.0, 59.5, 20.0 ],
									"fontsize" : 11.1,
									"id" : "obj-10",
									"numinlets" : 1,
									"save" : [ "#N", "coll", ";", "#T", "flags", 1, 0, ";", "#T", "store", "1.1.0", 50, 81, 3.346, 57, 82, 3.452, 53, 83, 3.538, 38, 83, 3.648, ";", "#T", "store", "2.1.0", 57, 73, 3.583, 53, 81, 3.587, 52, 82, 3.625, 40, 90, 3.681, ";", "#T", "store", "3.1.0", 52, 82, 3.602, 36, 88, 3.619, 57, 81, 3.725, 55, 90, 3.744, ";", "#T", "store", "4.1.0", 59, 73, 1.363, 43, 88, 3.45, 52, 82, 3.927, 55, 82, 3.946, ";", "#T", "store", "4.2.240", 60, 83, 1.346, ";", "#T", "store", "4.4.0", 59, 82, 1.004, ";" ],
									"saved_object_attributes" : 									{
										"embed" : 1
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 91.0, 182.0, 81.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-32",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "noteout",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"patching_rect" : [ 91.0, 237.0, 80.0, 20.0 ],
									"fontsize" : 11.1,
									"id" : "obj-27",
									"numinlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "2 1 480",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 167.0, 36.0, 60.0, 18.0 ],
									"fontsize" : 11.1,
									"id" : "obj-4",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "na.relmetro @interval 8n @start 1.1.0 @format bbulist",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 153.0, 8.0, 318.0, 20.0 ],
									"fontsize" : 11.1,
									"id" : "obj-1",
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numoutlets" : 0,
									"patching_rect" : [ 11.0, 16.0, 127.0, 67.0 ],
									"grad1" : [ 0.239216, 0.643137, 0.709804, 0.156863 ],
									"bgcolor" : [ 0.678431, 0.819608, 0.819608, 0.552941 ],
									"id" : "obj-6",
									"grad2" : [ 0.678431, 0.819608, 0.819608, 0.372549 ],
									"background" : 1,
									"numinlets" : 1
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 1 ],
									"destination" : [ "obj-27", 1 ],
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
									"source" : [ "obj-32", 0 ],
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
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-32", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-16", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-32", 1 ],
									"hidden" : 0,
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
									"source" : [ "obj-12", 1 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 1,
									"midpoints" : [ 323.5, 284.0, 278.5, 284.0 ]
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
					"maxclass" : "newobj",
					"text" : "p chords",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"patching_rect" : [ 480.0, 185.0, 58.0, 20.0 ],
					"fontsize" : 11.0,
					"id" : "obj-10",
					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
					"numinlets" : 0,
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
									"maxclass" : "newobj",
									"text" : "pattrforward parent::toggle",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"hidden" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 325.0, 279.0, 151.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-2",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 38.0, 119.0, 234.0, 18.0 ],
									"fontsize" : 12.0,
									"id" : "obj-12",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "<-- the [zl iter 3] in this abstraction separates the chord into notes",
									"linecount" : 3,
									"fontname" : "Arial",
									"numoutlets" : 0,
									"patching_rect" : [ 98.0, 148.0, 150.0, 48.0 ],
									"fontsize" : 12.0,
									"id" : "obj-13",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "na.coll2note",
									"fontname" : "Arial",
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 20.0, 147.0, 75.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-11",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 1 0",
									"fontname" : "Arial",
									"numoutlets" : 2,
									"hidden" : 1,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 293.0, 249.0, 51.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-18",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 0",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"hidden" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 248.0, 246.0, 24.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-15",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pvar toggle",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"hidden" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 248.0, 278.0, 70.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-1",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 0",
									"fontname" : "Arial",
									"numoutlets" : 2,
									"hidden" : 1,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 248.0, 222.0, 36.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-6",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"args" : [  ],
									"patching_rect" : [ 293.0, 140.0, 113.0, 103.0 ],
									"id" : "obj-8",
									"name" : "ajm.help-transport.maxpat",
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "active",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"hidden" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 248.0, 197.0, 42.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-10",
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Hit restart to play:",
									"fontname" : "Arial",
									"numoutlets" : 0,
									"patching_rect" : [ 297.0, 118.0, 106.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-55",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"varname" : "toggle",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 20.0, 16.0, 20.0, 20.0 ],
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
									"patching_rect" : [ 20.0, 46.0, 54.0, 20.0 ],
									"fontsize" : 12.0,
									"id" : "obj-14",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "format: bars.beats.units, pitch1 velocity1 duration_in_beats1 ... pitchN velocityN durationN;",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"patching_rect" : [ 82.0, 78.0, 528.0, 20.0 ],
									"fontsize" : 11.1,
									"id" : "obj-4",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "noteout",
									"fontname" : "Verdana",
									"numoutlets" : 0,
									"patching_rect" : [ 20.0, 208.0, 73.0, 20.0 ],
									"fontsize" : 11.1,
									"id" : "obj-7",
									"numinlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ajm.relmetro @interval 2n @start 1.1.0 @end 3.1.0",
									"fontname" : "Verdana",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 55.0, 18.0, 301.0, 20.0 ],
									"fontsize" : 11.1,
									"id" : "obj-5",
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"numinlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "coll",
									"fontname" : "Verdana",
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 20.0, 78.0, 59.5, 20.0 ],
									"fontsize" : 11.1,
									"id" : "obj-9",
									"numinlets" : 1,
									"save" : [ "#N", "coll", ";", "#T", "flags", 1, 0, ";", "#T", "store", "1.1.0", 60, 80, 1.9, 64, 80, 1.9, 67, 80, 1.9, ";", "#T", "store", "1.3.0", 60, 80, 1.9, 65, 80, 1.9, 69, 80, 1.9, ";", "#T", "store", "2.1.0", 59, 80, 1.9, 62, 80, 1.9, 65, 80, 1.9, 67, 80, 1.9, ";", "#T", "store", "2.3.0", 60, 80, 1.9, 64, 80, 1.9, 67, 80, 1.9, ";" ],
									"saved_object_attributes" : 									{
										"embed" : 1
									}

								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-14", 1 ],
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
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-9", 0 ],
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
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-12", 1 ],
									"hidden" : 0,
									"midpoints" : [ 29.5, 113.0, 262.5, 113.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 1,
									"midpoints" : [ 302.5, 272.0, 257.5, 272.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 1 ],
									"destination" : [ "obj-2", 0 ],
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
					"patching_rect" : [ 468.0, 481.0, 145.0, 55.0 ],
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
					"patching_rect" : [ 468.0, 390.0, 61.0, 20.0 ],
					"fontsize" : 11.1,
					"id" : "obj-74",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "ajm.coll2note, ajm.midi2coll, metro, transport, timepoint, translate",
					"linecount" : 4,
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"hidden" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 468.0, 414.0, 134.0, 58.0 ],
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
					"patching_rect" : [ 458.0, 11.0, 138.0, 55.0 ],
					"lockeddragscroll" : 1,
					"id" : "obj-48",
					"name" : "ajm.helplinks.maxpat",
					"numinlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "a transport-synced metro that reports time relative to a starting timepoint",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"patching_rect" : [ 145.0, 15.0, 243.0, 36.0 ],
					"fontsize" : 12.0,
					"id" : "obj-56",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "ajm.relmetro",
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 10.0, 11.0, 123.0, 27.0 ],
					"fontsize" : 18.0,
					"id" : "obj-57",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "abstraction",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"patching_rect" : [ 11.0, 38.0, 100.0, 17.0 ],
					"fontsize" : 9.0,
					"id" : "obj-58",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"angle" : 270.0,
					"patching_rect" : [ 8.0, 9.0, 389.0, 47.0 ],
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
					"patching_rect" : [ 7.0, 8.0, 392.0, 51.0 ],
					"mode" : 1,
					"rounded" : 16,
					"grad1" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"id" : "obj-54",
					"grad2" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [ 230.5, 319.0, 77.5, 319.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [ 217.5, 319.0, 77.5, 319.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-47", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [ 193.5, 319.0, 77.5, 319.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-46", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [ 164.5, 319.0, 77.5, 319.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [ 92.5, 209.0, 77.5, 209.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-45", 1 ],
					"hidden" : 0,
					"midpoints" : [ 92.5, 210.0, 129.5, 210.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [ 84.5, 161.0, 77.0, 161.0, 77.0, 315.0, 77.5, 315.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-44", 1 ],
					"hidden" : 0,
					"midpoints" : [ 84.5, 161.0, 128.5, 161.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-43", 1 ],
					"hidden" : 0,
					"midpoints" : [ 58.5, 110.0, 105.5, 110.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [ 58.5, 319.0, 77.5, 319.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
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
					"source" : [ "obj-3", 1 ],
					"destination" : [ "obj-27", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [ 43.5, 368.0, 43.5, 368.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-32", 1 ],
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
 ]
	}

}
