{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 9.0, 47.0, 781.0, 500.0 ],
		"bglocked" : 0,
		"defrect" : [ 9.0, 47.0, 781.0, 500.0 ],
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
					"numinlets" : 1,
					"hidden" : 1,
					"patching_rect" : [ 632.0, 380.0, 73.0, 20.0 ],
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
					"text" : "ajm.bring-to-front-listener ajm.seq",
					"fontname" : "Verdana",
					"numinlets" : 0,
					"hidden" : 1,
					"patching_rect" : [ 632.0, 354.0, 207.0, 20.0 ],
					"fontsize" : 11.1,
					"numoutlets" : 1,
					"id" : "obj-17",
					"outlettype" : [ "front" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p information",
					"fontname" : "Verdana",
					"numinlets" : 0,
					"patching_rect" : [ 652.0, 152.141312, 85.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 0,
					"id" : "obj-32",
					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 555.0, 94.0, 298.0, 158.0 ],
						"bglocked" : 0,
						"defrect" : [ 555.0, 94.0, 298.0, 158.0 ],
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
									"maxclass" : "message",
									"text" : "max",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 59.0, 48.0, 34.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-13",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess set",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"hidden" : 1,
									"patching_rect" : [ 255.0, 37.0, 84.0, 20.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 1,
									"id" : "obj-7",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "max 234.3",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 168.0, 113.0, 75.0, 18.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 1,
									"id" : "obj-2",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "min & max",
									"fontname" : "Verdana Bold",
									"numinlets" : 1,
									"patching_rect" : [ 15.0, 12.0, 108.0, 24.0 ],
									"fontsize" : 14.0,
									"numoutlets" : 0,
									"id" : "obj-22"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "min",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 13.0, 48.0, 32.5, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-53",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.seq @seq 100 5 234.3 -32 7 0",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 13.0, 84.0, 230.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 5,
									"id" : "obj-56",
									"outlettype" : [ "", "", "", "", "" ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-53", 0 ],
									"destination" : [ "obj-56", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-56", 4 ],
									"destination" : [ "obj-2", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-56", 0 ],
									"hidden" : 0,
									"midpoints" : [ 68.5, 73.0, 22.5, 73.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
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
					"text" : "52 52 52 52 53 57 53 57 59 59 55 53 55 53 59 59 55 53 55 53",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 153.0, 438.0, 190.0, 31.0 ],
					"fontsize" : 11.1,
					"numoutlets" : 1,
					"id" : "obj-43",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"numinlets" : 1,
					"lockeddragscroll" : 1,
					"args" : [ "ajm.rseq", "ajm.eval", "ajm.ruby" ],
					"patching_rect" : [ 631.0, 439.0, 145.0, 55.0 ],
					"numoutlets" : 0,
					"id" : "obj-60",
					"name" : "ajm.seealso.maxpat"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "A B C D E",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 114.0, 155.0, 62.0, 18.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 1,
					"id" : "obj-1",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "change the sequence",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 179.0, 154.0, 134.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 0,
					"id" : "obj-2"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "resetseq",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 192.0, 379.0, 59.0, 18.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 1,
					"id" : "obj-3",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"triscale" : 0.9,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"minimum" : 0,
					"patching_rect" : [ 270.0, 360.0, 37.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 2,
					"maximum" : 15,
					"id" : "obj-4",
					"outlettype" : [ "int", "bang" ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "F4 F3 * $1",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 270.0, 381.0, 72.0, 18.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 1,
					"id" : "obj-5",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "ajm.seq loadbang bug[1]",
					"text" : "p \"Ruby support\"",
					"fontname" : "Verdana",
					"numinlets" : 0,
					"patching_rect" : [ 652.0, 225.619568, 105.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 0,
					"id" : "obj-6",
					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 132.0, 46.0, 876.0, 529.0 ],
						"bglocked" : 0,
						"defrect" : [ 132.0, 46.0, 876.0, 529.0 ],
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
									"text" : "deferlow",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 481.0, 25.0, 58.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-50",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadbang",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 481.0, 3.0, 61.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-52",
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "change",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 422.0, 307.0, 54.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 3,
									"id" : "obj-1",
									"outlettype" : [ "", "int", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "rubyseq x=[60] \\; 20.times do x << 48 + (x[-1]*3)%29 end \\; x",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 31.0, 130.0, 383.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-2",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Using \"@autoinit true\" makes the ruby engine initialize immediately instead of waiting until the first Ruby code needs to be evaluated. This can fix issues with there being a slight lag for the first note.",
									"linecount" : 4,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 571.0, 375.0, 300.0, 60.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-3"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "$1 in a message box needs to have whitespace around it",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 656.0, 334.0, 179.0, 33.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-4"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "{curly braces} can be used to embed Ruby code that will be reevaluated as the sequencer steps. Arrays will be treated as a chord.",
									"linecount" : 4,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 94.0, 295.0, 213.0, 60.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-5"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 137.0, 465.0, 110.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-6",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 137.0, 442.0, 74.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-7",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "thresh",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 137.0, 419.0, 47.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-8",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "noteout",
									"fontname" : "Verdana",
									"numinlets" : 3,
									"patching_rect" : [ 22.0, 451.0, 51.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-9"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "makenote 80 100",
									"fontname" : "Verdana",
									"numinlets" : 3,
									"patching_rect" : [ 22.0, 418.0, 106.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 2,
									"id" : "obj-10",
									"outlettype" : [ "int", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numinlets" : 1,
									"patching_rect" : [ 22.0, 296.0, 21.0, 21.0 ],
									"numoutlets" : 1,
									"id" : "obj-11",
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "metro 250",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 22.0, 328.0, 69.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-12",
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "{60+rand(2)} {62+rand(4)} {[66+rand(8)\\,66+rand(8)]}",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 37.0, 356.0, 337.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-13",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "The ruby message will evaluate Ruby code without evaluating the result as a sequence",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 544.0, 15.0, 260.0, 33.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-14"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "rubyseq ['C4'\\, 'G4'\\, 'C4 F4 C5']",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 105.0, 57.0, 202.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-15",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 515.0, 496.0, 110.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-16",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 515.0, 473.0, 74.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-17",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "thresh",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 515.0, 450.0, 47.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-18",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.seq @seq 60*8 55*8 48*8 53*8",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 422.0, 283.0, 248.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 5,
									"id" : "obj-19",
									"outlettype" : [ "", "", "", "", "" ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "\" \"",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 568.0, 449.0, 234.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-20",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "noteout",
									"fontname" : "Verdana",
									"numinlets" : 3,
									"patching_rect" : [ 407.0, 480.0, 51.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-22"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "makenote 80 100",
									"fontname" : "Verdana",
									"numinlets" : 3,
									"patching_rect" : [ 407.0, 452.0, 106.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 2,
									"id" : "obj-23",
									"outlettype" : [ "int", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numinlets" : 1,
									"patching_rect" : [ 407.0, 223.0, 21.0, 21.0 ],
									"numoutlets" : 1,
									"id" : "obj-24",
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "metro 250",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 407.0, 255.0, 69.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-25",
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"triscale" : 0.9,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 422.0, 330.0, 37.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 2,
									"id" : "obj-26",
									"outlettype" : [ "int", "bang" ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "{[ $1 \\, $1 +rand(8)\\, $1 +rand(13)]}",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 422.0, 354.0, 227.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-27",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.seq @autoinit true",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 407.0, 380.0, 164.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 5,
									"id" : "obj-28",
									"outlettype" : [ "", "", "", "", "" ],
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
									"patching_rect" : [ 227.0, 384.0, 81.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-29",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "rubyseq (1..20).map { |n| 36 + fib(n) % 36 }",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 557.0, 109.0, 274.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-30",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "\" \"",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 591.0, 170.0, 106.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-31",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "noteout",
									"fontname" : "Verdana",
									"numinlets" : 3,
									"patching_rect" : [ 473.0, 198.0, 56.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-33"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "makenote 80 100",
									"fontname" : "Verdana",
									"numinlets" : 3,
									"patching_rect" : [ 473.0, 169.0, 110.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 2,
									"id" : "obj-34",
									"outlettype" : [ "int", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numinlets" : 1,
									"patching_rect" : [ 473.0, 79.0, 21.0, 21.0 ],
									"numoutlets" : 1,
									"id" : "obj-35",
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "metro 80",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 473.0, 106.0, 62.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-36",
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.seq",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 473.0, 139.0, 80.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 5,
									"id" : "obj-37",
									"outlettype" : [ "", "", "", "", "" ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "rubyseq (1..8).map { |n| 36 + fib(n) }",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 542.0, 87.0, 233.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-38",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "ruby def fib(n) \\; n<=1 ? n : fib(n-1)+fib(n-2) end",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 528.0, 51.0, 298.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-39",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "rubyseq (1..20).map { |n| 60 + n*n*n % (30 - n) }",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 123.0, 94.0, 307.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-40",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "\" \"",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 97.0, 219.0, 133.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-41",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numinlets" : 1,
									"patching_rect" : [ 19.0, 62.0, 21.0, 21.0 ],
									"numoutlets" : 1,
									"id" : "obj-43",
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "metro 150",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 19.0, 94.0, 69.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-44",
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "noteout",
									"fontname" : "Verdana",
									"numinlets" : 3,
									"patching_rect" : [ 19.0, 218.0, 54.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-45"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "makenote 80 100",
									"fontname" : "Verdana",
									"numinlets" : 3,
									"patching_rect" : [ 19.0, 188.0, 109.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 2,
									"id" : "obj-46",
									"outlettype" : [ "int", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "rubyseq messages are evaluated as Ruby. The result needs to be an array or a basic type like int/float/String. The result is then evaluated as normal sequencing syntax for this object",
									"linecount" : 3,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 20.0, 10.0, 350.0, 47.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-47"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.seq",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 19.0, 156.0, 80.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 5,
									"id" : "obj-48",
									"outlettype" : [ "", "", "", "", "" ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.seq",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 22.0, 386.0, 88.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 5,
									"id" : "obj-49",
									"outlettype" : [ "", "", "", "", "" ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [ 416.5, 446.0, 524.5, 446.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 1 ],
									"destination" : [ "obj-33", 1 ],
									"hidden" : 0,
									"midpoints" : [ 573.5, 192.0, 501.0, 192.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 0 ],
									"destination" : [ "obj-33", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 0 ],
									"destination" : [ "obj-34", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 0,
									"midpoints" : [ 566.5, 133.0, 482.5, 133.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 0 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-38", 0 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 0,
									"midpoints" : [ 551.5, 133.0, 482.5, 133.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-39", 0 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 0,
									"midpoints" : [ 537.5, 123.0, 482.5, 123.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-36", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 1 ],
									"destination" : [ "obj-22", 1 ],
									"hidden" : 0,
									"midpoints" : [ 503.5, 475.0, 432.5, 475.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 1 ],
									"destination" : [ "obj-9", 1 ],
									"hidden" : 0,
									"midpoints" : [ 118.5, 443.0, 47.5, 443.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-46", 1 ],
									"destination" : [ "obj-45", 1 ],
									"hidden" : 0,
									"midpoints" : [ 118.5, 212.0, 46.0, 212.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
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
									"source" : [ "obj-46", 0 ],
									"destination" : [ "obj-45", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-48", 0 ],
									"destination" : [ "obj-46", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-48", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-44", 0 ],
									"destination" : [ "obj-48", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-40", 0 ],
									"destination" : [ "obj-48", 0 ],
									"hidden" : 0,
									"midpoints" : [ 132.5, 122.0, 28.5, 122.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-48", 0 ],
									"hidden" : 0,
									"midpoints" : [ 114.5, 122.0, 28.5, 122.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-43", 0 ],
									"destination" : [ "obj-44", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-49", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-49", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-49", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-49", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [ 31.5, 410.0, 146.5, 410.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-52", 0 ],
									"destination" : [ "obj-50", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-50", 0 ],
									"destination" : [ "obj-39", 0 ],
									"hidden" : 0,
									"midpoints" : [ 490.5, 48.0, 537.5, 48.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 3 ],
									"destination" : [ "obj-31", 1 ],
									"hidden" : 0,
									"midpoints" : [ 528.25, 163.0, 687.5, 163.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-48", 3 ],
									"destination" : [ "obj-41", 1 ],
									"hidden" : 0,
									"midpoints" : [ 74.25, 181.0, 220.5, 181.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 3 ],
									"destination" : [ "obj-20", 1 ],
									"hidden" : 0,
									"midpoints" : [ 525.25, 439.0, 792.5, 439.0 ]
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
					"text" : "p destruction",
					"fontname" : "Verdana",
					"numinlets" : 0,
					"patching_rect" : [ 652.0, 201.380432, 83.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 0,
					"id" : "obj-7",
					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 337.0, 44.0, 508.0, 497.0 ],
						"bglocked" : 0,
						"defrect" : [ 337.0, 44.0, 508.0, 497.0 ],
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
									"maxclass" : "message",
									"text" : "A B C D E F",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 68.0, 459.0, 87.0, 18.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 1,
									"id" : "obj-21",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "A B C D E F A A",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 339.0, 303.0, 100.0, 18.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 1,
									"id" : "obj-20",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "A B C D E F",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 68.0, 296.0, 87.0, 18.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 1,
									"id" : "obj-15",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "A B C D E F",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 70.0, 108.0, 86.0, 18.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 1,
									"id" : "obj-13",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "A B C D E F",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 335.0, 132.0, 87.0, 18.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 1,
									"id" : "obj-7",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "resetseq",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 306.0, 245.0, 59.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-1",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "deletevalue A",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 283.0, 214.0, 85.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-2",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "deletevalue",
									"fontname" : "Verdana Bold",
									"numinlets" : 1,
									"patching_rect" : [ 282.0, 171.0, 120.0, 24.0 ],
									"fontsize" : 14.0,
									"numoutlets" : 0,
									"id" : "obj-3"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "syntax: deletevalue list of values",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 281.0, 194.0, 199.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-4"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "deletevalue B D E",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 370.0, 214.0, 112.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-6",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "deletes the specified values",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 394.0, 236.0, 113.0, 33.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-8"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "resetseq",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 298.0, 79.0, 59.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-9",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "delete 0",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 283.0, 51.0, 55.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-10",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "delete",
									"fontname" : "Verdana Bold",
									"numinlets" : 1,
									"patching_rect" : [ 282.0, 9.0, 76.0, 24.0 ],
									"fontsize" : 14.0,
									"numoutlets" : 0,
									"id" : "obj-11"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "syntax: delete list of indexes",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 281.0, 29.0, 172.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-12"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "delete 1 -1",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 356.0, 51.0, 72.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-14",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "resetseq",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 86.0, 51.0, 59.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-16",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "delete",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 17.0, 52.0, 44.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-17",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "delete",
									"fontname" : "Verdana Bold",
									"numinlets" : 1,
									"patching_rect" : [ 14.0, 12.0, 114.0, 24.0 ],
									"fontsize" : 14.0,
									"numoutlets" : 0,
									"id" : "obj-18"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "deletes the specified indexes",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 387.0, 69.0, 111.0, 33.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-19"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.seq @seq A B C D E F",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 17.0, 81.0, 179.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 5,
									"id" : "obj-22",
									"outlettype" : [ "", "", "", "", "" ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "resetseq",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 36.0, 241.0, 59.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-23",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "deleterange 0 3",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 16.0, 214.0, 96.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-24",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "deleterange",
									"fontname" : "Verdana Bold",
									"numinlets" : 1,
									"patching_rect" : [ 14.0, 169.0, 117.0, 24.0 ],
									"fontsize" : 14.0,
									"numoutlets" : 0,
									"id" : "obj-25"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "syntax: deleterange index1 index2",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 15.0, 191.0, 201.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-26"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "deleterange 1 -1",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 118.0, 214.0, 103.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-28",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.seq @seq A B C D E F",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 16.0, 269.0, 179.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 5,
									"id" : "obj-30",
									"outlettype" : [ "", "", "", "", "" ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "resetseq",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 34.0, 406.0, 59.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-31",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "subseq 0 3",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 16.0, 377.0, 69.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-32",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "subseq",
									"fontname" : "Verdana Bold",
									"numinlets" : 1,
									"patching_rect" : [ 13.0, 336.0, 67.0, 24.0 ],
									"fontsize" : 14.0,
									"numoutlets" : 0,
									"id" : "obj-33"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "syntax: subseq index1 index2",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 13.0, 358.0, 178.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-34"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "subseq 1 -1",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 87.0, 378.0, 76.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-36",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.seq @seq A B C D E F",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 16.0, 434.0, 179.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 5,
									"id" : "obj-38",
									"outlettype" : [ "", "", "", "", "" ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "keeps the portion of the sequence from index1 to index2 (inclusive) The opposite of deleterange.",
									"linecount" : 3,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 165.0, 387.0, 204.0, 47.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-39"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.seq @seq A B C D E F A A",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 283.0, 275.0, 202.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 5,
									"id" : "obj-40",
									"outlettype" : [ "", "", "", "", "" ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "No arguments. Clears the sequence",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 14.0, 31.0, 211.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-41"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.seq @seq A B C D E F",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 283.0, 105.0, 179.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 5,
									"id" : "obj-42",
									"outlettype" : [ "", "", "", "", "" ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-40", 0 ],
									"hidden" : 0,
									"midpoints" : [ 292.5, 240.0, 292.5, 240.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-40", 0 ],
									"hidden" : 0,
									"midpoints" : [ 379.5, 238.0, 292.5, 238.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-40", 0 ],
									"hidden" : 0,
									"midpoints" : [ 315.5, 270.0, 292.5, 270.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-42", 0 ],
									"hidden" : 0,
									"midpoints" : [ 307.5, 100.0, 292.5, 100.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-42", 0 ],
									"hidden" : 0,
									"midpoints" : [ 365.5, 74.0, 292.5, 74.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-42", 0 ],
									"hidden" : 0,
									"midpoints" : [ 292.5, 73.0, 292.5, 73.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [ 45.5, 261.0, 25.5, 261.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [ 127.5, 236.0, 25.5, 236.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [ 25.5, 240.0, 25.5, 240.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [ 26.5, 78.0, 26.5, 78.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [ 95.5, 74.0, 26.5, 74.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-38", 0 ],
									"hidden" : 0,
									"midpoints" : [ 25.5, 403.0, 25.5, 403.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 0 ],
									"destination" : [ "obj-38", 0 ],
									"hidden" : 0,
									"midpoints" : [ 96.5, 401.0, 25.5, 401.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 0 ],
									"destination" : [ "obj-38", 0 ],
									"hidden" : 0,
									"midpoints" : [ 43.5, 427.0, 25.5, 427.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-42", 3 ],
									"destination" : [ "obj-7", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 3 ],
									"destination" : [ "obj-13", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 3 ],
									"destination" : [ "obj-15", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-40", 3 ],
									"destination" : [ "obj-20", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-38", 3 ],
									"destination" : [ "obj-21", 1 ],
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
					"varname" : "ajm.seq reset messages",
					"text" : "p \"reset messages\"",
					"fontname" : "Verdana",
					"numinlets" : 0,
					"patching_rect" : [ 652.0, 276.760864, 119.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 0,
					"id" : "obj-9",
					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 473.0, 47.0, 532.0, 487.0 ],
						"bglocked" : 0,
						"defrect" : [ 473.0, 47.0, 532.0, 487.0 ],
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
									"maxclass" : "message",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 264.0, 392.0, 174.0, 18.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 1,
									"id" : "obj-10",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "\" \"",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 257.0, 154.0, 77.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-1",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess set",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"hidden" : 1,
									"patching_rect" : [ 274.0, 415.0, 81.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-3",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "step -1",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 76.0, 339.0, 51.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-4",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numinlets" : 1,
									"patching_rect" : [ 46.0, 335.0, 22.0, 22.0 ],
									"numoutlets" : 1,
									"id" : "obj-5",
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"triscale" : 0.9,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 46.0, 390.0, 37.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 2,
									"id" : "obj-6",
									"outlettype" : [ "int", "bang" ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.seq @seq 1 2 3 4 5",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 46.0, 368.0, 166.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 5,
									"id" : "obj-7",
									"outlettype" : [ "", "", "", "", "" ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "resetstep",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 130.0, 338.0, 63.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-8",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "cmode arpeggiate",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 291.0, 328.0, 112.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-9",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numinlets" : 1,
									"patching_rect" : [ 261.0, 322.0, 23.0, 23.0 ],
									"numoutlets" : 1,
									"id" : "obj-12",
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.seq @cmode list @seq [1 2] [3 4]",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 261.0, 357.0, 254.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 5,
									"id" : "obj-13",
									"outlettype" : [ "", "", "", "", "" ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "reset",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 173.0, 456.0, 40.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-14",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "reset cmode",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 411.0, 329.0, 79.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-15",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "resetindex",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 94.0, 233.0, 69.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-16",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b l",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 94.0, 210.0, 86.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 2,
									"id" : "obj-17",
									"outlettype" : [ "bang", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "1 2 3 4 5",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 147.0, 184.0, 62.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-18",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "1 2 3 4",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 94.0, 184.0, 51.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-19",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numinlets" : 1,
									"patching_rect" : [ 47.0, 225.0, 22.0, 22.0 ],
									"numoutlets" : 1,
									"id" : "obj-20",
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"triscale" : 0.9,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 47.0, 284.0, 37.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 2,
									"id" : "obj-21",
									"outlettype" : [ "int", "bang" ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"triscale" : 0.9,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 98.0, 284.0, 37.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 2,
									"id" : "obj-22",
									"outlettype" : [ "int", "bang" ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.seq @index -1 @seq 1 2 3",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 47.0, 261.0, 221.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 5,
									"id" : "obj-23",
									"outlettype" : [ "", "", "", "", "" ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "resetiter",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 331.0, 209.0, 60.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-24",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numinlets" : 1,
									"patching_rect" : [ 301.0, 205.0, 22.0, 22.0 ],
									"numoutlets" : 1,
									"id" : "obj-25",
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"triscale" : 0.9,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 301.0, 259.0, 37.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 2,
									"id" : "obj-26",
									"outlettype" : [ "int", "bang" ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"triscale" : 0.9,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 383.0, 260.0, 37.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 2,
									"id" : "obj-27",
									"outlettype" : [ "int", "bang" ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.seq @iter 100 @seq 1",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 301.0, 237.0, 183.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 5,
									"id" : "obj-28",
									"outlettype" : [ "", "", "", "", "" ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"triscale" : 0.9,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 269.0, 130.0, 37.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 2,
									"id" : "obj-29",
									"outlettype" : [ "int", "bang" ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numinlets" : 1,
									"patching_rect" : [ 245.0, 129.0, 22.0, 22.0 ],
									"numoutlets" : 1,
									"id" : "obj-30",
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numinlets" : 1,
									"patching_rect" : [ 241.0, 66.0, 22.0, 22.0 ],
									"numoutlets" : 1,
									"id" : "obj-31",
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "resetseq",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 318.0, 68.0, 59.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-32",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "1 2 3",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 269.0, 68.0, 40.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-33",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.seq",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 269.0, 98.0, 80.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 5,
									"id" : "obj-34",
									"outlettype" : [ "", "", "", "", "" ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "resetseq",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 90.0, 73.0, 59.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-35",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "4 5 6",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 41.0, 74.0, 40.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-36",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "1 2 3",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 82.0, 127.0, 81.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-37",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.seq @seq 1 2 3",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 41.0, 100.0, 156.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 5,
									"id" : "obj-39",
									"outlettype" : [ "", "", "", "", "" ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "resetattribute messages reset the attribute to its initial value \n(the value the object was constructed with or the default value)",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 33.0, 17.0, 438.0, 36.0 ],
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"id" : "obj-40"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Resets to the default (the empty sequence)",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 354.0, 88.0, 131.0, 33.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-41"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "resets all attributes.",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 212.0, 456.0, 132.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-42"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-10", 1 ],
									"hidden" : 0,
									"midpoints" : [ 270.5, 384.0, 428.5, 384.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [ 278.5, 123.0, 254.5, 123.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 3 ],
									"destination" : [ "obj-1", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-39", 3 ],
									"destination" : [ "obj-37", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 2 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [ 300.5, 350.0, 270.5, 350.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [ 420.5, 350.0, 270.5, 350.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [ 340.5, 232.0, 310.5, 232.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 0 ],
									"destination" : [ "obj-34", 0 ],
									"hidden" : 0,
									"midpoints" : [ 250.5, 93.0, 278.5, 93.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-34", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-34", 0 ],
									"hidden" : 0,
									"midpoints" : [ 327.5, 93.0, 278.5, 93.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [ 156.5, 206.0, 103.5, 206.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 1 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 1 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [ 170.5, 255.0, 56.5, 255.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [ 103.5, 255.0, 56.5, 255.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [ 85.5, 361.0, 55.5, 361.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [ 139.5, 361.0, 55.5, 361.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-39", 0 ],
									"hidden" : 0,
									"midpoints" : [ 99.5, 95.0, 50.5, 95.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 0 ],
									"destination" : [ "obj-39", 0 ],
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
					"patching_rect" : [ 652.0, 78.0, 58.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 0,
					"id" : "obj-10",
					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 289.0, 47.0, 724.0, 428.0 ],
						"bglocked" : 0,
						"defrect" : [ 289.0, 47.0, 724.0, 428.0 ],
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
									"text" : "(chords use a single index position)",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 105.0, 101.0, 223.0, 20.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 0,
									"id" : "obj-25"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "index:",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 27.0, 102.0, 45.0, 20.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 0,
									"id" : "obj-24"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 261.0, 306.0, 66.0, 18.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 1,
									"id" : "obj-17",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "60 63 65 69 72",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 153.0, 344.0, 103.0, 18.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 1,
									"id" : "obj-4",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 113.0, 160.0, 87.0, 18.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 1,
									"id" : "obj-3",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess set",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"hidden" : 1,
									"patching_rect" : [ 287.0, 134.0, 81.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-1",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "thresh",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 181.0, 138.0, 47.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-5",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"triscale" : 0.9,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 68.0, 102.0, 37.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 2,
									"id" : "obj-6",
									"outlettype" : [ "int", "bang" ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numinlets" : 1,
									"patching_rect" : [ 438.0, 107.0, 17.0, 17.0 ],
									"numoutlets" : 1,
									"id" : "obj-7",
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"triscale" : 0.9,
									"format" : 5,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 522.0, 184.0, 39.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 2,
									"id" : "obj-8",
									"outlettype" : [ "int", "bang" ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "next",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 457.0, 106.0, 36.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-9",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 0",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 457.0, 81.0, 38.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 2,
									"id" : "obj-10",
									"outlettype" : [ "bang", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "counter 1 6",
									"fontname" : "Verdana",
									"numinlets" : 5,
									"patching_rect" : [ 418.0, 58.0, 78.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 4,
									"id" : "obj-11",
									"outlettype" : [ "int", "", "", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "noteout",
									"fontname" : "Verdana",
									"numinlets" : 3,
									"patching_rect" : [ 407.0, 212.0, 51.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-12"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "makenote 80 190",
									"fontname" : "Verdana",
									"numinlets" : 3,
									"patching_rect" : [ 407.0, 180.0, 106.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 2,
									"id" : "obj-13",
									"outlettype" : [ "int", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numinlets" : 1,
									"patching_rect" : [ 407.0, 6.0, 20.0, 20.0 ],
									"numoutlets" : 1,
									"id" : "obj-14",
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "metro 200",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 407.0, 30.0, 69.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-15",
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.seq @cmode arp @step 0 @seq [C4 E4 G4] [C4 F4 A4] [D4 F4 A4] [B3 D4 F4 G4 F4 D4]",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 407.0, 134.0, 304.0, 33.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 5,
									"id" : "obj-16",
									"outlettype" : [ "", "", "", "", "" ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "metro 450",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 408.0, 284.0, 69.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-19",
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numinlets" : 1,
									"patching_rect" : [ 408.0, 260.0, 20.0, 20.0 ],
									"numoutlets" : 1,
									"id" : "obj-20",
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "noteout",
									"fontname" : "Verdana",
									"numinlets" : 3,
									"patching_rect" : [ 408.0, 397.0, 51.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-21"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "makenote 80 100",
									"fontname" : "Verdana",
									"numinlets" : 3,
									"patching_rect" : [ 408.0, 370.0, 106.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 2,
									"id" : "obj-22",
									"outlettype" : [ "int", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numinlets" : 1,
									"patching_rect" : [ 128.0, 342.0, 18.0, 18.0 ],
									"numoutlets" : 1,
									"id" : "obj-23",
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.seq @cmode list @seq [rotate 1] [rotate 2] [rotate -1] reverse",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 104.0, 260.0, 245.0, 33.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 5,
									"id" : "obj-26",
									"outlettype" : [ "", "", "", "", "" ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "noteout",
									"fontname" : "Verdana",
									"numinlets" : 3,
									"patching_rect" : [ 22.0, 385.0, 51.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-27"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "makenote 80 120",
									"fontname" : "Verdana",
									"numinlets" : 3,
									"patching_rect" : [ 22.0, 358.0, 106.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 2,
									"id" : "obj-28",
									"outlettype" : [ "int", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numinlets" : 1,
									"patching_rect" : [ 22.0, 250.0, 20.0, 20.0 ],
									"numoutlets" : 1,
									"id" : "obj-29",
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "metro 150",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 22.0, 275.0, 69.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-30",
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.seq @seq C4 Eb4 F4 A4 C5",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 22.0, 313.0, 209.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 5,
									"id" : "obj-31",
									"outlettype" : [ "", "", "", "", "" ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "@cmode list will output the chord as a list. Use this to sequence arbitrary messages to other objects",
									"linecount" : 3,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 111.0, 209.0, 256.0, 47.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-32"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "noteout",
									"fontname" : "Verdana",
									"numinlets" : 3,
									"patching_rect" : [ 11.0, 166.0, 51.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-33"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "makenote 80 300",
									"fontname" : "Verdana",
									"numinlets" : 3,
									"patching_rect" : [ 11.0, 136.0, 106.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 2,
									"id" : "obj-34",
									"outlettype" : [ "int", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numinlets" : 1,
									"patching_rect" : [ 11.0, 14.0, 20.0, 20.0 ],
									"numoutlets" : 1,
									"id" : "obj-35",
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "metro 1000",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 11.0, 38.0, 76.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-36",
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.seq @seq [C4 E4 G4] [C4 F4 A4] [D4 F4 A4] [B3 D2 F4 G4]",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 11.0, 62.0, 245.0, 33.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 5,
									"id" : "obj-37",
									"outlettype" : [ "", "", "", "", "" ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Use [square brackets] to indicate a chord.",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 93.0, 36.0, 242.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-38"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Or instead of chords, use multiple ajm.seq objects for counterpoint.",
									"linecount" : 3,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 487.0, 254.0, 162.0, 47.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-39"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.seq @seq C4 Eb4 G4 D4",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 419.0, 342.0, 194.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 5,
									"id" : "obj-40",
									"outlettype" : [ "", "", "", "", "" ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.seq @seq Eb3 C3 B2 G3",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 408.0, 312.0, 193.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 5,
									"id" : "obj-41",
									"outlettype" : [ "", "", "", "", "" ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "@cmode arp arpeggiates chords. @step 0 continues looping the chord until the message \"next\"",
									"linecount" : 3,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 509.0, 84.0, 202.0, 47.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-42"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 2 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [ 466.5, 103.0, 447.5, 103.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 1 ],
									"destination" : [ "obj-21", 1 ],
									"hidden" : 0,
									"midpoints" : [ 504.5, 392.0, 433.5, 392.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 1 ],
									"destination" : [ "obj-12", 1 ],
									"hidden" : 0,
									"midpoints" : [ 503.5, 204.0, 432.5, 204.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-40", 0 ],
									"hidden" : 0,
									"midpoints" : [ 417.5, 306.0, 606.0, 306.0, 606.0, 336.0, 428.5, 336.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [ 416.5, 54.0, 427.5, 54.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-41", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-40", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [ 428.5, 365.0, 417.5, 365.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-41", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
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
									"source" : [ "obj-31", 2 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [ 126.5, 337.0, 137.5, 337.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [ 20.5, 128.0, 190.5, 128.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"midpoints" : [ 137.5, 382.0, 350.0, 382.0, 350.0, 255.0, 113.5, 255.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 1 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 1 ],
									"destination" : [ "obj-27", 1 ],
									"hidden" : 0,
									"midpoints" : [ 118.5, 381.0, 47.5, 381.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 1 ],
									"destination" : [ "obj-33", 1 ],
									"hidden" : 0,
									"midpoints" : [ 107.5, 161.0, 36.5, 161.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [ 113.5, 300.0, 31.5, 300.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 0 ],
									"destination" : [ "obj-33", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 0 ],
									"destination" : [ "obj-34", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 0 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-36", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-3", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-17", 1 ],
									"hidden" : 0,
									"midpoints" : [ 113.5, 300.0, 317.5, 300.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 3 ],
									"destination" : [ "obj-4", 1 ],
									"hidden" : 0,
									"midpoints" : [ 174.0, 339.0, 246.5, 339.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [ 466.5, 128.0, 416.5, 128.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [ 416.5, 172.0, 531.5, 172.0 ]
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
					"text" : "p traversal",
					"fontname" : "Verdana",
					"numinlets" : 0,
					"patching_rect" : [ 652.0, 127.690216, 73.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 0,
					"id" : "obj-11",
					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 238.0, 52.0, 759.0, 392.0 ],
						"bglocked" : 0,
						"defrect" : [ 238.0, 52.0, 759.0, 392.0 ],
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
									"text" : "Direction behavior with non-default @step (default @step is 1)",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 378.0, 213.0, 363.0, 20.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 0,
									"id" : "obj-71"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "step 2",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 551.0, 349.0, 61.0, 18.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 1,
									"id" : "obj-69",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 397.0, 350.0, 29.0, 18.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 1,
									"id" : "obj-67",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 435.0, 167.0, 34.0, 18.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 1,
									"id" : "obj-65",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 220.0, 325.0, 27.0, 18.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 1,
									"id" : "obj-63",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "bang advances by @step, and then runs the \"output\" command",
									"linecount" : 3,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 616.0, 309.0, 136.0, 47.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-1"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t output s",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 17.0, 285.0, 62.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 2,
									"id" : "obj-2",
									"outlettype" : [ "output", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t output s",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 217.0, 270.0, 62.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 2,
									"id" : "obj-3",
									"outlettype" : [ "output", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t getstep s",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 437.0, 294.0, 70.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 2,
									"id" : "obj-4",
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "<= 0 is backward",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 623.0, 123.0, 117.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-7"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numinlets" : 1,
									"patching_rect" : [ 392.0, 246.0, 21.0, 21.0 ],
									"numoutlets" : 1,
									"id" : "obj-8",
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numinlets" : 1,
									"patching_rect" : [ 540.0, 244.0, 20.0, 20.0 ],
									"numoutlets" : 1,
									"id" : "obj-9",
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"triscale" : 0.9,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 442.0, 348.0, 27.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 2,
									"id" : "obj-10",
									"outlettype" : [ "int", "bang" ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"triscale" : 0.9,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 493.0, 348.0, 37.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 2,
									"id" : "obj-11",
									"outlettype" : [ "int", "bang" ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "direction",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 437.0, 270.0, 59.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-12",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "direction $1",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 540.0, 269.0, 78.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-13",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.seq @seq A B C D E @step 2",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 392.0, 325.0, 220.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 5,
									"id" : "obj-16",
									"outlettype" : [ "", "", "", "", "" ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "\"forward\" means step wil be positive",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 565.0, 235.0, 120.0, 33.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-17"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numinlets" : 1,
									"patching_rect" : [ 435.0, 100.0, 25.0, 25.0 ],
									"numoutlets" : 1,
									"id" : "obj-18",
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numinlets" : 1,
									"patching_rect" : [ 543.0, 90.0, 22.0, 22.0 ],
									"numoutlets" : 1,
									"id" : "obj-19",
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess set",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"hidden" : 1,
									"patching_rect" : [ 269.0, 204.0, 81.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-20",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"triscale" : 0.9,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 473.0, 166.0, 27.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 2,
									"id" : "obj-21",
									"outlettype" : [ "int", "bang" ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"triscale" : 0.9,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 511.0, 166.0, 37.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 2,
									"id" : "obj-22",
									"outlettype" : [ "int", "bang" ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "direction",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 471.0, 115.0, 59.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-23",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "direction $1",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 543.0, 116.0, 78.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-24",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.seq @seq A B C D E",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 435.0, 143.0, 171.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 5,
									"id" : "obj-27",
									"outlettype" : [ "", "", "", "", "" ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend index",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 89.0, 91.0, 88.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-28",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"triscale" : 0.9,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"minimum" : -5,
									"patching_rect" : [ 89.0, 60.0, 37.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 2,
									"maximum" : 4,
									"id" : "obj-29",
									"outlettype" : [ "int", "bang" ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "index 4",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 28.0, 150.0, 51.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-30",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "index 3",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 29.0, 127.0, 51.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-31",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "index 2",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 28.0, 102.0, 51.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-32",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t output s",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 18.0, 178.0, 62.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 2,
									"id" : "obj-33",
									"outlettype" : [ "output", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "index 1",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 28.0, 78.0, 51.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-34",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 20.0, 233.0, 31.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-35",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"triscale" : 0.9,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 56.0, 231.0, 37.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 2,
									"id" : "obj-36",
									"outlettype" : [ "int", "bang" ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "index 0",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 27.0, 55.0, 51.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-38",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.seq @seq A B C D E",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 18.0, 207.0, 169.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 5,
									"id" : "obj-39",
									"outlettype" : [ "", "", "", "", "" ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "advance -1",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 294.0, 90.0, 72.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-40",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"triscale" : 0.9,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 249.0, 323.0, 27.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 2,
									"id" : "obj-41",
									"outlettype" : [ "int", "bang" ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"triscale" : 0.9,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 281.0, 323.0, 37.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 2,
									"id" : "obj-42",
									"outlettype" : [ "int", "bang" ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"triscale" : 0.9,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 285.0, 148.0, 37.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 2,
									"id" : "obj-43",
									"outlettype" : [ "int", "bang" ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t output s",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 210.0, 92.0, 62.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 2,
									"id" : "obj-44",
									"outlettype" : [ "output", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "advance 2",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 284.0, 62.0, 65.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-45",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 216.0, 149.0, 27.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-46",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"triscale" : 0.9,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 248.0, 148.0, 28.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 2,
									"id" : "obj-47",
									"outlettype" : [ "int", "bang" ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "advance 1",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 210.0, 62.0, 65.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-49",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.seq @seq A B C D E",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 210.0, 124.0, 169.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 5,
									"id" : "obj-50",
									"outlettype" : [ "", "", "", "", "" ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "prev",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 261.0, 242.0, 36.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-51",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "next",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 217.0, 243.0, 36.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-52",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "is used to force output, because these commands change the current index without outputting anything.",
									"linecount" : 4,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 15.0, 305.0, 174.0, 60.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-53"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.seq @seq A B C",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 217.0, 299.0, 146.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 5,
									"id" : "obj-56",
									"outlettype" : [ "", "", "", "", "" ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "switch:",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 471.0, 96.0, 61.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-57"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "> 0 is forward",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 623.0, 108.0, 98.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-58"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Direction multiplies the step by 1 or -1",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 416.0, 236.0, 119.0, 33.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-59"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Messages that control stepping through the sequence.",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 23.0, 11.0, 418.0, 24.0 ],
									"fontsize" : 14.0,
									"numoutlets" : 0,
									"id" : "obj-60"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-16", 4 ],
									"destination" : [ "obj-69", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-67", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-67", 1 ],
									"hidden" : 0,
									"midpoints" : [ 401.5, 347.0, 416.5, 347.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-65", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 1 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [ 497.5, 318.0, 401.5, 318.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [ 446.5, 318.0, 401.5, 318.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 1 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 2 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [ 552.5, 139.0, 444.5, 139.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [ 480.5, 139.0, 444.5, 139.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 1 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 2 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-65", 1 ],
									"hidden" : 0,
									"midpoints" : [ 444.5, 165.0, 459.5, 165.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-40", 0 ],
									"destination" : [ "obj-44", 0 ],
									"hidden" : 0,
									"midpoints" : [ 303.5, 112.0, 289.0, 112.0, 289.0, 84.0, 219.5, 84.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-50", 0 ],
									"destination" : [ "obj-46", 1 ],
									"hidden" : 0,
									"midpoints" : [ 219.5, 147.0, 233.5, 147.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-63", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-56", 0 ],
									"destination" : [ "obj-63", 1 ],
									"hidden" : 0,
									"midpoints" : [ 226.5, 322.0, 237.5, 322.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-39", 0 ],
									"destination" : [ "obj-35", 1 ],
									"hidden" : 0,
									"midpoints" : [ 27.5, 231.0, 41.5, 231.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [ 549.5, 289.0, 446.5, 289.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-56", 2 ],
									"destination" : [ "obj-42", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-50", 2 ],
									"destination" : [ "obj-43", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-56", 1 ],
									"destination" : [ "obj-41", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-50", 1 ],
									"destination" : [ "obj-47", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 1 ],
									"destination" : [ "obj-56", 0 ],
									"hidden" : 0,
									"midpoints" : [ 269.5, 293.0, 226.5, 293.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-56", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [ 270.5, 264.0, 226.5, 264.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-52", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-46", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-44", 1 ],
									"destination" : [ "obj-50", 0 ],
									"hidden" : 0,
									"midpoints" : [ 262.5, 117.0, 219.5, 117.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-44", 0 ],
									"destination" : [ "obj-50", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-49", 0 ],
									"destination" : [ "obj-44", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-45", 0 ],
									"destination" : [ "obj-44", 0 ],
									"hidden" : 0,
									"midpoints" : [ 293.5, 84.0, 219.5, 84.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-39", 1 ],
									"destination" : [ "obj-36", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-39", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 1 ],
									"destination" : [ "obj-39", 0 ],
									"hidden" : 0,
									"midpoints" : [ 70.5, 201.0, 27.5, 201.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 0 ],
									"destination" : [ "obj-33", 0 ],
									"hidden" : 0,
									"midpoints" : [ 37.5, 98.0, 27.5, 98.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-38", 0 ],
									"destination" : [ "obj-33", 0 ],
									"hidden" : 0,
									"midpoints" : [ 36.5, 74.0, 27.5, 74.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-33", 0 ],
									"hidden" : 0,
									"midpoints" : [ 37.5, 122.0, 27.5, 122.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 0 ],
									"destination" : [ "obj-33", 0 ],
									"hidden" : 0,
									"midpoints" : [ 38.5, 146.0, 27.5, 146.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-33", 0 ],
									"hidden" : 0,
									"midpoints" : [ 37.5, 171.0, 27.5, 171.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-33", 0 ],
									"hidden" : 0,
									"midpoints" : [ 98.5, 171.0, 27.5, 171.0 ]
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
					"text" : "p transformation",
					"fontname" : "Verdana",
					"numinlets" : 0,
					"patching_rect" : [ 652.0, 176.141312, 103.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 0,
					"id" : "obj-12",
					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 18.0, 44.0, 842.0, 641.0 ],
						"bglocked" : 0,
						"defrect" : [ 18.0, 44.0, 842.0, 641.0 ],
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
									"maxclass" : "panel",
									"numinlets" : 1,
									"patching_rect" : [ 532.0, 456.0, 299.0, 174.0 ],
									"numoutlets" : 0,
									"border" : 2,
									"rounded" : 16,
									"id" : "obj-129",
									"bgcolor" : [ 0.666667, 0.666667, 0.666667, 0.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numinlets" : 1,
									"patching_rect" : [ 532.0, 317.0, 299.0, 141.0 ],
									"numoutlets" : 0,
									"border" : 2,
									"rounded" : 16,
									"id" : "obj-128",
									"bgcolor" : [ 0.666667, 0.666667, 0.666667, 0.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numinlets" : 1,
									"patching_rect" : [ 532.0, 162.0, 299.0, 157.0 ],
									"numoutlets" : 0,
									"border" : 2,
									"rounded" : 16,
									"id" : "obj-127",
									"bgcolor" : [ 0.666667, 0.666667, 0.666667, 0.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "A B C D E",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 572.0, 598.0, 117.0, 18.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 1,
									"id" : "obj-126",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "3 1 4 0 2",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 604.0, 420.0, 95.0, 18.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 1,
									"id" : "obj-125",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0 1 2 3 4",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 572.0, 287.0, 113.0, 18.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 1,
									"id" : "obj-123",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "A B C D E",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 561.0, 135.0, 113.0, 18.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 1,
									"id" : "obj-121",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numinlets" : 1,
									"patching_rect" : [ 299.0, 456.0, 235.0, 174.0 ],
									"numoutlets" : 0,
									"border" : 2,
									"rounded" : 16,
									"id" : "obj-119",
									"bgcolor" : [ 0.666667, 0.666667, 0.666667, 0.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numinlets" : 1,
									"patching_rect" : [ 299.0, 317.0, 235.0, 141.0 ],
									"numoutlets" : 0,
									"border" : 2,
									"rounded" : 16,
									"id" : "obj-118",
									"bgcolor" : [ 0.666667, 0.666667, 0.666667, 0.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numinlets" : 1,
									"patching_rect" : [ 299.0, 162.0, 235.0, 157.0 ],
									"numoutlets" : 0,
									"border" : 2,
									"rounded" : 16,
									"id" : "obj-117",
									"bgcolor" : [ 0.666667, 0.666667, 0.666667, 0.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numinlets" : 1,
									"patching_rect" : [ 299.0, 7.0, 235.0, 157.0 ],
									"numoutlets" : 0,
									"border" : 2,
									"rounded" : 16,
									"id" : "obj-116",
									"bgcolor" : [ 0.666667, 0.666667, 0.666667, 0.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "invert C5",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 153.0, 367.0, 61.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-114",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "84 82 80 79 77",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 60.0, 422.0, 116.0, 18.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 1,
									"id" : "obj-103",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "resetseq",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 222.0, 366.0, 60.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-104",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "invert C4",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 86.0, 367.0, 60.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-106",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "invert",
									"fontname" : "Verdana Bold",
									"numinlets" : 1,
									"patching_rect" : [ 17.0, 325.0, 124.0, 24.0 ],
									"fontsize" : 14.0,
									"numoutlets" : 0,
									"id" : "obj-107"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "syntax: invert center_value",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 16.0, 345.0, 172.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-108"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "invert 60",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 17.0, 367.0, 60.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-109",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.seq @seq C4 D4 E4 F4 G4",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 17.0, 397.0, 206.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 5,
									"id" : "obj-110",
									"outlettype" : [ "", "", "", "", "" ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "1 2 3 A 4 5",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 45.0, 291.0, 116.0, 18.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 1,
									"id" : "obj-93",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "resetseq",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 43.0, 238.0, 60.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-94",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "subtractfrom 100 0 50",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 116.0, 238.0, 135.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-95",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "subtractfrom -1",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 136.0, 210.0, 98.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-96",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "subtractfrom",
									"fontname" : "Verdana Bold",
									"numinlets" : 1,
									"patching_rect" : [ 19.0, 168.0, 125.0, 24.0 ],
									"fontsize" : 14.0,
									"numoutlets" : 0,
									"id" : "obj-97"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "syntax: subtract list",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 19.0, 188.0, 132.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-98"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "subtractfrom 10",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 23.0, 210.0, 100.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-99",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.seq @seq 1 2 3 A 4 5",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 23.0, 265.0, 177.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 5,
									"id" : "obj-100",
									"outlettype" : [ "", "", "", "", "" ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "1 2 3 A 4 5",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 44.0, 603.0, 116.0, 18.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 1,
									"id" : "obj-92",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "6 2 13 A 4 15",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 41.0, 135.0, 116.0, 18.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 1,
									"id" : "obj-91",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "A B C D E",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 354.0, 592.0, 112.0, 18.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 1,
									"id" : "obj-89",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0 1 2 3 4",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 354.0, 417.0, 94.0, 18.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 1,
									"id" : "obj-88",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0 1 2 3 4",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 342.0, 270.0, 94.0, 18.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 1,
									"id" : "obj-86",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0 1 2 3 4",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 352.0, 139.0, 94.0, 18.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 1,
									"id" : "obj-85",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "resetseq",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 53.0, 544.0, 60.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-63",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "multiply 1 0 2",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 125.0, 548.0, 90.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-64",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "multiply 0.5",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 93.0, 512.0, 79.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-65",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "multiply",
									"fontname" : "Verdana Bold",
									"numinlets" : 1,
									"patching_rect" : [ 24.0, 464.0, 76.0, 24.0 ],
									"fontsize" : 14.0,
									"numoutlets" : 0,
									"id" : "obj-66"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "syntax: multiply list",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 24.0, 488.0, 126.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-67"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "multiply 2",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 22.0, 513.0, 68.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-69",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.seq @seq 1 2 3 A 4 5",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 22.0, 576.0, 177.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 5,
									"id" : "obj-71",
									"outlettype" : [ "", "", "", "", "" ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "The argument list is looped against the seq and multiplied with each value.",
									"linecount" : 4,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 174.0, 490.0, 126.0, 60.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-72"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "resetseq",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 40.0, 82.0, 60.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-73",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "add 1 0 2",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 119.0, 82.0, 61.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-74",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "add -1",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 63.0, 54.0, 48.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-75",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "add",
									"fontname" : "Verdana Bold",
									"numinlets" : 1,
									"patching_rect" : [ 17.0, 14.0, 66.0, 24.0 ],
									"fontsize" : 14.0,
									"numoutlets" : 0,
									"id" : "obj-76"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "syntax: add list",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 17.0, 33.0, 105.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-77"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "add 1",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 20.0, 54.0, 40.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-79",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.seq @seq 1 2 3 A 4 5",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 19.0, 109.0, 177.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 5,
									"id" : "obj-81",
									"outlettype" : [ "", "", "", "", "" ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "The argument list is looped against the seq and added to each value.",
									"linecount" : 3,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 151.0, 33.0, 152.0, 47.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-82"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "If a value in the seq is not a number, it will not change.",
									"linecount" : 4,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 198.0, 92.0, 100.0, 60.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-83"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "replacerange -3 -1 x y",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 676.0, 519.0, 140.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-1",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "resetseq",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 584.0, 547.0, 60.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-2",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "replacerange 0 1 a",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 557.0, 520.0, 115.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-4",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "replace 1 b b",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 405.0, 517.0, 81.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-6",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "resetseq",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 419.0, 540.0, 60.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-7",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "syntax: replace index1 index2 list",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 558.0, 500.0, 219.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-8"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "replacerange",
									"fontname" : "Verdana Bold",
									"numinlets" : 1,
									"patching_rect" : [ 558.0, 480.0, 135.0, 24.0 ],
									"fontsize" : 14.0,
									"numoutlets" : 0,
									"id" : "obj-9"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "replace 0 a",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 320.0, 517.0, 73.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-11",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "replace",
									"fontname" : "Verdana Bold",
									"numinlets" : 1,
									"patching_rect" : [ 322.0, 476.0, 79.0, 24.0 ],
									"fontsize" : 14.0,
									"numoutlets" : 0,
									"id" : "obj-13"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "syntax: replace index list",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 320.0, 496.0, 181.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-14"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.seq @seq A B C D E",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 320.0, 565.0, 188.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 5,
									"id" : "obj-15",
									"outlettype" : [ "", "", "", "", "" ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "no arguments, sorts the whole seq",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 568.0, 352.0, 220.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-16"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "sort",
									"fontname" : "Verdana Bold",
									"numinlets" : 1,
									"patching_rect" : [ 568.0, 332.0, 87.0, 24.0 ],
									"fontsize" : 14.0,
									"numoutlets" : 0,
									"id" : "obj-17"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "syntax: reverserange index1 index2",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 556.0, 192.0, 218.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-18"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "reverserange",
									"fontname" : "Verdana Bold",
									"numinlets" : 1,
									"patching_rect" : [ 556.0, 172.0, 139.0, 24.0 ],
									"fontsize" : 14.0,
									"numoutlets" : 0,
									"id" : "obj-19"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "resetseq",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 572.0, 238.0, 60.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-20",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "syntax: rotate new_first_index",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 319.0, 32.0, 213.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-21"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "rotate",
									"fontname" : "Verdana Bold",
									"numinlets" : 1,
									"patching_rect" : [ 319.0, 13.0, 67.0, 24.0 ],
									"fontsize" : 14.0,
									"numoutlets" : 0,
									"id" : "obj-22"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "syntax: length n [list]",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 540.0, 34.0, 213.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-23"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "length",
									"fontname" : "Verdana Bold",
									"numinlets" : 1,
									"patching_rect" : [ 541.0, 13.0, 67.0, 24.0 ],
									"fontsize" : 14.0,
									"numoutlets" : 0,
									"id" : "obj-24"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "no arguments, reverses the whole seq",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 307.0, 201.0, 223.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-25"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "reverse",
									"fontname" : "Verdana Bold",
									"numinlets" : 1,
									"patching_rect" : [ 307.0, 180.0, 89.0, 24.0 ],
									"fontsize" : 14.0,
									"numoutlets" : 0,
									"id" : "obj-26"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "resetseq",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 611.0, 370.0, 60.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-27",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "sort",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 570.0, 370.0, 35.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-29",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.seq @seq 3 1 4 0 2",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 570.0, 394.0, 166.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 5,
									"id" : "obj-31",
									"outlettype" : [ "", "", "", "", "" ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "reverserange 1 -1",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 680.0, 212.0, 114.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-32",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "swap 1 -1",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 319.0, 367.0, 68.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-34",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "reverserange 1 2",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 556.0, 213.0, 108.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-37",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.seq @seq 0 1 2 3 4",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 556.0, 262.0, 166.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 5,
									"id" : "obj-39",
									"outlettype" : [ "", "", "", "", "" ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "reverse",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 307.0, 221.0, 56.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-41",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.seq @seq 0 1 2 3 4",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 307.0, 242.0, 166.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 5,
									"id" : "obj-43",
									"outlettype" : [ "", "", "", "", "" ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "length 10 X Y Z",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 610.0, 79.0, 102.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-45",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "length 7 W",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 609.0, 52.0, 81.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-46",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "length 3",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 539.0, 51.0, 54.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-48",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "length 5",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 552.0, 79.0, 54.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-49",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "rotate 6",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 396.0, 52.0, 57.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-51",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "rotate -1",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 403.0, 83.0, 64.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-52",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "rotate 2",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 335.0, 82.0, 57.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-53",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "rotate 1",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 329.0, 53.0, 57.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-54",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.seq @seq 0 1 2 3 4",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 317.0, 112.0, 166.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 5,
									"id" : "obj-56",
									"outlettype" : [ "", "", "", "", "" ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.seq @seq A B C D E",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 539.0, 108.0, 174.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 5,
									"id" : "obj-57",
									"outlettype" : [ "", "", "", "", "" ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "swap",
									"fontname" : "Verdana Bold",
									"numinlets" : 1,
									"patching_rect" : [ 320.0, 324.0, 69.0, 24.0 ],
									"fontsize" : 14.0,
									"numoutlets" : 0,
									"id" : "obj-58"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "syntax: swap index1 index2",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 318.0, 346.0, 182.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-59"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "If the new length is larger then the current length, the list argument(s) will be looped to reach the desired length. The list argument defaults to 0",
									"linecount" : 8,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 718.0, 15.0, 124.0, 113.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-60"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.seq @seq 0 1 2 3 4",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 319.0, 388.0, 166.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 5,
									"id" : "obj-61",
									"outlettype" : [ "", "", "", "", "" ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.seq @seq A B C D E",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 557.0, 573.0, 169.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 5,
									"id" : "obj-62",
									"outlettype" : [ "", "", "", "", "" ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numinlets" : 1,
									"patching_rect" : [ 11.0, 317.0, 290.0, 141.0 ],
									"numoutlets" : 0,
									"border" : 2,
									"rounded" : 16,
									"id" : "obj-113",
									"bgcolor" : [ 0.666667, 0.666667, 0.666667, 0.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numinlets" : 1,
									"patching_rect" : [ 11.0, 162.0, 290.0, 157.0 ],
									"numoutlets" : 0,
									"border" : 2,
									"rounded" : 16,
									"id" : "obj-112",
									"bgcolor" : [ 0.666667, 0.666667, 0.666667, 0.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numinlets" : 1,
									"patching_rect" : [ 11.0, 7.0, 290.0, 157.0 ],
									"numoutlets" : 0,
									"border" : 2,
									"rounded" : 16,
									"id" : "obj-111",
									"bgcolor" : [ 0.666667, 0.666667, 0.666667, 0.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numinlets" : 1,
									"patching_rect" : [ 11.0, 456.0, 290.0, 174.0 ],
									"numoutlets" : 0,
									"border" : 2,
									"rounded" : 16,
									"id" : "obj-115",
									"bgcolor" : [ 0.666667, 0.666667, 0.666667, 0.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numinlets" : 1,
									"patching_rect" : [ 532.0, 7.0, 299.0, 157.0 ],
									"numoutlets" : 0,
									"border" : 2,
									"rounded" : 16,
									"id" : "obj-122",
									"bgcolor" : [ 0.666667, 0.666667, 0.666667, 0.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-62", 3 ],
									"destination" : [ "obj-126", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 3 ],
									"destination" : [ "obj-125", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-39", 3 ],
									"destination" : [ "obj-123", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-57", 3 ],
									"destination" : [ "obj-121", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-109", 0 ],
									"destination" : [ "obj-110", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-114", 0 ],
									"destination" : [ "obj-110", 0 ],
									"hidden" : 0,
									"midpoints" : [ 162.5, 391.0, 26.5, 391.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-106", 0 ],
									"destination" : [ "obj-110", 0 ],
									"hidden" : 0,
									"midpoints" : [ 95.5, 391.0, 26.5, 391.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-104", 0 ],
									"destination" : [ "obj-110", 0 ],
									"hidden" : 0,
									"midpoints" : [ 231.5, 391.0, 26.5, 391.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-110", 3 ],
									"destination" : [ "obj-103", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-96", 0 ],
									"destination" : [ "obj-100", 0 ],
									"hidden" : 0,
									"midpoints" : [ 145.5, 232.0, 32.5, 232.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-99", 0 ],
									"destination" : [ "obj-100", 0 ],
									"hidden" : 0,
									"midpoints" : [ 32.5, 233.0, 32.5, 233.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-95", 0 ],
									"destination" : [ "obj-100", 0 ],
									"hidden" : 0,
									"midpoints" : [ 125.5, 260.0, 32.5, 260.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-94", 0 ],
									"destination" : [ "obj-100", 0 ],
									"hidden" : 0,
									"midpoints" : [ 52.5, 260.0, 32.5, 260.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-100", 3 ],
									"destination" : [ "obj-93", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-71", 3 ],
									"destination" : [ "obj-92", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-81", 3 ],
									"destination" : [ "obj-91", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 3 ],
									"destination" : [ "obj-89", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-61", 3 ],
									"destination" : [ "obj-88", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-43", 3 ],
									"destination" : [ "obj-86", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-56", 3 ],
									"destination" : [ "obj-85", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-73", 0 ],
									"destination" : [ "obj-81", 0 ],
									"hidden" : 0,
									"midpoints" : [ 49.5, 104.0, 28.5, 104.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-74", 0 ],
									"destination" : [ "obj-81", 0 ],
									"hidden" : 0,
									"midpoints" : [ 128.5, 104.0, 28.5, 104.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-79", 0 ],
									"destination" : [ "obj-81", 0 ],
									"hidden" : 0,
									"midpoints" : [ 29.5, 77.0, 28.5, 77.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-75", 0 ],
									"destination" : [ "obj-81", 0 ],
									"hidden" : 0,
									"midpoints" : [ 72.5, 76.0, 28.5, 76.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-65", 0 ],
									"destination" : [ "obj-71", 0 ],
									"hidden" : 0,
									"midpoints" : [ 102.5, 535.0, 31.5, 535.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-69", 0 ],
									"destination" : [ "obj-71", 0 ],
									"hidden" : 0,
									"midpoints" : [ 31.5, 536.0, 31.5, 536.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-64", 0 ],
									"destination" : [ "obj-71", 0 ],
									"hidden" : 0,
									"midpoints" : [ 134.5, 571.0, 31.5, 571.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-63", 0 ],
									"destination" : [ "obj-71", 0 ],
									"hidden" : 0,
									"midpoints" : [ 62.5, 571.0, 31.5, 571.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-62", 0 ],
									"hidden" : 0,
									"midpoints" : [ 593.5, 568.0, 566.5, 568.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-62", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-62", 0 ],
									"hidden" : 0,
									"midpoints" : [ 685.5, 543.0, 566.5, 543.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [ 620.5, 390.0, 579.5, 390.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-39", 0 ],
									"hidden" : 0,
									"midpoints" : [ 581.5, 258.0, 565.5, 258.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 0 ],
									"destination" : [ "obj-39", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-39", 0 ],
									"hidden" : 0,
									"midpoints" : [ 689.5, 234.0, 565.5, 234.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-46", 0 ],
									"destination" : [ "obj-57", 0 ],
									"hidden" : 0,
									"midpoints" : [ 618.5, 72.0, 548.5, 72.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-49", 0 ],
									"destination" : [ "obj-57", 0 ],
									"hidden" : 0,
									"midpoints" : [ 561.5, 103.0, 548.5, 103.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-48", 0 ],
									"destination" : [ "obj-57", 0 ],
									"hidden" : 0,
									"midpoints" : [ 548.5, 69.0, 548.5, 69.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-45", 0 ],
									"destination" : [ "obj-57", 0 ],
									"hidden" : 0,
									"midpoints" : [ 619.5, 103.0, 548.5, 103.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [ 428.5, 560.0, 329.5, 560.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [ 414.5, 540.0, 329.5, 540.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 0 ],
									"destination" : [ "obj-61", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-41", 0 ],
									"destination" : [ "obj-43", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-52", 0 ],
									"destination" : [ "obj-56", 0 ],
									"hidden" : 0,
									"midpoints" : [ 412.5, 107.0, 326.5, 107.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-53", 0 ],
									"destination" : [ "obj-56", 0 ],
									"hidden" : 0,
									"midpoints" : [ 344.5, 107.0, 326.5, 107.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 0 ],
									"destination" : [ "obj-56", 0 ],
									"hidden" : 0,
									"midpoints" : [ 405.5, 75.0, 326.5, 75.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-54", 0 ],
									"destination" : [ "obj-56", 0 ],
									"hidden" : 0,
									"midpoints" : [ 338.5, 75.0, 326.5, 75.0 ]
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
					"text" : "p attributes",
					"fontname" : "Verdana",
					"numinlets" : 0,
					"patching_rect" : [ 652.0, 251.309784, 76.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 0,
					"id" : "obj-13",
					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 226.0, 47.0, 757.0, 587.0 ],
						"bglocked" : 0,
						"defrect" : [ 226.0, 47.0, 757.0, 587.0 ],
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
									"maxclass" : "message",
									"text" : "\" \"",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 414.0, 57.0, 55.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-1",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "<-- ajm.seq would interpret this as a chord",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 504.0, 545.0, 239.0, 33.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-3"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "the index doesn't increase until the chord is done outputting",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 560.0, 452.0, 186.0, 33.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-4"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"triscale" : 0.9,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 522.0, 453.0, 37.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 2,
									"id" : "obj-5",
									"outlettype" : [ "int", "bang" ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"triscale" : 0.9,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 635.0, 172.0, 37.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 2,
									"id" : "obj-6",
									"outlettype" : [ "int", "bang" ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"triscale" : 0.9,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 422.0, 170.0, 37.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 2,
									"id" : "obj-7",
									"outlettype" : [ "int", "bang" ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"triscale" : 0.9,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 542.0, 171.0, 37.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 2,
									"id" : "obj-8",
									"outlettype" : [ "int", "bang" ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"triscale" : 0.9,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 589.0, 172.0, 37.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 2,
									"id" : "obj-9",
									"outlettype" : [ "int", "bang" ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.seq @index -1 @seq 1 2 3",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 542.0, 148.0, 205.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 5,
									"id" : "obj-10",
									"outlettype" : [ "", "", "", "", "" ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numinlets" : 1,
									"patching_rect" : [ 416.0, 210.0, 21.0, 21.0 ],
									"numoutlets" : 1,
									"id" : "obj-11",
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "@cmode",
									"fontname" : "Verdana Bold",
									"numinlets" : 1,
									"patching_rect" : [ 12.0, 395.0, 74.0, 24.0 ],
									"fontsize" : 14.0,
									"numoutlets" : 0,
									"id" : "obj-12"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "@step",
									"fontname" : "Verdana Bold",
									"numinlets" : 1,
									"patching_rect" : [ 12.0, 292.0, 64.0, 24.0 ],
									"fontsize" : 14.0,
									"numoutlets" : 0,
									"id" : "obj-13"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "@iter",
									"fontname" : "Verdana Bold",
									"numinlets" : 1,
									"patching_rect" : [ 11.0, 215.0, 63.0, 24.0 ],
									"fontsize" : 14.0,
									"numoutlets" : 0,
									"id" : "obj-14"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "@seq",
									"fontname" : "Verdana Bold",
									"numinlets" : 1,
									"patching_rect" : [ 13.0, 14.0, 63.0, 24.0 ],
									"fontsize" : 14.0,
									"numoutlets" : 0,
									"id" : "obj-15"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "the initial index. determines which value to be output on the first bang",
									"linecount" : 4,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 11.0, 129.0, 117.0, 60.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-16"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numinlets" : 1,
									"patching_rect" : [ 331.0, 295.0, 21.0, 21.0 ],
									"numoutlets" : 1,
									"id" : "obj-17",
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess set",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"hidden" : 1,
									"patching_rect" : [ 99.0, 505.0, 81.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-18",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 195.0, 545.0, 37.0, 18.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 1,
									"id" : "obj-19",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 465.0, 545.0, 40.0, 18.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 1,
									"id" : "obj-21",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numinlets" : 1,
									"patching_rect" : [ 462.0, 492.0, 21.0, 21.0 ],
									"numoutlets" : 1,
									"id" : "obj-23",
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.seq @cmode symbol @seq [1 2] [3 4]",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 462.0, 516.0, 270.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 5,
									"id" : "obj-24",
									"outlettype" : [ "", "", "", "", "" ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numinlets" : 1,
									"patching_rect" : [ 192.0, 490.0, 21.0, 21.0 ],
									"numoutlets" : 1,
									"id" : "obj-25",
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.seq @cmode list @seq [1 2] [3 4]",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 192.0, 515.0, 246.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 5,
									"id" : "obj-26",
									"outlettype" : [ "", "", "", "", "" ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print arp",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 463.0, 452.0, 56.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-27"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "arp is shorthand for arpeggiate",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 502.0, 412.0, 189.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-28"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numinlets" : 1,
									"patching_rect" : [ 463.0, 405.0, 21.0, 21.0 ],
									"numoutlets" : 1,
									"id" : "obj-29",
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.seq @cmode arp @seq [1 2] [3 4]",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 463.0, 430.0, 253.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 5,
									"id" : "obj-30",
									"outlettype" : [ "", "", "", "", "" ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print chord",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 190.0, 444.0, 72.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-31"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "the default mode is chord",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 222.0, 402.0, 150.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-32"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numinlets" : 1,
									"patching_rect" : [ 190.0, 395.0, 21.0, 21.0 ],
									"numoutlets" : 1,
									"id" : "obj-33",
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.seq @seq [1 2] [3 4]",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 190.0, 420.0, 175.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 5,
									"id" : "obj-34",
									"outlettype" : [ "", "", "", "", "" ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"triscale" : 0.9,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 633.0, 354.0, 37.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 2,
									"id" : "obj-35",
									"outlettype" : [ "int", "bang" ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"triscale" : 0.9,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 331.0, 358.0, 37.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 2,
									"id" : "obj-36",
									"outlettype" : [ "int", "bang" ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.seq @step 2 @seq 1 2 3 4 5",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 331.0, 320.0, 132.0, 33.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 5,
									"id" : "obj-37",
									"outlettype" : [ "", "", "", "", "" ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"triscale" : 0.9,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 157.0, 356.0, 37.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 2,
									"id" : "obj-38",
									"outlettype" : [ "int", "bang" ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numinlets" : 1,
									"patching_rect" : [ 157.0, 293.0, 21.0, 21.0 ],
									"numoutlets" : 1,
									"id" : "obj-39",
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.seq @step -1 @seq 1 2 3 4 5",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 157.0, 318.0, 138.0, 33.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 5,
									"id" : "obj-40",
									"outlettype" : [ "", "", "", "", "" ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numinlets" : 1,
									"patching_rect" : [ 611.0, 353.0, 21.0, 21.0 ],
									"numoutlets" : 1,
									"id" : "obj-41",
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numinlets" : 1,
									"patching_rect" : [ 560.0, 351.0, 21.0, 21.0 ],
									"numoutlets" : 1,
									"id" : "obj-42",
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numinlets" : 1,
									"patching_rect" : [ 509.0, 351.0, 21.0, 21.0 ],
									"numoutlets" : 1,
									"id" : "obj-43",
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "the default is 0",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 224.0, 219.0, 99.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-44"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numinlets" : 1,
									"patching_rect" : [ 385.0, 51.0, 21.0, 21.0 ],
									"numoutlets" : 1,
									"id" : "obj-45",
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numinlets" : 1,
									"patching_rect" : [ 359.0, 51.0, 21.0, 21.0 ],
									"numoutlets" : 1,
									"id" : "obj-46",
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numinlets" : 1,
									"patching_rect" : [ 333.0, 51.0, 21.0, 21.0 ],
									"numoutlets" : 1,
									"id" : "obj-47",
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numinlets" : 1,
									"patching_rect" : [ 333.0, 4.0, 21.0, 21.0 ],
									"numoutlets" : 1,
									"id" : "obj-48",
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.seq",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 333.0, 28.0, 122.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 5,
									"id" : "obj-49",
									"outlettype" : [ "", "", "", "", "" ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"triscale" : 0.9,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 416.0, 256.0, 37.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 2,
									"id" : "obj-50",
									"outlettype" : [ "int", "bang" ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"triscale" : 0.9,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 190.0, 257.0, 37.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 2,
									"id" : "obj-51",
									"outlettype" : [ "int", "bang" ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"triscale" : 0.9,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 331.0, 169.0, 37.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 2,
									"id" : "obj-52",
									"outlettype" : [ "int", "bang" ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"triscale" : 0.9,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 140.0, 170.0, 34.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 2,
									"id" : "obj-53",
									"outlettype" : [ "int", "bang" ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"triscale" : 0.9,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 530.0, 352.0, 28.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 2,
									"id" : "obj-54",
									"outlettype" : [ "int", "bang" ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"triscale" : 0.9,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 165.0, 61.0, 37.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 2,
									"id" : "obj-55",
									"outlettype" : [ "int", "bang" ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"triscale" : 0.9,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 247.0, 257.0, 37.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 2,
									"id" : "obj-56",
									"outlettype" : [ "int", "bang" ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"triscale" : 0.9,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 179.0, 171.0, 37.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 2,
									"id" : "obj-57",
									"outlettype" : [ "int", "bang" ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"triscale" : 0.9,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 376.0, 169.0, 37.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 2,
									"id" : "obj-58",
									"outlettype" : [ "int", "bang" ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numinlets" : 1,
									"patching_rect" : [ 190.0, 209.0, 21.0, 21.0 ],
									"numoutlets" : 1,
									"id" : "obj-59",
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"triscale" : 0.9,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 504.0, 257.0, 37.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 2,
									"id" : "obj-60",
									"outlettype" : [ "int", "bang" ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "@index",
									"fontname" : "Verdana Bold",
									"numinlets" : 1,
									"patching_rect" : [ 11.0, 105.0, 65.0, 24.0 ],
									"fontsize" : 14.0,
									"numoutlets" : 0,
									"id" : "obj-61"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "prev",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 590.0, 296.0, 38.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-62",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "next",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 549.0, 296.0, 36.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-63",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numinlets" : 1,
									"patching_rect" : [ 140.0, 99.0, 21.0, 21.0 ],
									"numoutlets" : 1,
									"id" : "obj-64",
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numinlets" : 1,
									"patching_rect" : [ 509.0, 293.0, 21.0, 21.0 ],
									"numoutlets" : 1,
									"id" : "obj-65",
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "The amount added to the index when a bang is recieved",
									"linecount" : 3,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 13.0, 315.0, 116.0, 47.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-66"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numinlets" : 1,
									"patching_rect" : [ 165.0, 15.0, 21.0, 21.0 ],
									"numoutlets" : 1,
									"id" : "obj-67",
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "the sequence",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 13.0, 41.0, 102.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-68"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "-1 is the last value, -2 is the second from last, etc",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 561.0, 118.0, 189.0, 33.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-69"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "the default is 0 (the first value)",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 148.0, 129.0, 189.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-70"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "The initial iteration (wraparound) count",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 11.0, 239.0, 133.0, 33.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-71"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.seq @seq 1 2",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 190.0, 234.0, 133.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 5,
									"id" : "obj-72",
									"outlettype" : [ "", "", "", "", "" ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.seq @iter 100 @seq 1 2",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 416.0, 234.0, 194.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 5,
									"id" : "obj-73",
									"outlettype" : [ "", "", "", "", "" ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.seq @seq 1 2 3",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 165.0, 39.0, 144.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 5,
									"id" : "obj-74",
									"outlettype" : [ "", "", "", "", "" ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.seq @seq 1 2 3",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 140.0, 145.0, 176.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 5,
									"id" : "obj-75",
									"outlettype" : [ "", "", "", "", "" ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.seq @index 2 @seq 1 2 3",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 331.0, 146.0, 200.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 5,
									"id" : "obj-76",
									"outlettype" : [ "", "", "", "", "" ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.seq @step 0 @seq 1 2 3",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 509.0, 327.0, 223.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 5,
									"id" : "obj-77",
									"outlettype" : [ "", "", "", "", "" ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "the default seq is the empty sequence, which is represented by a space \" .\" This is for easier usage with the pattr system (pattr will ignore empty messages like \"\" with no space)",
									"linecount" : 4,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 474.0, 17.0, 271.0, 60.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-78"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "chord mode outputs each value seperately but immediately, like running a list through an [iter] object",
									"linecount" : 4,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 261.0, 441.0, 172.0, 60.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-79"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "See the \"chords\" subpatch for useful examples",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 12.0, 549.0, 168.0, 33.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-80"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "the default is 1",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 14.0, 360.0, 95.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-81"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "chord mode: the behavior for chords. \n\nchords occupy a single index in the sequence, and can be output in four modes: chord, arpeggiate, list, symbol",
									"linecount" : 7,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 12.0, 423.0, 176.0, 100.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-82"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "<-- ajm.seq would interpret this as a sequence",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 230.0, 544.0, 208.0, 33.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-83"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numinlets" : 1,
									"shadow" : 2,
									"patching_rect" : [ 4.0, 382.0, 746.0, 6.0 ],
									"numoutlets" : 0,
									"border" : 1,
									"rounded" : 7,
									"id" : "obj-85",
									"bgcolor" : [ 0.678431, 0.678431, 0.678431, 1.0 ],
									"background" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numinlets" : 1,
									"shadow" : 2,
									"patching_rect" : [ 2.0, 87.0, 746.0, 6.0 ],
									"numoutlets" : 0,
									"border" : 1,
									"rounded" : 7,
									"id" : "obj-86",
									"bgcolor" : [ 0.678431, 0.678431, 0.678431, 1.0 ],
									"background" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numinlets" : 1,
									"shadow" : 2,
									"patching_rect" : [ 4.0, 200.0, 746.0, 6.0 ],
									"numoutlets" : 0,
									"border" : 1,
									"rounded" : 7,
									"id" : "obj-87",
									"bgcolor" : [ 0.678431, 0.678431, 0.678431, 1.0 ],
									"background" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numinlets" : 1,
									"shadow" : 2,
									"patching_rect" : [ 6.0, 282.0, 746.0, 6.0 ],
									"numoutlets" : 0,
									"border" : 1,
									"rounded" : 7,
									"id" : "obj-88",
									"bgcolor" : [ 0.678431, 0.678431, 0.678431, 1.0 ],
									"background" : 1
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-21", 1 ],
									"hidden" : 0,
									"midpoints" : [ 471.5, 539.0, 495.5, 539.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-19", 1 ],
									"hidden" : 0,
									"midpoints" : [ 201.5, 539.0, 222.5, 539.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-49", 3 ],
									"destination" : [ "obj-1", 1 ],
									"hidden" : 0,
									"midpoints" : [ 419.75, 53.0, 459.5, 53.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-77", 2 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 2 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-77", 2 ],
									"destination" : [ "obj-41", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-77", 1 ],
									"destination" : [ "obj-42", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 1 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-77", 0 ],
									"destination" : [ "obj-54", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-64", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [ 149.5, 123.0, 551.5, 123.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-77", 0 ],
									"destination" : [ "obj-43", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-65", 0 ],
									"destination" : [ "obj-77", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-62", 0 ],
									"destination" : [ "obj-77", 0 ],
									"hidden" : 0,
									"midpoints" : [ 599.5, 319.0, 518.5, 319.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-63", 0 ],
									"destination" : [ "obj-77", 0 ],
									"hidden" : 0,
									"midpoints" : [ 558.5, 319.0, 518.5, 319.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 1 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-73", 2 ],
									"destination" : [ "obj-60", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-73", 0 ],
									"destination" : [ "obj-50", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-73", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-76", 2 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-49", 2 ],
									"destination" : [ "obj-45", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-76", 1 ],
									"destination" : [ "obj-58", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-49", 1 ],
									"destination" : [ "obj-46", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-76", 0 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-64", 0 ],
									"destination" : [ "obj-76", 0 ],
									"hidden" : 0,
									"midpoints" : [ 149.5, 123.0, 340.5, 123.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-49", 0 ],
									"destination" : [ "obj-47", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-48", 0 ],
									"destination" : [ "obj-49", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 0 ],
									"destination" : [ "obj-36", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-72", 2 ],
									"destination" : [ "obj-56", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-75", 1 ],
									"destination" : [ "obj-57", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-34", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-72", 0 ],
									"destination" : [ "obj-51", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-59", 0 ],
									"destination" : [ "obj-72", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-74", 0 ],
									"destination" : [ "obj-55", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-67", 0 ],
									"destination" : [ "obj-74", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-75", 0 ],
									"destination" : [ "obj-53", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-64", 0 ],
									"destination" : [ "obj-75", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-40", 0 ],
									"destination" : [ "obj-38", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-39", 0 ],
									"destination" : [ "obj-40", 0 ],
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
					"text" : "loadmess set",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"hidden" : 1,
					"patching_rect" : [ 490.0, 441.0, 81.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 1,
					"id" : "obj-15",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 490.0, 465.0, 50.0, 18.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 1,
					"id" : "obj-16",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numinlets" : 1,
					"patching_rect" : [ 468.0, 467.0, 18.0, 18.0 ],
					"numoutlets" : 1,
					"id" : "obj-18",
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numinlets" : 1,
					"patching_rect" : [ 434.0, 467.0, 18.0, 18.0 ],
					"numoutlets" : 1,
					"id" : "obj-19",
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numinlets" : 1,
					"patching_rect" : [ 399.0, 467.0, 18.0, 18.0 ],
					"numoutlets" : 1,
					"id" : "obj-20",
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route int float",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 399.0, 440.0, 88.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 3,
					"id" : "obj-21",
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numinlets" : 1,
					"patching_rect" : [ 399.0, 383.0, 22.0, 22.0 ],
					"numoutlets" : 1,
					"id" : "obj-22",
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Mix different types",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 420.0, 384.0, 153.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 0,
					"id" : "obj-23"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "mxj ajm.seq @seq 1 1.5 A",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 399.0, 411.0, 156.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 5,
					"id" : "obj-24",
					"outlettype" : [ "", "", "", "", "" ],
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Chords",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 432.0, 194.0, 75.0, 24.0 ],
					"fontsize" : 14.0,
					"numoutlets" : 0,
					"id" : "obj-25"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numinlets" : 1,
					"patching_rect" : [ 325.0, 196.0, 20.0, 20.0 ],
					"numoutlets" : 1,
					"id" : "obj-26",
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "metro 200",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 325.0, 219.0, 69.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 1,
					"id" : "obj-27",
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "noteout",
					"fontname" : "Verdana",
					"numinlets" : 3,
					"patching_rect" : [ 325.0, 307.0, 51.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 0,
					"id" : "obj-28"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "makenote 80 100",
					"fontname" : "Verdana",
					"numinlets" : 3,
					"patching_rect" : [ 325.0, 279.0, 106.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 2,
					"id" : "obj-29",
					"outlettype" : [ "int", "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "mxj ajm.seq @seq [G4 F4]*6 [G4 E4]*6 [B4 D4]*4 [A4 E4] [B4 D4] [C4 C5]*4 [B4 D4] [A4 E4]",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 325.0, 242.0, 292.0, 33.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 5,
					"id" : "obj-30",
					"outlettype" : [ "", "", "", "", "" ],
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numinlets" : 1,
					"patching_rect" : [ 19.0, 349.0, 21.0, 21.0 ],
					"numoutlets" : 1,
					"id" : "obj-33",
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "metro 250",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 19.0, 381.0, 69.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 1,
					"id" : "obj-34",
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "noteout",
					"fontname" : "Verdana",
					"numinlets" : 3,
					"patching_rect" : [ 19.0, 461.0, 51.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 0,
					"id" : "obj-35"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "makenote 80 100",
					"fontname" : "Verdana",
					"numinlets" : 3,
					"patching_rect" : [ 19.0, 432.0, 106.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 2,
					"id" : "obj-36",
					"outlettype" : [ "int", "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "mxj ajm.seq @seq E3*4 (F3 A3)*2 (B3*2 (G3 F3)*2)*2",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 19.0, 405.0, 328.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 5,
					"id" : "obj-37",
					"outlettype" : [ "", "", "", "", "" ],
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Repetition",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 134.0, 345.0, 95.0, 24.0 ],
					"fontsize" : 14.0,
					"numoutlets" : 0,
					"id" : "obj-38"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "noteout",
					"fontname" : "Verdana",
					"numinlets" : 3,
					"patching_rect" : [ 327.0, 154.0, 51.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 0,
					"id" : "obj-39"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "makenote 80 100",
					"fontname" : "Verdana",
					"numinlets" : 3,
					"patching_rect" : [ 327.0, 125.0, 106.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 2,
					"id" : "obj-40",
					"outlettype" : [ "int", "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"triscale" : 0.9,
					"format" : 5,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 447.0, 126.0, 39.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 2,
					"id" : "obj-41",
					"outlettype" : [ "int", "bang" ],
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "1st 2nd 3rd",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 33.0, 155.0, 76.0, 18.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 1,
					"id" : "obj-42",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"numinlets" : 0,
					"lockeddragscroll" : 1,
					"args" : [  ],
					"patching_rect" : [ 631.0, 5.0, 138.0, 55.0 ],
					"numoutlets" : 0,
					"id" : "obj-48",
					"name" : "ajm.helplinks.maxpat"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numinlets" : 1,
					"patching_rect" : [ 327.0, 64.0, 23.0, 23.0 ],
					"numoutlets" : 1,
					"id" : "obj-49",
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "mxj ajm.seq @seq C4 D4 D#4 Bb3 Ab3 G3",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 327.0, 96.0, 248.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 5,
					"id" : "obj-50",
					"outlettype" : [ "", "", "", "", "" ],
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "print sequence",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 182.0, 206.0, 92.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 0,
					"id" : "obj-51"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "print iteration",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 128.0, 227.0, 88.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 0,
					"id" : "obj-52"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "print index",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 73.0, 248.0, 71.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 0,
					"id" : "obj-53"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "print value",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 19.0, 269.0, 71.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 0,
					"id" : "obj-54"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numinlets" : 1,
					"patching_rect" : [ 19.0, 112.0, 25.0, 25.0 ],
					"numoutlets" : 1,
					"id" : "obj-55",
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "a looping sequence of notes, chords, or arbitrary data",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 125.0, 16.0, 336.0, 21.0 ],
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"id" : "obj-56"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "ajm.seq",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 21.0, 7.0, 77.0, 27.0 ],
					"fontsize" : 18.0,
					"numoutlets" : 0,
					"id" : "obj-57"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Java External",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 22.0, 32.0, 100.0, 17.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"id" : "obj-58"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "step through the sequence and output the current value, index, and iteration",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 42.0, 111.0, 225.0, 33.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 0,
					"id" : "obj-59"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "mxj ajm.seq @seq first second third",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 19.0, 183.0, 236.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 5,
					"id" : "obj-61",
					"outlettype" : [ "", "", "", "", "" ],
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Note names",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 388.0, 63.0, 105.0, 24.0 ],
					"fontsize" : 14.0,
					"numoutlets" : 0,
					"id" : "obj-62"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "(how many times the sequence has looped)",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 172.0, 247.0, 131.0, 33.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 0,
					"id" : "obj-63"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"grad1" : [ 0.909804, 0.996078, 1.0, 1.0 ],
					"grad2" : [ 0.803922, 0.847059, 1.0, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 320.0, 58.0, 261.0, 118.0 ],
					"mode" : 1,
					"numoutlets" : 0,
					"border" : 1,
					"angle" : 270.0,
					"id" : "obj-64",
					"bgcolor" : [ 0.917647, 0.937255, 0.960784, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "revert to @seq:",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 101.0, 377.0, 98.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 0,
					"id" : "obj-66"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p construction",
					"fontname" : "Verdana",
					"numinlets" : 0,
					"patching_rect" : [ 652.0, 103.451088, 89.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 0,
					"id" : "obj-68",
					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 113.0, 44.0, 859.0, 406.0 ],
						"bglocked" : 0,
						"defrect" : [ 113.0, 44.0, 859.0, 406.0 ],
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
									"maxclass" : "message",
									"text" : "resetseq",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 28.0, 295.0, 59.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-71",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "A B C",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 15.0, 352.0, 149.0, 18.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 1,
									"id" : "obj-70",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "A B",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 281.0, 309.0, 108.0, 18.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 1,
									"id" : "obj-68",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 303.0, 130.0, 85.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-66",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess set",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"hidden" : 1,
									"patching_rect" : [ 186.0, 140.0, 84.0, 20.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 1,
									"id" : "obj-65",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "\" \"",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 13.0, 163.0, 76.0, 18.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 1,
									"id" : "obj-64",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "resetseq",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 576.0, 97.0, 59.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-62",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "resetseq",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 564.0, 304.0, 59.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-61",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "1 5 10",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 542.0, 355.0, 125.0, 18.0 ],
									"fontsize" : 11.1,
									"numoutlets" : 1,
									"id" : "obj-60",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "A B C",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 552.0, 148.0, 123.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-58",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "set E F G",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 357.0, 53.0, 59.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-1",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "seq seq A B C",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 137.0, 102.0, 85.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-2",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "A B C",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 11.0, 102.0, 42.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-3",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "seq index 0",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 64.0, 102.0, 72.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-4",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.seq",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 11.0, 135.0, 80.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 5,
									"id" : "obj-7",
									"outlettype" : [ "", "", "", "", "" ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "anything / seq",
									"fontname" : "Verdana Bold",
									"numinlets" : 1,
									"patching_rect" : [ 13.0, 13.0, 174.0, 24.0 ],
									"fontsize" : 14.0,
									"numoutlets" : 0,
									"id" : "obj-8"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Anything that is not an ajm.seq command sets the sequence. \nThe \"seq\" command can set a sequence starting with an ajm.seq command",
									"linecount" : 4,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 12.0, 39.0, 234.0, 60.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-9"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numinlets" : 1,
									"patching_rect" : [ 346.0, 103.0, 22.0, 22.0 ],
									"numoutlets" : 1,
									"id" : "obj-10",
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route seq",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 369.0, 105.0, 63.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 2,
									"id" : "obj-11",
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "getseq",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 438.0, 53.0, 45.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-12",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "set A B C",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 278.0, 54.0, 62.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-13",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.seq",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 278.0, 80.0, 110.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 5,
									"id" : "obj-16",
									"outlettype" : [ "", "", "", "", "" ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "set",
									"fontname" : "Verdana Bold",
									"numinlets" : 1,
									"patching_rect" : [ 278.0, 11.0, 43.0, 24.0 ],
									"fontsize" : 14.0,
									"numoutlets" : 0,
									"id" : "obj-17"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "resetseq",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 304.0, 258.0, 59.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-18",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "repeat",
									"fontname" : "Verdana Bold",
									"numinlets" : 1,
									"patching_rect" : [ 284.0, 205.0, 70.0, 24.0 ],
									"fontsize" : 14.0,
									"numoutlets" : 0,
									"id" : "obj-19"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "resetseq, repeat 3",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 389.0, 227.0, 114.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-20",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "resetseq, repeat",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 284.0, 228.0, 102.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-21",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.seq @seq A B",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 284.0, 283.0, 134.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 5,
									"id" : "obj-24",
									"outlettype" : [ "", "", "", "", "" ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "syntax: insertsort list",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 547.0, 224.0, 148.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-25"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "inserts immediately before the first value that is greater than it",
									"linecount" : 3,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 723.0, 225.0, 131.0, 47.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-26"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "insertsort -1",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 559.0, 274.0, 83.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-27",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "insertsort 7",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 638.0, 253.0, 77.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-28",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "insertsort 3 6 8 11",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 647.0, 275.0, 119.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-29",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "insertsort 2",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 549.0, 253.0, 77.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-30",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.seq @seq 1 5 10",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 549.0, 329.0, 151.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 5,
									"id" : "obj-33",
									"outlettype" : [ "", "", "", "", "" ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p \"upwards arpeggiator\"",
									"fontname" : "Verdana",
									"numinlets" : 0,
									"patching_rect" : [ 681.0, 371.0, 146.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-34",
									"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 458.0, 172.0, 413.0, 256.0 ],
										"bglocked" : 0,
										"defrect" : [ 458.0, 172.0, 413.0, 256.0 ],
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
													"maxclass" : "message",
													"text" : "\" \"",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"patching_rect" : [ 216.0, 191.0, 148.0, 18.0 ],
													"fontsize" : 11.1,
													"numoutlets" : 1,
													"id" : "obj-20",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "noteoff",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"patching_rect" : [ 296.0, 98.0, 47.0, 20.0 ],
													"fontsize" : 11.0,
													"numoutlets" : 0,
													"id" : "obj-1"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "number",
													"triscale" : 0.9,
													"fontname" : "Verdana",
													"numinlets" : 1,
													"minimum" : 1,
													"patching_rect" : [ 78.0, 85.0, 38.0, 20.0 ],
													"fontsize" : 11.0,
													"numoutlets" : 2,
													"maximum" : 2000,
													"id" : "obj-4",
													"outlettype" : [ "int", "bang" ],
													"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
													"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "toggle",
													"numinlets" : 1,
													"patching_rect" : [ 28.0, 84.0, 21.0, 21.0 ],
													"numoutlets" : 1,
													"id" : "obj-5",
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "metro 250",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"patching_rect" : [ 28.0, 121.0, 69.0, 20.0 ],
													"fontsize" : 11.0,
													"numoutlets" : 1,
													"id" : "obj-6",
													"outlettype" : [ "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend deletevalue",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"patching_rect" : [ 284.0, 117.0, 121.0, 20.0 ],
													"fontsize" : 11.0,
													"numoutlets" : 1,
													"id" : "obj-7",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 2",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"patching_rect" : [ 167.0, 70.0, 46.0, 20.0 ],
													"fontsize" : 11.0,
													"numoutlets" : 2,
													"id" : "obj-8",
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend insertsort",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"patching_rect" : [ 167.0, 116.0, 113.0, 20.0 ],
													"fontsize" : 11.0,
													"numoutlets" : 1,
													"id" : "obj-9",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "if $i1!=0 then 1 else 2",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"patching_rect" : [ 208.0, 40.0, 135.0, 20.0 ],
													"fontsize" : 11.0,
													"numoutlets" : 1,
													"id" : "obj-10",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "notein",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"patching_rect" : [ 194.0, 14.0, 47.0, 20.0 ],
													"fontsize" : 11.0,
													"numoutlets" : 3,
													"id" : "obj-11",
													"outlettype" : [ "int", "int", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "noteout",
													"fontname" : "Verdana",
													"numinlets" : 3,
													"patching_rect" : [ 71.0, 222.0, 51.0, 20.0 ],
													"fontsize" : 11.0,
													"numoutlets" : 0,
													"id" : "obj-12"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "makenote 80 100",
													"fontname" : "Verdana",
													"numinlets" : 3,
													"patching_rect" : [ 71.0, 193.0, 106.0, 20.0 ],
													"fontsize" : 11.0,
													"numoutlets" : 2,
													"id" : "obj-13",
													"outlettype" : [ "int", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "mxj ajm.seq",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"patching_rect" : [ 167.0, 156.0, 80.0, 20.0 ],
													"fontsize" : 11.0,
													"numoutlets" : 5,
													"id" : "obj-14",
													"outlettype" : [ "", "", "", "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "noteon",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"patching_rect" : [ 176.0, 96.0, 50.0, 20.0 ],
													"fontsize" : 11.0,
													"numoutlets" : 0,
													"id" : "obj-15"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "turn on the metro and hold down notes on your MIDI keyboard",
													"linecount" : 3,
													"fontname" : "Verdana",
													"numinlets" : 1,
													"patching_rect" : [ 22.0, 32.0, 137.0, 47.0 ],
													"fontsize" : 11.0,
													"numoutlets" : 0,
													"id" : "obj-16"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-8", 1 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [ 203.5, 94.0, 293.5, 94.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 1 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-8", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-13", 2 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [ 293.5, 144.0, 176.5, 144.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [ 37.5, 144.0, 176.5, 144.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 1 ],
													"destination" : [ "obj-12", 1 ],
													"hidden" : 0,
													"midpoints" : [ 167.5, 215.0, 96.5, 215.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [ 176.5, 183.0, 80.5, 183.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-6", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 3 ],
													"destination" : [ "obj-20", 1 ],
													"hidden" : 0,
													"midpoints" : [ 222.25, 183.0, 354.5, 183.0 ]
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
									"maxclass" : "comment",
									"text" : "insertsort",
									"fontname" : "Verdana Bold",
									"numinlets" : 1,
									"patching_rect" : [ 547.0, 205.0, 116.0, 24.0 ],
									"fontsize" : 14.0,
									"numoutlets" : 0,
									"id" : "obj-35"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "insert 2 y",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 189.0, 263.0, 66.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-36",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "insert 1 x",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 167.0, 240.0, 66.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-37",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "insert -1 next to last",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 26.0, 263.0, 127.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-39",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "insert 0 same as prepend",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 14.0, 239.0, 150.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-40",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.seq @seq A B C",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 14.0, 324.0, 146.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 5,
									"id" : "obj-43",
									"outlettype" : [ "", "", "", "", "" ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "2 3 4",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 691.0, 41.0, 40.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-44",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "1",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 670.0, 41.0, 18.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-45",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend prepend",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 670.0, 68.0, 103.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-47",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "append E F G",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 572.0, 67.0, 83.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-48",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "append D",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 561.0, 45.0, 62.0, 18.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-49",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.seq @seq A B C",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 561.0, 123.0, 146.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 5,
									"id" : "obj-51",
									"outlettype" : [ "", "", "", "", "" ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "append & prepend",
									"fontname" : "Verdana Bold",
									"numinlets" : 1,
									"patching_rect" : [ 558.0, 16.0, 178.0, 24.0 ],
									"fontsize" : 14.0,
									"numoutlets" : 0,
									"id" : "obj-52"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "insert",
									"fontname" : "Verdana Bold",
									"numinlets" : 1,
									"patching_rect" : [ 14.0, 201.0, 54.0, 24.0 ],
									"fontsize" : 14.0,
									"numoutlets" : 0,
									"id" : "obj-53"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "one application for insertsort:",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 681.0, 353.0, 175.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-54"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "syntax: insert index list",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 14.0, 220.0, 165.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-55"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Warning: you can easily create extremely long lists with repeat. If you use up all the Java memory, Max will crash!",
									"linecount" : 4,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 281.0, 332.0, 184.0, 60.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-56"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "sets the sequence without triggering output",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 278.0, 33.0, 254.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-57"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-45", 0 ],
									"destination" : [ "obj-47", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-44", 0 ],
									"destination" : [ "obj-47", 0 ],
									"hidden" : 0,
									"midpoints" : [ 700.5, 63.0, 679.5, 63.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-47", 0 ],
									"destination" : [ "obj-51", 0 ],
									"hidden" : 0,
									"midpoints" : [ 679.5, 92.0, 570.5, 92.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-48", 0 ],
									"destination" : [ "obj-51", 0 ],
									"hidden" : 0,
									"midpoints" : [ 581.5, 92.0, 570.5, 92.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-49", 0 ],
									"destination" : [ "obj-51", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-33", 0 ],
									"hidden" : 0,
									"midpoints" : [ 647.5, 298.0, 558.5, 298.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-33", 0 ],
									"hidden" : 0,
									"midpoints" : [ 568.5, 298.0, 558.5, 298.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-33", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-33", 0 ],
									"hidden" : 0,
									"midpoints" : [ 656.5, 298.0, 558.5, 298.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 4 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 3 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [ 366.5, 74.0, 287.5, 74.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [ 447.5, 74.0, 287.5, 74.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [ 313.5, 279.0, 293.5, 279.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [ 398.5, 250.0, 293.5, 250.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-40", 0 ],
									"destination" : [ "obj-43", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-39", 0 ],
									"destination" : [ "obj-43", 0 ],
									"hidden" : 0,
									"midpoints" : [ 35.5, 286.0, 23.5, 286.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 0 ],
									"destination" : [ "obj-43", 0 ],
									"hidden" : 0,
									"midpoints" : [ 198.5, 286.0, 23.5, 286.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 0 ],
									"destination" : [ "obj-43", 0 ],
									"hidden" : 0,
									"midpoints" : [ 176.5, 286.0, 23.5, 286.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [ 146.5, 127.0, 20.5, 127.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [ 73.5, 127.0, 20.5, 127.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-51", 3 ],
									"destination" : [ "obj-58", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 3 ],
									"destination" : [ "obj-60", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-61", 0 ],
									"destination" : [ "obj-33", 0 ],
									"hidden" : 0,
									"midpoints" : [ 573.5, 325.0, 558.5, 325.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-62", 0 ],
									"destination" : [ "obj-51", 0 ],
									"hidden" : 0,
									"midpoints" : [ 585.5, 117.0, 570.5, 117.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 3 ],
									"destination" : [ "obj-64", 1 ],
									"hidden" : 0,
									"midpoints" : [ 66.25, 158.0, 79.5, 158.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-65", 0 ],
									"destination" : [ "obj-64", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-66", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-65", 0 ],
									"destination" : [ "obj-66", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 3 ],
									"destination" : [ "obj-68", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-43", 3 ],
									"destination" : [ "obj-70", 1 ],
									"hidden" : 0,
									"midpoints" : [ 118.75, 348.0, 154.5, 348.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-71", 0 ],
									"destination" : [ "obj-43", 0 ],
									"hidden" : 0,
									"midpoints" : [ 37.5, 317.0, 23.5, 317.0 ]
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
					"maxclass" : "panel",
					"grad1" : [ 0.94902, 1.0, 0.913725, 1.0 ],
					"grad2" : [ 0.6, 0.92549, 0.6, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 10.0, 344.0, 341.0, 141.0 ],
					"mode" : 1,
					"numoutlets" : 0,
					"border" : 1,
					"angle" : 270.0,
					"id" : "obj-14",
					"bgcolor" : [ 0.917647, 0.937255, 0.960784, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"grad1" : [ 0.996078, 1.0, 0.909804, 1.0 ],
					"grad2" : [ 0.882353, 0.882353, 0.490196, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 320.0, 192.0, 303.0, 142.0 ],
					"mode" : 1,
					"numoutlets" : 0,
					"border" : 1,
					"angle" : 270.0,
					"id" : "obj-44",
					"bgcolor" : [ 0.917647, 0.937255, 0.960784, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"grad1" : [ 0.823529, 1.0, 0.956863, 1.0 ],
					"grad2" : [ 0.219608, 0.564706, 0.462745, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 13.0, 6.0, 464.0, 42.0 ],
					"mode" : 1,
					"numoutlets" : 0,
					"rounded" : 12,
					"angle" : 270.0,
					"id" : "obj-8"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"grad1" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"grad2" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 12.0, 5.0, 467.0, 46.0 ],
					"mode" : 1,
					"numoutlets" : 0,
					"rounded" : 16,
					"angle" : 270.0,
					"id" : "obj-75"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-61", 3 ],
					"destination" : [ "obj-51", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 3 ],
					"destination" : [ "obj-43", 1 ],
					"hidden" : 0,
					"midpoints" : [ 260.25, 432.0, 333.5, 432.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-50", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 0,
					"midpoints" : [ 336.5, 120.0, 456.5, 120.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 2 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 1 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 1 ],
					"destination" : [ "obj-28", 1 ],
					"hidden" : 0,
					"midpoints" : [ 421.5, 302.0, 350.5, 302.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 1 ],
					"destination" : [ "obj-39", 1 ],
					"hidden" : 0,
					"midpoints" : [ 423.5, 149.0, 352.5, 149.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-50", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 0 ],
					"destination" : [ "obj-50", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-61", 2 ],
					"destination" : [ "obj-52", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-61", 1 ],
					"destination" : [ "obj-53", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 1 ],
					"destination" : [ "obj-35", 1 ],
					"hidden" : 0,
					"midpoints" : [ 115.5, 455.0, 44.5, 455.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-61", 0 ],
					"destination" : [ "obj-54", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 0 ],
					"destination" : [ "obj-61", 0 ],
					"hidden" : 0,
					"midpoints" : [ 42.5, 176.0, 28.5, 176.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 0 ],
					"destination" : [ "obj-61", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-61", 0 ],
					"hidden" : 0,
					"midpoints" : [ 123.5, 176.0, 28.5, 176.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [ 201.5, 400.0, 28.5, 400.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [ 279.5, 400.0, 28.5, 400.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-16", 1 ],
					"hidden" : 0,
					"midpoints" : [ 408.5, 435.0, 530.5, 435.0 ]
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
