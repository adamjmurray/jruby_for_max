{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 29.0, 50.0, 610.0, 613.0 ],
		"bglocked" : 0,
		"defrect" : [ 29.0, 50.0, 610.0, 613.0 ],
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
					"text" : "thispatcher",
					"fontname" : "Verdana",
					"hidden" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 214.0, 600.0, 73.0, 20.0 ],
					"fontsize" : 11.1,
					"numoutlets" : 2,
					"id" : "obj-49",
					"outlettype" : [ "", "" ],
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "ajm.bring-to-front-listener ajm.env~",
					"fontname" : "Verdana",
					"hidden" : 1,
					"numinlets" : 0,
					"patching_rect" : [ 214.0, 574.0, 217.0, 20.0 ],
					"fontsize" : 11.1,
					"numoutlets" : 1,
					"id" : "obj-50",
					"outlettype" : [ "front" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Use this inside of poly~ to mute the voice when the envelope is not active",
					"linecount" : 5,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 484.0, 387.0, 94.0, 61.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"id" : "obj-1"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "env UI",
					"text" : "p ajm.envui: a GUI for ajm.env",
					"fontname" : "Verdana",
					"numinlets" : 0,
					"patching_rect" : [ 418.0, 37.0, 151.0, 17.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"id" : "obj-2",
					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 629.0, 156.0, 380.0, 430.0 ],
						"bglocked" : 0,
						"defrect" : [ 629.0, 156.0, 380.0, 430.0 ],
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
									"text" : "• start audio",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 50.0, 30.0, 70.0, 17.0 ],
									"fontsize" : 9.0,
									"numoutlets" : 0,
									"id" : "obj-1"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "stop",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 107.0, 44.0, 27.0, 26.0 ],
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"id" : "obj-2",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "startwindow",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 34.0, 44.0, 65.0, 15.0 ],
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"id" : "obj-3",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "dac~",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 34.0, 77.0, 29.0, 28.0 ],
									"fontsize" : 9.0,
									"numoutlets" : 0,
									"id" : "obj-4"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numinlets" : 1,
									"patching_rect" : [ 23.0, 24.0, 123.0, 43.0 ],
									"bordercolor" : [ 0.392157, 0.792157, 0.117647, 1.0 ],
									"border" : 2,
									"rounded" : 0,
									"numoutlets" : 0,
									"id" : "obj-5",
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "noteoff",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 78.0, 130.0, 42.0, 17.0 ],
									"fontsize" : 9.0,
									"numoutlets" : 0,
									"id" : "obj-6"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 80.0, 147.0, 24.0, 26.0 ],
									"fontsize" : 18.0,
									"numoutlets" : 1,
									"id" : "obj-7",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "1",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 27.0, 147.0, 24.0, 26.0 ],
									"fontsize" : 18.0,
									"numoutlets" : 1,
									"id" : "obj-8",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "noteon",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 26.0, 130.0, 42.0, 17.0 ],
									"fontsize" : 9.0,
									"numoutlets" : 0,
									"id" : "obj-9"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "scope~",
									"bufsize" : 64,
									"numinlets" : 2,
									"patching_rect" : [ 103.0, 264.0, 154.0, 101.0 ],
									"trigger" : 1,
									"rounded" : 0,
									"numoutlets" : 0,
									"id" : "obj-10",
									"bgcolor" : [ 0.529412, 0.529412, 0.529412, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "cycle~ 8",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 63.0, 206.0, 49.0, 17.0 ],
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"id" : "obj-11",
									"outlettype" : [ "signal" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "ajm.env~",
									"fontname" : "Verdana",
									"numinlets" : 5,
									"patching_rect" : [ 103.0, 239.0, 73.0, 17.0 ],
									"fontsize" : 9.0,
									"numoutlets" : 2,
									"id" : "obj-12",
									"outlettype" : [ "signal", "int" ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"varname" : "envelope",
									"lockeddragscroll" : 1,
									"numinlets" : 0,
									"args" : [  ],
									"patching_rect" : [ 131.0, 99.0, 212.0, 120.0 ],
									"numoutlets" : 3,
									"id" : "obj-13",
									"name" : "ajm.envui.maxpat",
									"outlettype" : [ "", "", "" ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-13", 2 ],
									"destination" : [ "obj-12", 4 ],
									"hidden" : 0,
									"midpoints" : [ 333.5, 233.0, 166.5, 233.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 1 ],
									"destination" : [ "obj-12", 3 ],
									"hidden" : 0,
									"midpoints" : [ 237.0, 226.0, 153.0, 226.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-12", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-12", 1 ],
									"hidden" : 0,
									"midpoints" : [ 36.5, 188.0, 126.0, 188.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-12", 1 ],
									"hidden" : 0,
									"midpoints" : [ 89.5, 188.0, 126.0, 188.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [ 72.5, 231.0, 112.5, 231.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [ 116.5, 73.0, 43.5, 73.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [ 43.5, 75.0, 43.5, 75.0 ]
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
					"text" : "loadbang",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 234.0, 340.0, 50.0, 17.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"id" : "obj-3",
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "noteoff",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 72.0, 307.0, 42.0, 17.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"id" : "obj-4"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "release envelope",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 296.0, 287.0, 100.0, 17.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"id" : "obj-5"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"lockeddragscroll" : 1,
					"numinlets" : 0,
					"args" : [  ],
					"patching_rect" : [ 466.0, 523.0, 127.0, 49.0 ],
					"numoutlets" : 0,
					"id" : "obj-6",
					"name" : "ajm.helplinks.maxpat"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 220.0, 263.0, 50.0, 17.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"id" : "obj-7",
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 206.0, 166.0, 50.0, 17.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"id" : "obj-8",
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "thispoly~",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 470.0, 474.0, 51.0, 17.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 2,
					"id" : "obj-9",
					"outlettype" : [ "int", "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "ajm.env",
					"fontname" : "Verdana",
					"numinlets" : 0,
					"patching_rect" : [ 418.0, 429.0, 62.0, 17.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 2,
					"id" : "obj-10",
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "ajm.envthispoly",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 470.0, 451.0, 81.0, 17.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"id" : "obj-11",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "scale 0 127 0. 1.",
					"fontname" : "Verdana",
					"numinlets" : 6,
					"patching_rect" : [ 119.0, 263.0, 87.0, 17.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"id" : "obj-12",
					"outlettype" : [ "float" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "notein",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 104.0, 239.0, 40.0, 17.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"id" : "obj-13",
					"outlettype" : [ "int", "int", "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Send a max amplitude (envelope multiplier) message to trigger the envelope. Its designed to works with MIDI: non-zero value is a note on (attack) and zero is a note off (release).",
					"linecount" : 5,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 5.0, 166.0, 191.0, 61.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"id" : "obj-14"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "optional sustain point on/off. If off, release is started immediately after attack finishes.",
					"linecount" : 3,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 253.0, 361.0, 160.0, 39.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"id" : "obj-15"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numinlets" : 1,
					"patching_rect" : [ 505.0, 220.0, 15.0, 15.0 ],
					"numoutlets" : 1,
					"id" : "obj-16",
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "0.5 1500 0 50",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 220.0, 286.0, 76.0, 15.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"id" : "obj-17",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "0 0 1 500 0.5 750 1 750",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 206.0, 202.0, 124.0, 15.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"id" : "obj-18",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "function",
					"linecolor" : [ 0.333333, 0.333333, 0.333333, 1.0 ],
					"numinlets" : 1,
					"pointcolor" : [ 0.321569, 0.321569, 0.321569, 1.0 ],
					"patching_rect" : [ 373.0, 136.0, 144.0, 79.0 ],
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 4,
					"id" : "obj-19",
					"outlettype" : [ "float", "", "", "bang" ],
					"addpoints" : [ 0.0, 0.0, 0, 765.15155, 0.166667, 0, 909.090942, 0.407407, 0, 1000.0, 1.0, 0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "0.5",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 53.0, 263.0, 38.0, 26.0 ],
					"fontsize" : 18.0,
					"numoutlets" : 1,
					"id" : "obj-20",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numinlets" : 1,
					"patching_rect" : [ 234.0, 364.0, 15.0, 15.0 ],
					"numoutlets" : 1,
					"id" : "obj-21",
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "0",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 79.0, 322.0, 24.0, 26.0 ],
					"fontsize" : 18.0,
					"numoutlets" : 1,
					"id" : "obj-22",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "1",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 17.0, 263.0, 24.0, 26.0 ],
					"fontsize" : 18.0,
					"numoutlets" : 1,
					"id" : "obj-23",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "scope~",
					"bufsize" : 64,
					"numinlets" : 2,
					"patching_rect" : [ 178.0, 464.0, 154.0, 101.0 ],
					"trigger" : 1,
					"rounded" : 0,
					"numoutlets" : 0,
					"id" : "obj-24",
					"bgcolor" : [ 0.529412, 0.529412, 0.529412, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "cycle~ 8",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 60.0, 370.0, 49.0, 17.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"id" : "obj-25",
					"outlettype" : [ "signal" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "• start audio",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 165.0, 78.0, 70.0, 17.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"id" : "obj-26"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "stop",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 222.0, 92.0, 28.0, 15.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"id" : "obj-27",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "startwindow",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 149.0, 92.0, 65.0, 15.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"id" : "obj-28",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "dac~",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 149.0, 125.0, 32.0, 17.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"id" : "obj-29"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"patching_rect" : [ 138.0, 72.0, 123.0, 43.0 ],
					"bordercolor" : [ 0.392157, 0.792157, 0.117647, 1.0 ],
					"border" : 2,
					"rounded" : 0,
					"numoutlets" : 0,
					"id" : "obj-30",
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numinlets" : 1,
					"patching_rect" : [ 234.0, 424.0, 15.0, 15.0 ],
					"numoutlets" : 1,
					"id" : "obj-31",
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "see also:",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 10.0, 550.0, 49.0, 17.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"id" : "obj-32"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "line~",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 57.0, 549.0, 32.0, 15.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"id" : "obj-33",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "function",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 96.0, 549.0, 46.0, 15.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"id" : "obj-34",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend help",
					"fontname" : "Verdana",
					"hidden" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 57.0, 576.0, 68.0, 17.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"id" : "obj-35",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"fontname" : "Verdana",
					"hidden" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 66.0, 631.0, 45.0, 17.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"id" : "obj-36",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "ajm.env~",
					"fontname" : "Verdana",
					"numinlets" : 5,
					"patching_rect" : [ 178.0, 403.0, 73.0, 17.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 2,
					"id" : "obj-37",
					"outlettype" : [ "signal", "int" ],
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "message-driven signal envelope with independent breakpoint lists for attack and release and optional sustain",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 111.0, 23.0, 275.0, 28.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"id" : "obj-38"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Abstraction",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 21.0, 43.0, 77.0, 17.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"id" : "obj-39"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "ajm.env~",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 21.0, 18.0, 86.0, 27.0 ],
					"fontsize" : 18.0,
					"numoutlets" : 0,
					"id" : "obj-40"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "the max amplitude typically should go from 0 to 1.",
					"linecount" : 5,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 126.0, 282.0, 69.0, 61.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"id" : "obj-41"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "is the envelope active?",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 255.0, 427.0, 117.0, 17.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"id" : "obj-42"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "noteon",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 30.0, 245.0, 42.0, 17.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"id" : "obj-43"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "envelopes are in line~ format (list of value-time pairs)",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 214.0, 218.0, 146.0, 28.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"id" : "obj-44"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "attack envelope",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 273.0, 170.0, 100.0, 17.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"id" : "obj-45"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Double click to see the GUI:",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 418.0, 23.0, 136.0, 17.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"id" : "obj-46"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Works well with function but works even better with ajm.envui (see subpatch)",
					"linecount" : 3,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 381.0, 92.0, 143.0, 39.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"id" : "obj-47"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"shadow" : 3,
					"numinlets" : 1,
					"patching_rect" : [ 6.0, 11.0, 393.0, 52.0 ],
					"border" : 1,
					"rounded" : 7,
					"numoutlets" : 0,
					"id" : "obj-48",
					"bgcolor" : [ 0.729412, 0.890196, 0.815686, 1.0 ],
					"background" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-37", 1 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-37", 4 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-37", 3 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 1 ],
					"destination" : [ "obj-37", 2 ],
					"hidden" : 0,
					"midpoints" : [ 424.166656, 246.0, 214.5, 246.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-37", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-37", 1 ],
					"hidden" : 0,
					"midpoints" : [ 128.5, 361.0, 201.0, 361.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-37", 1 ],
					"hidden" : 0,
					"midpoints" : [ 62.5, 361.0, 201.0, 361.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-37", 1 ],
					"hidden" : 0,
					"midpoints" : [ 88.5, 361.0, 201.0, 361.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-37", 1 ],
					"hidden" : 0,
					"midpoints" : [ 26.5, 361.0, 201.0, 361.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [ 69.5, 395.0, 187.5, 395.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-50", 0 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 1,
					"midpoints" : [ 105.5, 568.0, 66.5, 568.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 1,
					"midpoints" : [ 66.5, 568.0, 66.5, 568.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 1 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [ 158.5, 123.0, 158.5, 123.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [ 231.5, 120.0, 158.5, 120.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [ 514.0, 241.0, 522.0, 241.0, 522.0, 131.0, 382.5, 131.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 1 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 3 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
