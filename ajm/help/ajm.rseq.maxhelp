{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 19.0, 59.0, 490.0, 343.0 ],
		"bglocked" : 0,
		"defrect" : [ 19.0, 59.0, 490.0, 343.0 ],
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
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontsize" : 11.1,
					"patching_rect" : [ 90.0, 336.0, 73.0, 20.0 ],
					"hidden" : 1,
					"id" : "obj-31",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "ajm.bring-to-front-listener ajm.rseq",
					"numoutlets" : 1,
					"outlettype" : [ "front" ],
					"fontsize" : 11.1,
					"patching_rect" : [ 90.0, 310.0, 212.0, 20.0 ],
					"hidden" : 1,
					"id" : "obj-4",
					"numinlets" : 0,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "a rhythmic version to ajm.seq",
					"numoutlets" : 0,
					"fontsize" : 12.0,
					"patching_rect" : [ 118.0, 19.0, 194.0, 21.0 ],
					"id" : "obj-56",
					"numinlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "ajm.rseq",
					"numoutlets" : 0,
					"fontsize" : 18.0,
					"patching_rect" : [ 23.0, 10.0, 82.0, 27.0 ],
					"id" : "obj-57",
					"numinlets" : 1,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Java External",
					"numoutlets" : 0,
					"fontsize" : 9.0,
					"patching_rect" : [ 24.0, 35.0, 100.0, 17.0 ],
					"id" : "obj-58",
					"numinlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"patching_rect" : [ 9.0, 9.0, 307.0, 41.0 ],
					"grad1" : [ 0.835294, 1.0, 0.960784, 1.0 ],
					"rounded" : 12,
					"angle" : 270.0,
					"mode" : 1,
					"grad2" : [ 0.270588, 0.658824, 0.541176, 1.0 ],
					"id" : "obj-69",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"patching_rect" : [ 8.0, 8.0, 311.0, 45.0 ],
					"grad1" : [ 0.482353, 0.482353, 0.482353, 1.0 ],
					"rounded" : 16,
					"angle" : 270.0,
					"mode" : 1,
					"grad2" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-70",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"numoutlets" : 0,
					"lockeddragscroll" : 1,
					"patching_rect" : [ 340.0, 7.0, 138.0, 55.0 ],
					"name" : "ajm.helplinks.maxpat",
					"args" : [  ],
					"id" : "obj-48",
					"numinlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"numoutlets" : 0,
					"lockeddragscroll" : 1,
					"patching_rect" : [ 319.0, 276.0, 145.0, 55.0 ],
					"name" : "ajm.seealso.maxpat",
					"args" : [ "ajm.seq", "ajm.rseq2seq", "ajm.eval", "ajm.ruby" ],
					"id" : "obj-60",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p \"zero & symbols\"",
					"numoutlets" : 0,
					"fontsize" : 11.0,
					"patching_rect" : [ 318.0, 91.643677, 120.0, 20.0 ],
					"id" : "obj-1",
					"numinlets" : 0,
					"fontname" : "Verdana",
					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 425.0, 48.0, 404.0, 375.0 ],
						"bglocked" : 0,
						"defrect" : [ 425.0, 48.0, 404.0, 375.0 ],
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
									"text" : "t i",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 24.0, 86.0, 20.0, 20.0 ],
									"id" : "obj-1",
									"numinlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 11.0,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"patching_rect" : [ 24.0, 115.0, 37.0, 20.0 ],
									"id" : "obj-2",
									"numinlets" : 1,
									"fontname" : "Verdana",
									"triscale" : 0.9,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 47.0, 86.0, 15.0, 15.0 ],
									"id" : "obj-3",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print 0-value-example",
									"numoutlets" : 0,
									"fontsize" : 11.0,
									"patching_rect" : [ 68.0, 84.0, 136.0, 20.0 ],
									"id" : "obj-4",
									"numinlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 24.0, 24.0, 20.0, 20.0 ],
									"id" : "obj-5",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.rseq @seq 1 0 2 some symbols",
									"numoutlets" : 5,
									"outlettype" : [ "", "", "", "", "" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 24.0, 54.0, 259.0, 20.0 ],
									"id" : "obj-6",
									"numinlets" : 1,
									"fontname" : "Verdana",
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "When 0 and symbols are output, rseq immedaitely advances and outputs the next value",
									"linecount" : 2,
									"numoutlets" : 0,
									"fontsize" : 11.0,
									"patching_rect" : [ 51.0, 19.0, 285.0, 33.0 ],
									"id" : "obj-7",
									"numinlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess set",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 196.0, 286.0, 81.0, 20.0 ],
									"hidden" : 1,
									"id" : "obj-8",
									"numinlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 143.0, 319.0, 62.0, 18.0 ],
									"id" : "obj-9",
									"numinlets" : 2,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "thresh",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 143.0, 286.0, 47.0, 20.0 ],
									"id" : "obj-11",
									"numinlets" : 2,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "metro 500",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 22.0, 185.0, 69.0, 20.0 ],
									"id" : "obj-12",
									"numinlets" : 2,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 22.0, 161.0, 19.0, 19.0 ],
									"id" : "obj-13",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "noteout",
									"numoutlets" : 0,
									"fontsize" : 11.0,
									"patching_rect" : [ 22.0, 329.0, 51.0, 20.0 ],
									"id" : "obj-14",
									"numinlets" : 3,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "makenote 80 100",
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 22.0, 300.0, 106.0, 20.0 ],
									"id" : "obj-15",
									"numinlets" : 3,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 22.0, 232.0, 15.0, 15.0 ],
									"id" : "obj-16",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "0 can be used to play notes simultaneously",
									"numoutlets" : 0,
									"fontsize" : 11.0,
									"patching_rect" : [ 55.0, 165.0, 271.0, 20.0 ],
									"id" : "obj-17",
									"numinlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.seq @seq C4 Eb4 G4 Bb4 G4 C5 F4 G4 B3 D4 B3 F4 G4",
									"numoutlets" : 5,
									"outlettype" : [ "", "", "", "", "" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 22.0, 256.0, 367.0, 20.0 ],
									"id" : "obj-18",
									"numinlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.rseq @seq 2 0 1 1 0 0",
									"numoutlets" : 5,
									"outlettype" : [ "", "", "", "", "" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 22.0, 207.0, 183.0, 20.0 ],
									"id" : "obj-19",
									"numinlets" : 1,
									"fontname" : "Verdana",
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [ 31.5, 280.0, 152.5, 280.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [ 33.5, 80.0, 77.5, 80.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [ 33.5, 80.0, 56.0, 80.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 1 ],
									"destination" : [ "obj-14", 1 ],
									"hidden" : 0,
									"midpoints" : [ 118.5, 323.0, 47.5, 323.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
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
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-9", 1 ],
									"hidden" : 0,
									"midpoints" : [ 152.5, 313.0, 195.5, 313.0 ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 11.1,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"fontname" : "Verdana",
						"default_fontsize" : 11.1
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p rests",
					"numoutlets" : 0,
					"fontsize" : 11.0,
					"patching_rect" : [ 318.0, 162.574707, 50.0, 20.0 ],
					"id" : "obj-2",
					"numinlets" : 0,
					"fontname" : "Verdana",
					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 427.0, 48.0, 473.0, 426.0 ],
						"bglocked" : 0,
						"defrect" : [ 427.0, 48.0, 473.0, 426.0 ],
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
									"text" : "pgmout",
									"numoutlets" : 0,
									"fontsize" : 11.0,
									"patching_rect" : [ 404.0, 134.0, 51.0, 20.0 ],
									"id" : "obj-25",
									"numinlets" : 2,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "This examples are easier to hear with a sound that sustains (like program 17, organ, in general midi)",
									"linecount" : 3,
									"numoutlets" : 0,
									"fontsize" : 11.0,
									"patching_rect" : [ 196.0, 109.0, 211.0, 47.0 ],
									"id" : "obj-26",
									"numinlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"numoutlets" : 2,
									"minimum" : 0,
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 11.0,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"maximum" : 127,
									"patching_rect" : [ 404.0, 112.0, 40.0, 17.0 ],
									"id" : "obj-27",
									"numinlets" : 1,
									"fontname" : "Courier",
									"triscale" : 0.9,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 11.0,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"patching_rect" : [ 19.0, 84.0, 37.0, 20.0 ],
									"id" : "obj-1",
									"numinlets" : 1,
									"fontname" : "Verdana",
									"triscale" : 0.9,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 19.0, 22.0, 20.0, 20.0 ],
									"id" : "obj-2",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.rseq @seq 1 -1 2 -2",
									"numoutlets" : 5,
									"outlettype" : [ "", "", "", "", "" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 19.0, 60.0, 174.0, 20.0 ],
									"id" : "obj-3",
									"numinlets" : 1,
									"fontname" : "Verdana",
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "The absolute value of a number is used to determine how many bangs to wait until the next output. So negative numbers act like positive numbers.",
									"linecount" : 3,
									"numoutlets" : 0,
									"fontsize" : 11.0,
									"patching_rect" : [ 42.0, 15.0, 313.0, 47.0 ],
									"id" : "obj-4",
									"numinlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b i",
									"numoutlets" : 2,
									"outlettype" : [ "bang", "int" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 23.0, 256.0, 32.0, 20.0 ],
									"id" : "obj-5",
									"numinlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 21.0, 313.0, 35.0, 20.0 ],
									"id" : "obj-6",
									"numinlets" : 2,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : ">= 0",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 21.0, 287.0, 37.0, 20.0 ],
									"id" : "obj-7",
									"numinlets" : 2,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"numoutlets" : 2,
									"minimum" : 20,
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 11.0,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"patching_rect" : [ 73.0, 175.0, 38.0, 20.0 ],
									"id" : "obj-8",
									"numinlets" : 1,
									"fontname" : "Verdana",
									"triscale" : 0.9,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* 300",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 204.0, 291.0, 44.0, 20.0 ],
									"id" : "obj-9",
									"numinlets" : 2,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "metro 300",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 23.0, 202.0, 69.0, 20.0 ],
									"id" : "obj-10",
									"numinlets" : 2,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 23.0, 175.0, 20.0, 20.0 ],
									"id" : "obj-11",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "noteout",
									"numoutlets" : 0,
									"fontsize" : 11.0,
									"patching_rect" : [ 21.0, 400.0, 51.0, 20.0 ],
									"id" : "obj-12",
									"numinlets" : 3,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "makenote 80 300",
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 21.0, 370.0, 106.0, 20.0 ],
									"id" : "obj-13",
									"numinlets" : 3,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Rests can be sequenced by filtering out negative numbers.",
									"linecount" : 3,
									"numoutlets" : 0,
									"fontsize" : 11.0,
									"patching_rect" : [ 22.0, 131.0, 141.0, 47.0 ],
									"id" : "obj-17",
									"numinlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.seq @seq 60 67 65 62",
									"numoutlets" : 5,
									"outlettype" : [ "", "", "", "", "" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 21.0, 338.0, 185.0, 20.0 ],
									"id" : "obj-18",
									"numinlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.rseq @seq 1 -3 2 1 1",
									"numoutlets" : 5,
									"outlettype" : [ "", "", "", "", "" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 23.0, 225.0, 179.0, 20.0 ],
									"id" : "obj-19",
									"numinlets" : 1,
									"fontname" : "Verdana",
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-9", 1 ],
									"hidden" : 0,
									"midpoints" : [ 82.5, 198.0, 238.5, 198.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [ 32.5, 249.0, 213.5, 249.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-13", 2 ],
									"hidden" : 0,
									"midpoints" : [ 213.5, 365.0, 117.5, 365.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-10", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-6", 1 ],
									"hidden" : 0,
									"midpoints" : [ 32.5, 279.0, 59.0, 279.0, 59.0, 308.0, 46.5, 308.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 1 ],
									"destination" : [ "obj-12", 1 ],
									"hidden" : 0,
									"midpoints" : [ 117.5, 394.0, 46.5, 394.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-10", 0 ],
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
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
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
									"source" : [ "obj-5", 1 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 11.1,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"fontname" : "Verdana",
						"default_fontsize" : 11.1
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p infinity",
					"numoutlets" : 0,
					"fontsize" : 11.0,
					"patching_rect" : [ 318.0, 186.218384, 61.0, 20.0 ],
					"id" : "obj-3",
					"numinlets" : 0,
					"fontname" : "Verdana",
					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 425.0, 49.0, 474.0, 448.0 ],
						"bglocked" : 0,
						"defrect" : [ 425.0, 49.0, 474.0, 448.0 ],
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
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 11.1,
									"patching_rect" : [ 102.0, 194.0, 84.0, 20.0 ],
									"hidden" : 1,
									"id" : "obj-13",
									"numinlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Treat -INF like a rest and don't send it to ajm.seq",
									"linecount" : 5,
									"numoutlets" : 0,
									"fontsize" : 11.0,
									"patching_rect" : [ 246.0, 251.0, 75.0, 73.0 ],
									"id" : "obj-1",
									"numinlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "noteout",
									"numoutlets" : 0,
									"fontsize" : 11.0,
									"patching_rect" : [ 198.0, 406.0, 63.0, 20.0 ],
									"id" : "obj-2",
									"numinlets" : 3,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "makenote 80 100",
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 198.0, 377.0, 116.0, 20.0 ],
									"id" : "obj-3",
									"numinlets" : 3,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t resetindex l",
									"numoutlets" : 2,
									"outlettype" : [ "resetindex", "" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 321.0, 152.0, 85.0, 20.0 ],
									"id" : "obj-4",
									"numinlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.seq @seq E4 D4 C4",
									"numoutlets" : 5,
									"outlettype" : [ "", "", "", "", "" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 198.0, 351.0, 178.0, 20.0 ],
									"id" : "obj-5",
									"numinlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "1 -1 1 -INF",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 397.0, 123.0, 73.0, 18.0 ],
									"id" : "obj-6",
									"numinlets" : 2,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "1 -1 1 INF",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 321.0, 123.0, 67.0, 18.0 ],
									"id" : "obj-7",
									"numinlets" : 2,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b i",
									"numoutlets" : 2,
									"outlettype" : [ "bang", "int" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 200.0, 254.0, 32.0, 20.0 ],
									"id" : "obj-8",
									"numinlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 198.0, 314.0, 35.0, 20.0 ],
									"id" : "obj-9",
									"numinlets" : 2,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : ">= 0",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 198.0, 285.0, 37.0, 20.0 ],
									"id" : "obj-10",
									"numinlets" : 2,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route int INF -INF",
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 200.0, 228.0, 116.0, 20.0 ],
									"id" : "obj-11",
									"numinlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 137.0, 229.0, 60.0, 18.0 ],
									"id" : "obj-12",
									"numinlets" : 2,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "metro 250",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 200.0, 153.0, 69.0, 20.0 ],
									"id" : "obj-14",
									"numinlets" : 2,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 200.0, 126.0, 21.0, 21.0 ],
									"id" : "obj-15",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.rseq",
									"numoutlets" : 5,
									"outlettype" : [ "", "", "", "", "" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 200.0, 198.0, 85.0, 20.0 ],
									"id" : "obj-16",
									"numinlets" : 1,
									"fontname" : "Verdana",
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 43.0, 175.0, 59.0, 18.0 ],
									"id" : "obj-17",
									"numinlets" : 2,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "resetindex",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 101.0, 112.0, 69.0, 18.0 ],
									"id" : "obj-19",
									"numinlets" : 2,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "metro 1000",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 21.0, 111.0, 76.0, 20.0 ],
									"id" : "obj-20",
									"numinlets" : 2,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 21.0, 84.0, 18.0, 18.0 ],
									"id" : "obj-21",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 21.0, 175.0, 18.0, 18.0 ],
									"id" : "obj-22",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.rseq @seq 1 1 INF",
									"numoutlets" : 5,
									"outlettype" : [ "", "", "", "", "" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 21.0, 143.0, 161.0, 20.0 ],
									"id" : "obj-23",
									"numinlets" : 1,
									"fontname" : "Verdana",
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "INF and -INF are special symbols that mean infinity and negative infinity. After infinity is encountered by rseq, it will not output anything else until the index is set to a non-infinite value. Use this for non-looping \"one hit\" sequences",
									"linecount" : 4,
									"numoutlets" : 0,
									"fontsize" : 11.0,
									"patching_rect" : [ 16.0, 9.0, 400.0, 60.0 ],
									"id" : "obj-24",
									"numinlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Here's a way to handle rests and infinity. ajm.rseq2seq does this for you.",
									"linecount" : 2,
									"numoutlets" : 0,
									"fontsize" : 11.0,
									"patching_rect" : [ 205.0, 84.0, 234.0, 33.0 ],
									"id" : "obj-25",
									"numinlets" : 1,
									"fontname" : "Verdana"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-12", 1 ],
									"hidden" : 0,
									"midpoints" : [ 209.5, 221.0, 187.5, 221.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-17", 1 ],
									"hidden" : 0,
									"midpoints" : [ 30.5, 169.0, 92.5, 169.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [ 406.5, 146.0, 330.5, 146.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 1 ],
									"destination" : [ "obj-2", 1 ],
									"hidden" : 0,
									"midpoints" : [ 304.5, 400.0, 229.5, 400.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-9", 1 ],
									"hidden" : 0,
									"midpoints" : [ 209.5, 277.0, 237.0, 277.0, 237.0, 309.0, 223.5, 309.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 1 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [ 330.5, 176.0, 209.5, 176.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [ 330.5, 342.0, 207.5, 342.0 ]
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
									"source" : [ "obj-8", 1 ],
									"destination" : [ "obj-10", 0 ],
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
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [ 110.5, 135.0, 30.5, 135.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 1 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [ 241.833328, 342.0, 207.5, 342.0 ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 11.1,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"fontname" : "Verdana",
						"default_fontsize" : 11.1
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p \"line sequencing\"",
					"numoutlets" : 0,
					"fontsize" : 11.0,
					"patching_rect" : [ 318.0, 209.862076, 119.0, 20.0 ],
					"id" : "obj-11",
					"numinlets" : 0,
					"fontname" : "Verdana",
					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 426.0, 47.0, 570.0, 376.0 ],
						"bglocked" : 0,
						"defrect" : [ 426.0, 47.0, 570.0, 376.0 ],
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
									"text" : "loadmess 500",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 370.0, 51.0, 87.0, 20.0 ],
									"hidden" : 1,
									"id" : "obj-1",
									"numinlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "multislider",
									"numoutlets" : 2,
									"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
									"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 385.0, 270.0, 135.0, 82.0 ],
									"setminmax" : [ -0.5, 1.5 ],
									"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
									"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
									"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
									"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
									"setstyle" : 4,
									"id" : "obj-2",
									"numinlets" : 1,
									"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
									"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "3 7.5",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 88.0, 166.0, 40.0, 18.0 ],
									"id" : "obj-3",
									"numinlets" : 2,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "1 0",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 55.0, 166.0, 26.0, 18.0 ],
									"id" : "obj-4",
									"numinlets" : 2,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Decoupling the values and durations so they can be modified independently.",
									"linecount" : 3,
									"numoutlets" : 0,
									"fontsize" : 11.0,
									"patching_rect" : [ 128.0, 155.0, 159.0, 47.0 ],
									"id" : "obj-5",
									"numinlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Sequencing value/duration pairs.",
									"numoutlets" : 0,
									"fontsize" : 11.0,
									"patching_rect" : [ 39.0, 31.0, 194.0, 20.0 ],
									"id" : "obj-6",
									"numinlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 341.0, 319.0, 15.0, 15.0 ],
									"id" : "obj-7",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 322.0, 319.0, 15.0, 15.0 ],
									"id" : "obj-8",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 0. 1.",
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 322.0, 292.0, 57.0, 20.0 ],
									"id" : "obj-9",
									"numinlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 11.0,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"patching_rect" : [ 322.0, 268.0, 38.0, 20.0 ],
									"id" : "obj-10",
									"numinlets" : 1,
									"fontname" : "Verdana",
									"triscale" : 0.9,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "line 0.",
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 322.0, 242.0, 47.0, 20.0 ],
									"id" : "obj-11",
									"numinlets" : 3,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pack 0. 0.",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 322.0, 216.0, 64.0, 20.0 ],
									"id" : "obj-12",
									"numinlets" : 2,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"numoutlets" : 2,
									"minimum" : 20,
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 11.0,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"patching_rect" : [ 372.0, 81.0, 39.0, 20.0 ],
									"id" : "obj-13",
									"numinlets" : 1,
									"fontname" : "Verdana",
									"triscale" : 0.9,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* 500",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 487.0, 160.0, 44.0, 20.0 ],
									"id" : "obj-14",
									"numinlets" : 2,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "metro 500",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 322.0, 110.0, 69.0, 20.0 ],
									"id" : "obj-15",
									"numinlets" : 2,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 322.0, 81.0, 23.0, 23.0 ],
									"id" : "obj-16",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 322.0, 162.0, 15.0, 15.0 ],
									"id" : "obj-17",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.seq @seq 1 0",
									"numoutlets" : 5,
									"outlettype" : [ "", "", "", "", "" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 322.0, 184.0, 133.0, 20.0 ],
									"id" : "obj-18",
									"numinlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.rseq @seq 4 1",
									"numoutlets" : 5,
									"outlettype" : [ "", "", "", "", "" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 322.0, 134.0, 140.0, 20.0 ],
									"id" : "obj-19",
									"numinlets" : 1,
									"fontname" : "Verdana",
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 11.0,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"patching_rect" : [ 15.0, 301.0, 38.0, 20.0 ],
									"id" : "obj-20",
									"numinlets" : 1,
									"fontname" : "Verdana",
									"triscale" : 0.9,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "line 0.",
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 15.0, 275.0, 47.0, 20.0 ],
									"id" : "obj-21",
									"numinlets" : 3,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "b",
									"numoutlets" : 2,
									"outlettype" : [ "bang", "bang" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 15.0, 179.0, 27.5, 20.0 ],
									"id" : "obj-22",
									"numinlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pack 0. 0.",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 15.0, 252.0, 64.0, 20.0 ],
									"id" : "obj-23",
									"numinlets" : 2,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 15.0, 151.0, 22.0, 22.0 ],
									"id" : "obj-24",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.seq @seq 2000 500",
									"linecount" : 2,
									"numoutlets" : 5,
									"outlettype" : [ "", "", "", "", "" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 116.0, 207.0, 96.0, 33.0 ],
									"id" : "obj-25",
									"numinlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.seq @seq 1 0",
									"linecount" : 2,
									"numoutlets" : 5,
									"outlettype" : [ "", "", "", "", "" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 15.0, 207.0, 86.0, 33.0 ],
									"id" : "obj-26",
									"numinlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 15.0, 24.0, 21.0, 21.0 ],
									"id" : "obj-27",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 11.0,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"patching_rect" : [ 15.0, 107.0, 38.0, 20.0 ],
									"id" : "obj-28",
									"numinlets" : 1,
									"fontname" : "Verdana",
									"triscale" : 0.9,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "line 0.",
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 15.0, 82.0, 47.0, 20.0 ],
									"id" : "obj-29",
									"numinlets" : 3,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.seq @cmode list @seq [1 2000] [0 500]",
									"numoutlets" : 5,
									"outlettype" : [ "", "", "", "", "" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 15.0, 52.0, 281.0, 20.0 ],
									"id" : "obj-30",
									"numinlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Using ajm.rseq, we can change the overall sequence time while maintaining the relative line segment lengths, similar to changing the domain of a function object that is connected to a line~",
									"linecount" : 5,
									"numoutlets" : 0,
									"fontsize" : 11.0,
									"patching_rect" : [ 316.0, 7.0, 239.0, 73.0 ],
									"id" : "obj-31",
									"numinlets" : 1,
									"fontname" : "Verdana"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 1 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [ 33.0, 202.0, 125.5, 202.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-14", 1 ],
									"hidden" : 0,
									"midpoints" : [ 381.5, 103.0, 521.5, 103.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [ 331.5, 157.0, 496.5, 157.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [ 331.5, 265.0, 394.5, 265.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-15", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-12", 1 ],
									"hidden" : 0,
									"midpoints" : [ 496.5, 210.0, 376.5, 210.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 1 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
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
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
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
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-23", 1 ],
									"hidden" : 0,
									"midpoints" : [ 125.5, 246.0, 69.5, 246.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-20", 0 ],
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
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"color" : [ 0.611765, 0.701961, 1.0, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"color" : [ 0.611765, 0.701961, 1.0, 1.0 ],
									"midpoints" : [  ]
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
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 11.1,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"fontname" : "Verdana",
						"default_fontsize" : 11.1
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p \"repeating notes\"",
					"numoutlets" : 0,
					"fontsize" : 11.0,
					"patching_rect" : [ 318.0, 115.287354, 118.0, 20.0 ],
					"id" : "obj-12",
					"numinlets" : 0,
					"fontname" : "Verdana",
					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 161.0, 48.0, 804.0, 340.0 ],
						"bglocked" : 0,
						"defrect" : [ 161.0, 48.0, 804.0, 340.0 ],
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
									"text" : "ajm.eval",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 334.0, 95.0, 58.0, 18.0 ],
									"id" : "obj-1",
									"numinlets" : 2,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "ajm.rseq2seq",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 511.0, 310.0, 86.0, 18.0 ],
									"id" : "obj-2",
									"numinlets" : 2,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend help",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 400.0, 332.0, 81.0, 20.0 ],
									"hidden" : 1,
									"id" : "obj-3",
									"numinlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pcontrol",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 400.0, 355.0, 53.0, 20.0 ],
									"hidden" : 1,
									"id" : "obj-4",
									"numinlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "cmode chord",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 102.0, 143.0, 80.0, 18.0 ],
									"id" : "obj-5",
									"numinlets" : 2,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "cmode arp",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 192.0, 142.0, 67.0, 18.0 ],
									"id" : "obj-6",
									"numinlets" : 2,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "resetseq",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 86.0, 121.0, 59.0, 18.0 ],
									"id" : "obj-7",
									"numinlets" : 2,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "[C3 C4] [D3 B3] [F3 A3] [G3 B3]",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 178.0, 120.0, 193.0, 18.0 ],
									"id" : "obj-8",
									"numinlets" : 2,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadbang",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 563.0, 6.0, 65.0, 20.0 ],
									"id" : "obj-9",
									"numinlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl group 12",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 591.0, 98.0, 73.0, 20.0 ],
									"id" : "obj-10",
									"numinlets" : 2,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 531.0, 196.0, 255.0, 18.0 ],
									"id" : "obj-12",
									"numinlets" : 2,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* 7",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 591.0, 52.0, 31.0, 20.0 ],
									"id" : "obj-14",
									"numinlets" : 2,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "+ 43",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 591.0, 75.0, 37.0, 20.0 ],
									"id" : "obj-15",
									"numinlets" : 2,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "uzi 12",
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "int" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 563.0, 29.0, 47.0, 20.0 ],
									"id" : "obj-16",
									"numinlets" : 2,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "metro 100",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 23.0, 46.0, 69.0, 20.0 ],
									"id" : "obj-17",
									"numinlets" : 2,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 23.0, 16.0, 22.0, 22.0 ],
									"id" : "obj-18",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Applying a rhymic pattern to a repeated note",
									"numoutlets" : 0,
									"fontsize" : 14.0,
									"patching_rect" : [ 102.0, 6.0, 349.0, 24.0 ],
									"id" : "obj-19",
									"numinlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "There are a few subtleties to hooking ajm.rseq up to ajm.seq. At the very least you need a [t b] (trigger bang), but often it is more complicated than that. For a simpler way, see:",
									"linecount" : 2,
									"numoutlets" : 0,
									"fontsize" : 11.0,
									"patching_rect" : [ 20.0, 293.0, 517.0, 33.0 ],
									"id" : "obj-20",
									"numinlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.seq",
									"numoutlets" : 5,
									"outlettype" : [ "", "", "", "", "" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 591.0, 128.0, 80.0, 20.0 ],
									"id" : "obj-21",
									"numinlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "noteout 10",
									"numoutlets" : 0,
									"fontsize" : 11.0,
									"patching_rect" : [ 415.0, 189.0, 69.0, 20.0 ],
									"id" : "obj-22",
									"numinlets" : 3,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "makenote 80 100",
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 415.0, 160.0, 106.0, 20.0 ],
									"id" : "obj-23",
									"numinlets" : 3,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "b",
									"numoutlets" : 2,
									"outlettype" : [ "bang", "bang" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 415.0, 99.0, 32.5, 20.0 ],
									"id" : "obj-24",
									"numinlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.seq @seq 32 35",
									"numoutlets" : 5,
									"outlettype" : [ "", "", "", "", "" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 415.0, 129.0, 147.0, 20.0 ],
									"id" : "obj-25",
									"numinlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.rseq @seq 2*4 3 1",
									"numoutlets" : 5,
									"outlettype" : [ "", "", "", "", "" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 415.0, 76.0, 166.0, 20.0 ],
									"id" : "obj-26",
									"numinlets" : 1,
									"fontname" : "Verdana",
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "noteout",
									"numoutlets" : 0,
									"fontsize" : 11.0,
									"patching_rect" : [ 23.0, 250.0, 51.0, 20.0 ],
									"id" : "obj-27",
									"numinlets" : 3,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "makenote 80 250",
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 23.0, 222.0, 106.0, 20.0 ],
									"id" : "obj-28",
									"numinlets" : 3,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 23.0, 138.0, 24.0, 20.0 ],
									"id" : "obj-29",
									"numinlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route int",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 23.0, 114.0, 59.0, 20.0 ],
									"id" : "obj-30",
									"numinlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.seq @step 0 @seq C3 D3 F3 G3",
									"numoutlets" : 5,
									"outlettype" : [ "", "", "", "", "" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 23.0, 193.0, 235.0, 20.0 ],
									"id" : "obj-31",
									"numinlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.rseq @seq 4*3 > 3*4 >",
									"numoutlets" : 5,
									"outlettype" : [ "", "", "", "", "" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 23.0, 78.0, 192.0, 20.0 ],
									"id" : "obj-32",
									"numinlets" : 1,
									"fontname" : "Verdana",
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "@step 0 prevents auto-advance behavior. Then the seq waits for the \"next\" message to advance",
									"linecount" : 4,
									"numoutlets" : 0,
									"fontsize" : 11.0,
									"patching_rect" : [ 145.0, 215.0, 167.0, 60.0 ],
									"id" : "obj-33",
									"numinlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Channel 10 is for drums",
									"linecount" : 2,
									"numoutlets" : 0,
									"fontsize" : 11.0,
									"patching_rect" : [ 413.0, 208.0, 79.0, 33.0 ],
									"id" : "obj-34",
									"numinlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "The uzi generates this crescendo:",
									"linecount" : 2,
									"numoutlets" : 0,
									"fontsize" : 11.0,
									"patching_rect" : [ 624.0, 163.0, 113.0, 33.0 ],
									"id" : "obj-35",
									"numinlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "See what happens with chords in arp vs. chord mode",
									"linecount" : 3,
									"numoutlets" : 0,
									"fontsize" : 11.0,
									"patching_rect" : [ 261.0, 140.0, 120.0, 47.0 ],
									"id" : "obj-36",
									"numinlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "* means repeat a value, and > means next. See:",
									"linecount" : 2,
									"numoutlets" : 0,
									"fontsize" : 11.0,
									"patching_rect" : [ 217.0, 79.0, 175.0, 33.0 ],
									"id" : "obj-37",
									"numinlets" : 1,
									"fontname" : "Verdana"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-21", 3 ],
									"destination" : [ "obj-12", 1 ],
									"hidden" : 0,
									"midpoints" : [ 646.25, 153.0, 776.5, 153.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-24", 0 ],
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
									"source" : [ "obj-24", 1 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [ 438.0, 123.0, 600.5, 123.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-10", 0 ],
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
									"source" : [ "obj-16", 2 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-23", 1 ],
									"hidden" : 0,
									"midpoints" : [ 600.5, 154.0, 468.0, 154.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 1,
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
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 1,
									"midpoints" : [ 520.5, 328.0, 409.5, 328.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 1 ],
									"destination" : [ "obj-22", 1 ],
									"hidden" : 0,
									"midpoints" : [ 511.5, 184.0, 449.5, 184.0 ]
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
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"midpoints" : [ 32.5, 69.0, 424.5, 69.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 1 ],
									"destination" : [ "obj-27", 1 ],
									"hidden" : 0,
									"midpoints" : [ 119.5, 245.0, 48.5, 245.0 ]
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
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [ 201.5, 164.0, 32.5, 164.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [ 111.5, 164.0, 32.5, 164.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [ 95.5, 164.0, 32.5, 164.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [ 187.5, 164.0, 32.5, 164.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 1 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [ 72.5, 164.0, 32.5, 164.0 ]
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
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-30", 0 ],
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
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 11.1,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"fontname" : "Verdana",
						"default_fontsize" : 11.1
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p \"dealing with duration\"",
					"numoutlets" : 0,
					"fontsize" : 11.0,
					"patching_rect" : [ 318.0, 138.93103, 148.0, 20.0 ],
					"id" : "obj-13",
					"numinlets" : 0,
					"fontname" : "Verdana",
					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 358.0, 48.0, 637.0, 483.0 ],
						"bglocked" : 0,
						"defrect" : [ 358.0, 48.0, 637.0, 483.0 ],
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
									"text" : "loadmess 300",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 219.0, 173.0, 87.0, 20.0 ],
									"hidden" : 1,
									"id" : "obj-1",
									"numinlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "2",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 525.0, 331.0, 18.0, 18.0 ],
									"id" : "obj-2",
									"numinlets" : 2,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 11.0,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"patching_rect" : [ 515.0, 295.0, 38.0, 20.0 ],
									"id" : "obj-3",
									"numinlets" : 1,
									"fontname" : "Verdana",
									"triscale" : 0.9,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* 1.",
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 503.0, 370.0, 41.0, 20.0 ],
									"id" : "obj-4",
									"numinlets" : 2,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "legato",
									"numoutlets" : 0,
									"fontsize" : 11.0,
									"patching_rect" : [ 516.0, 203.0, 46.0, 20.0 ],
									"id" : "obj-5",
									"numinlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "multislider",
									"numoutlets" : 2,
									"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
									"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
									"contdata" : 1,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 498.0, 203.0, 19.0, 82.0 ],
									"setminmax" : [ 0.1, 1.0 ],
									"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
									"slidercolor" : [ 0.039216, 0.098039, 0.411765, 1.0 ],
									"spacing" : 1,
									"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
									"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
									"ghostbar" : 33,
									"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
									"id" : "obj-6",
									"numinlets" : 1,
									"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
									"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"numoutlets" : 2,
									"minimum" : 20,
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 11.0,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"patching_rect" : [ 361.0, 267.0, 39.0, 20.0 ],
									"id" : "obj-7",
									"numinlets" : 1,
									"fontname" : "Verdana",
									"triscale" : 0.9,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* 300",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 446.0, 343.0, 44.0, 20.0 ],
									"id" : "obj-8",
									"numinlets" : 2,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "metro 300",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 311.0, 295.0, 69.0, 20.0 ],
									"id" : "obj-9",
									"numinlets" : 2,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 311.0, 268.0, 20.0, 20.0 ],
									"id" : "obj-10",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "noteout",
									"numoutlets" : 0,
									"fontsize" : 11.0,
									"patching_rect" : [ 311.0, 430.0, 51.0, 20.0 ],
									"id" : "obj-11",
									"numinlets" : 3,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "makenote 80 300",
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 311.0, 403.0, 106.0, 20.0 ],
									"id" : "obj-12",
									"numinlets" : 3,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 311.0, 346.0, 17.0, 17.0 ],
									"id" : "obj-13",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.seq @seq 60 67 65 62",
									"numoutlets" : 5,
									"outlettype" : [ "", "", "", "", "" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 311.0, 371.0, 185.0, 20.0 ],
									"id" : "obj-14",
									"numinlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.rseq @seq 2 2 1 1",
									"numoutlets" : 5,
									"outlettype" : [ "", "", "", "", "" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 311.0, 316.0, 162.0, 20.0 ],
									"id" : "obj-15",
									"numinlets" : 1,
									"fontname" : "Verdana",
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Then, a separate control can be used to scale the duration",
									"linecount" : 2,
									"numoutlets" : 0,
									"fontsize" : 11.0,
									"patching_rect" : [ 310.0, 233.0, 171.0, 33.0 ],
									"id" : "obj-16",
									"numinlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"numoutlets" : 2,
									"minimum" : 20,
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 11.0,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"patching_rect" : [ 66.0, 44.0, 39.0, 20.0 ],
									"id" : "obj-17",
									"numinlets" : 1,
									"fontname" : "Verdana",
									"triscale" : 0.9,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "metro 300",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 16.0, 67.0, 69.0, 20.0 ],
									"id" : "obj-18",
									"numinlets" : 2,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 16.0, 45.0, 19.0, 19.0 ],
									"id" : "obj-19",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "noteout",
									"numoutlets" : 0,
									"fontsize" : 11.0,
									"patching_rect" : [ 16.0, 177.0, 51.0, 20.0 ],
									"id" : "obj-20",
									"numinlets" : 3,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "makenote 80 300",
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 16.0, 153.0, 106.0, 20.0 ],
									"id" : "obj-21",
									"numinlets" : 3,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 16.0, 111.0, 15.0, 15.0 ],
									"id" : "obj-22",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.seq @seq 60 67 65 62",
									"numoutlets" : 5,
									"outlettype" : [ "", "", "", "", "" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 16.0, 131.0, 185.0, 20.0 ],
									"id" : "obj-23",
									"numinlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.rseq @seq 2 2 1 1",
									"numoutlets" : 5,
									"outlettype" : [ "", "", "", "", "" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 16.0, 90.0, 162.0, 20.0 ],
									"id" : "obj-24",
									"numinlets" : 1,
									"fontname" : "Verdana",
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pgmout",
									"numoutlets" : 0,
									"fontsize" : 11.0,
									"patching_rect" : [ 572.0, 96.0, 51.0, 20.0 ],
									"id" : "obj-25",
									"numinlets" : 2,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "These examples are easier to hear with a sound that sustains (like program 17, organ, in general midi):",
									"linecount" : 3,
									"numoutlets" : 0,
									"fontsize" : 11.0,
									"patching_rect" : [ 349.0, 68.0, 219.0, 47.0 ],
									"id" : "obj-26",
									"numinlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"numoutlets" : 2,
									"minimum" : 0,
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 11.0,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"maximum" : 127,
									"patching_rect" : [ 572.0, 74.0, 40.0, 17.0 ],
									"id" : "obj-27",
									"numinlets" : 1,
									"fontname" : "Courier",
									"triscale" : 0.9,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"numoutlets" : 2,
									"minimum" : 20,
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 11.0,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"patching_rect" : [ 62.0, 259.0, 39.0, 20.0 ],
									"id" : "obj-28",
									"numinlets" : 1,
									"fontname" : "Verdana",
									"triscale" : 0.9,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* 300",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 195.0, 340.0, 44.0, 20.0 ],
									"id" : "obj-29",
									"numinlets" : 2,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "metro 300",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 12.0, 287.0, 69.0, 20.0 ],
									"id" : "obj-30",
									"numinlets" : 2,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 12.0, 262.0, 19.0, 19.0 ],
									"id" : "obj-31",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "noteout",
									"numoutlets" : 0,
									"fontsize" : 11.0,
									"patching_rect" : [ 12.0, 420.0, 51.0, 20.0 ],
									"id" : "obj-32",
									"numinlets" : 3,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "makenote 80 300",
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 12.0, 391.0, 106.0, 20.0 ],
									"id" : "obj-33",
									"numinlets" : 3,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 12.0, 338.0, 17.0, 17.0 ],
									"id" : "obj-34",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.seq @seq 60 67 65 62",
									"numoutlets" : 5,
									"outlettype" : [ "", "", "", "", "" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 12.0, 358.0, 185.0, 20.0 ],
									"id" : "obj-35",
									"numinlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.rseq @seq 2 2 1 1",
									"numoutlets" : 5,
									"outlettype" : [ "", "", "", "", "" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 12.0, 311.0, 162.0, 20.0 ],
									"id" : "obj-36",
									"numinlets" : 1,
									"fontname" : "Verdana",
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "A better approach is to determine the duration by multipying the number of ticks (the rseq value) by the current tick duration (the metro value)",
									"linecount" : 3,
									"numoutlets" : 0,
									"fontsize" : 11.0,
									"patching_rect" : [ 11.0, 215.0, 288.0, 47.0 ],
									"id" : "obj-37",
									"numinlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "If note length is constant, the notes will overlap at faster tempos and play staccato at slower tempos.",
									"linecount" : 2,
									"numoutlets" : 0,
									"fontsize" : 11.0,
									"patching_rect" : [ 14.0, 12.0, 307.0, 33.0 ],
									"id" : "obj-38",
									"numinlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Try making the metro slower and faster",
									"linecount" : 2,
									"numoutlets" : 0,
									"fontsize" : 11.0,
									"patching_rect" : [ 108.0, 50.0, 144.0, 33.0 ],
									"id" : "obj-39",
									"numinlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "staccato",
									"numoutlets" : 0,
									"fontsize" : 11.0,
									"patching_rect" : [ 517.0, 272.0, 56.0, 20.0 ],
									"id" : "obj-40",
									"numinlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Overlapping notes are still possible",
									"linecount" : 3,
									"numoutlets" : 0,
									"fontsize" : 11.0,
									"patching_rect" : [ 544.0, 326.0, 87.0, 47.0 ],
									"id" : "obj-41",
									"numinlets" : 1,
									"fontname" : "Verdana"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-4", 1 ],
									"hidden" : 0,
									"midpoints" : [ 505.5, 354.0, 534.5, 354.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-4", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [ 455.5, 365.0, 512.5, 365.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-8", 1 ],
									"hidden" : 0,
									"midpoints" : [ 370.5, 290.0, 480.5, 290.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [ 320.5, 340.0, 455.5, 340.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-12", 2 ],
									"hidden" : 0,
									"midpoints" : [ 512.5, 398.0, 407.5, 398.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-9", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 1 ],
									"destination" : [ "obj-11", 1 ],
									"hidden" : 0,
									"midpoints" : [ 407.5, 425.0, 336.5, 425.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
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
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-29", 1 ],
									"hidden" : 0,
									"midpoints" : [ 71.5, 282.0, 229.5, 282.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [ 21.5, 334.0, 204.5, 334.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-33", 2 ],
									"hidden" : 0,
									"midpoints" : [ 204.5, 386.0, 108.5, 386.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-18", 1 ],
									"hidden" : 0,
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
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-30", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 1 ],
									"destination" : [ "obj-20", 1 ],
									"hidden" : 0,
									"midpoints" : [ 112.5, 173.0, 41.5, 173.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 1 ],
									"destination" : [ "obj-32", 1 ],
									"hidden" : 0,
									"midpoints" : [ 108.5, 415.0, 37.5, 415.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-20", 0 ],
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
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-32", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-33", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 0 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 0 ],
									"destination" : [ "obj-34", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-36", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 11.1,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"fontname" : "Verdana",
						"default_fontsize" : 11.1
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p \"basic examples\"",
					"numoutlets" : 0,
					"fontsize" : 11.0,
					"patching_rect" : [ 318.0, 68.0, 116.0, 20.0 ],
					"id" : "obj-14",
					"numinlets" : 0,
					"fontname" : "Verdana",
					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 425.0, 48.0, 513.0, 412.0 ],
						"bglocked" : 0,
						"defrect" : [ 425.0, 48.0, 513.0, 412.0 ],
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
									"text" : "sync:",
									"numoutlets" : 0,
									"fontsize" : 11.0,
									"patching_rect" : [ 405.0, 46.0, 44.0, 20.0 ],
									"id" : "obj-1",
									"numinlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "resetindex",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 441.0, 46.0, 69.0, 18.0 ],
									"id" : "obj-2",
									"numinlets" : 2,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 245.0, 291.0, 15.0, 15.0 ],
									"id" : "obj-3",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 89.0, 289.0, 15.0, 15.0 ],
									"id" : "obj-4",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.seq @seq C4 Eb4 G4 D4",
									"numoutlets" : 5,
									"outlettype" : [ "", "", "", "", "" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 245.0, 311.0, 202.0, 20.0 ],
									"id" : "obj-5",
									"numinlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.rseq @seq 3 1",
									"numoutlets" : 5,
									"outlettype" : [ "", "", "", "", "" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 245.0, 268.0, 140.0, 20.0 ],
									"id" : "obj-6",
									"numinlets" : 1,
									"fontname" : "Verdana",
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "metro 250",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 89.0, 238.0, 69.0, 20.0 ],
									"id" : "obj-7",
									"numinlets" : 2,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 89.0, 214.0, 20.0, 20.0 ],
									"id" : "obj-8",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "noteout",
									"numoutlets" : 0,
									"fontsize" : 11.0,
									"patching_rect" : [ 89.0, 368.0, 57.0, 20.0 ],
									"id" : "obj-9",
									"numinlets" : 3,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "makenote 80 100",
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 89.0, 340.0, 115.0, 20.0 ],
									"id" : "obj-10",
									"numinlets" : 3,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "For counterpoint, use a single metro to ensure multiple rseqs stay in sync.",
									"linecount" : 2,
									"numoutlets" : 0,
									"fontsize" : 11.0,
									"patching_rect" : [ 165.0, 222.0, 236.0, 33.0 ],
									"id" : "obj-11",
									"numinlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.seq @seq C3 G3",
									"numoutlets" : 5,
									"outlettype" : [ "", "", "", "", "" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 89.0, 309.0, 150.0, 20.0 ],
									"id" : "obj-12",
									"numinlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.rseq @seq 4",
									"numoutlets" : 5,
									"outlettype" : [ "", "", "", "", "" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 89.0, 267.0, 127.0, 20.0 ],
									"id" : "obj-13",
									"numinlets" : 1,
									"fontname" : "Verdana",
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "metro 150",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 230.0, 42.0, 69.0, 20.0 ],
									"id" : "obj-14",
									"numinlets" : 2,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 230.0, 18.0, 20.0, 20.0 ],
									"id" : "obj-15",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "noteout",
									"numoutlets" : 0,
									"fontsize" : 11.0,
									"patching_rect" : [ 230.0, 166.0, 51.0, 20.0 ],
									"id" : "obj-16",
									"numinlets" : 3,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "makenote 80 100",
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 230.0, 138.0, 106.0, 20.0 ],
									"id" : "obj-17",
									"numinlets" : 3,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 230.0, 92.0, 15.0, 15.0 ],
									"id" : "obj-18",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Create more complex patterns by using sequences of different lengths",
									"linecount" : 2,
									"numoutlets" : 0,
									"fontsize" : 11.0,
									"patching_rect" : [ 260.0, 10.0, 209.0, 33.0 ],
									"id" : "obj-19",
									"numinlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "metro 250",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 12.0, 39.0, 69.0, 20.0 ],
									"id" : "obj-20",
									"numinlets" : 2,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 12.0, 13.0, 21.0, 21.0 ],
									"id" : "obj-21",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "noteout",
									"numoutlets" : 0,
									"fontsize" : 11.0,
									"patching_rect" : [ 12.0, 155.939392, 51.0, 20.0 ],
									"id" : "obj-22",
									"numinlets" : 3,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "makenote 80 200",
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 12.0, 126.560608, 106.0, 20.0 ],
									"id" : "obj-23",
									"numinlets" : 3,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 12.0, 85.333336, 15.0, 15.0 ],
									"id" : "obj-24",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.seq @seq C4 G4 F4 D4",
									"numoutlets" : 5,
									"outlettype" : [ "", "", "", "", "" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 12.0, 103.393936, 186.0, 20.0 ],
									"id" : "obj-25",
									"numinlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.rseq @seq 2 2 1 1",
									"numoutlets" : 5,
									"outlettype" : [ "", "", "", "", "" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 12.0, 62.166668, 162.0, 20.0 ],
									"id" : "obj-26",
									"numinlets" : 1,
									"fontname" : "Verdana",
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Play a sequence of notes rhythmically.",
									"linecount" : 2,
									"numoutlets" : 0,
									"fontsize" : 11.0,
									"patching_rect" : [ 43.0, 9.0, 125.0, 33.0 ],
									"id" : "obj-27",
									"numinlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.seq @seq C4 G4 F4 Eb4 D4",
									"numoutlets" : 5,
									"outlettype" : [ "", "", "", "", "" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 230.0, 114.0, 211.0, 20.0 ],
									"id" : "obj-28",
									"numinlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.rseq @seq 3 3 2 2 2 1 1 1",
									"numoutlets" : 5,
									"outlettype" : [ "", "", "", "", "" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 230.0, 70.0, 205.0, 20.0 ],
									"id" : "obj-29",
									"numinlets" : 1,
									"fontname" : "Verdana",
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [ 98.5, 261.0, 254.5, 261.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 1 ],
									"destination" : [ "obj-16", 1 ],
									"hidden" : 0,
									"midpoints" : [ 326.5, 161.0, 255.5, 161.0 ]
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
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [ 450.5, 109.0, 239.5, 109.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [ 450.5, 65.0, 239.5, 65.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 1 ],
									"destination" : [ "obj-9", 1 ],
									"hidden" : 0,
									"midpoints" : [ 194.5, 363.0, 117.5, 363.0 ]
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
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [ 254.5, 334.0, 98.5, 334.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-13", 0 ],
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
									"source" : [ "obj-23", 1 ],
									"destination" : [ "obj-22", 1 ],
									"hidden" : 0,
									"midpoints" : [ 108.5, 150.621216, 37.5, 150.621216 ]
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
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-23", 0 ],
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
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 11.1,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"fontname" : "Verdana",
						"default_fontsize" : 11.1
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 59.0, 201.0, 15.0, 15.0 ],
					"id" : "obj-15",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "print iteration",
					"numoutlets" : 0,
					"fontsize" : 11.0,
					"patching_rect" : [ 132.0, 234.0, 88.0, 20.0 ],
					"id" : "obj-17",
					"numinlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "print index",
					"numoutlets" : 0,
					"fontsize" : 11.0,
					"patching_rect" : [ 99.0, 257.0, 71.0, 20.0 ],
					"id" : "obj-18",
					"numinlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "print value",
					"numoutlets" : 0,
					"fontsize" : 11.0,
					"patching_rect" : [ 66.0, 283.0, 71.0, 20.0 ],
					"id" : "obj-19",
					"numinlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 66.0, 144.0, 30.0, 30.0 ],
					"id" : "obj-20",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "After outputing an integer N, wait N bangs before outputting the next value.",
					"linecount" : 3,
					"numoutlets" : 0,
					"fontsize" : 11.0,
					"patching_rect" : [ 65.0, 84.0, 173.0, 47.0 ],
					"id" : "obj-21",
					"numinlets" : 1,
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "mxj ajm.rseq @seq 1 2 3",
					"numoutlets" : 5,
					"outlettype" : [ "", "", "", "", "" ],
					"fontsize" : 11.0,
					"patching_rect" : [ 66.0, 179.0, 151.0, 20.0 ],
					"id" : "obj-22",
					"numinlets" : 1,
					"fontname" : "Verdana",
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p \"miscellaneous ideas\"",
					"numoutlets" : 0,
					"fontsize" : 11.0,
					"patching_rect" : [ 318.0, 233.505753, 141.0, 20.0 ],
					"id" : "obj-25",
					"numinlets" : 0,
					"fontname" : "Verdana",
					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 371.0, 50.0, 652.0, 550.0 ],
						"bglocked" : 0,
						"defrect" : [ 371.0, 50.0, 652.0, 550.0 ],
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
									"text" : "pak 63 0",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 12.0, 300.0, 59.0, 20.0 ],
									"id" : "obj-1",
									"numinlets" : 2,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "+ 75",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 12.0, 264.0, 37.0, 20.0 ],
									"id" : "obj-2",
									"numinlets" : 2,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "random 50",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 12.0, 240.0, 69.0, 20.0 ],
									"id" : "obj-3",
									"numinlets" : 2,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "set 1 2",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 372.0, 282.0, 50.0, 18.0 ],
									"hidden" : 1,
									"id" : "obj-4",
									"numinlets" : 2,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "set 1 1 1 1 1 1 6",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 361.0, 104.0, 105.0, 18.0 ],
									"hidden" : 1,
									"id" : "obj-5",
									"numinlets" : 2,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadbang",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 474.0, 17.0, 61.0, 20.0 ],
									"hidden" : 1,
									"id" : "obj-6",
									"numinlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "set 9",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 179.0, 105.0, 39.0, 18.0 ],
									"hidden" : 1,
									"id" : "obj-7",
									"numinlets" : 2,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "set 6 6 12 6 6 6 3",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 12.0, 96.0, 112.0, 18.0 ],
									"hidden" : 1,
									"id" : "obj-8",
									"numinlets" : 2,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "gswitch2",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 273.0, 271.0, 39.0, 32.0 ],
									"int" : 1,
									"id" : "obj-9",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 11.0,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"patching_rect" : [ 198.0, 228.0, 26.0, 20.0 ],
									"id" : "obj-10",
									"numinlets" : 1,
									"fontname" : "Verdana",
									"triscale" : 0.9,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 11.0,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"patching_rect" : [ 32.0, 218.0, 29.0, 20.0 ],
									"id" : "obj-11",
									"numinlets" : 1,
									"fontname" : "Verdana",
									"triscale" : 0.9,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b b",
									"numoutlets" : 2,
									"outlettype" : [ "bang", "bang" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 474.0, 42.0, 34.0, 20.0 ],
									"hidden" : 1,
									"id" : "obj-12",
									"numinlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 11.0,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"patching_rect" : [ 503.0, 359.0, 38.0, 20.0 ],
									"id" : "obj-13",
									"numinlets" : 1,
									"fontname" : "Verdana",
									"triscale" : 0.9,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "scale 0 6 50 110",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 503.0, 337.0, 105.0, 20.0 ],
									"id" : "obj-14",
									"numinlets" : 6,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"fontsize" : 11.0,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"patching_rect" : [ 503.0, 312.0, 37.0, 20.0 ],
									"id" : "obj-15",
									"numinlets" : 1,
									"fontname" : "Verdana",
									"triscale" : 0.9,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "62 100",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 179.0, 393.0, 51.0, 18.0 ],
									"id" : "obj-16",
									"numinlets" : 2,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 372.0, 386.0, 15.0, 15.0 ],
									"id" : "obj-17",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route text",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 372.0, 327.0, 67.0, 20.0 ],
									"id" : "obj-18",
									"numinlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "textedit",
									"text" : "1 2",
									"numoutlets" : 4,
									"lines" : 1,
									"outlettype" : [ "", "int", "", "" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 372.0, 306.0, 128.0, 21.0 ],
									"keymode" : 1,
									"id" : "obj-19",
									"numinlets" : 1,
									"fontname" : "Geneva"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.rseq",
									"numoutlets" : 5,
									"outlettype" : [ "", "", "", "", "" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 372.0, 361.0, 85.0, 20.0 ],
									"id" : "obj-20",
									"numinlets" : 1,
									"fontname" : "Verdana",
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "index 0",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 563.0, 133.0, 51.0, 18.0 ],
									"id" : "obj-21",
									"numinlets" : 2,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 361.0, 227.0, 15.0, 15.0 ],
									"id" : "obj-22",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 179.0, 228.0, 15.0, 15.0 ],
									"id" : "obj-23",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route text",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 361.0, 146.0, 67.0, 20.0 ],
									"id" : "obj-24",
									"numinlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "textedit",
									"text" : "1 1 1 1 1 1 6",
									"numoutlets" : 4,
									"lines" : 1,
									"outlettype" : [ "", "int", "", "" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 361.0, 124.0, 132.0, 21.0 ],
									"keymode" : 1,
									"id" : "obj-25",
									"numinlets" : 1,
									"fontname" : "Geneva"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.rseq",
									"numoutlets" : 5,
									"outlettype" : [ "", "", "", "", "" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 361.0, 199.0, 85.0, 20.0 ],
									"id" : "obj-26",
									"numinlets" : 1,
									"fontname" : "Verdana",
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route text",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 179.0, 147.0, 67.0, 20.0 ],
									"id" : "obj-27",
									"numinlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "textedit",
									"text" : "9",
									"numoutlets" : 4,
									"lines" : 1,
									"outlettype" : [ "", "int", "", "" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 179.0, 125.0, 125.0, 21.0 ],
									"keymode" : 1,
									"id" : "obj-28",
									"numinlets" : 1,
									"fontname" : "Geneva"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.rseq",
									"numoutlets" : 5,
									"outlettype" : [ "", "", "", "", "" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 179.0, 203.0, 85.0, 20.0 ],
									"id" : "obj-29",
									"numinlets" : 1,
									"fontname" : "Verdana",
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route text",
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 12.0, 137.0, 67.0, 20.0 ],
									"id" : "obj-30",
									"numinlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "textedit",
									"text" : "6 6 12 6 6 6 3",
									"numoutlets" : 4,
									"lines" : 1,
									"outlettype" : [ "", "int", "", "" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 12.0, 115.0, 132.0, 21.0 ],
									"keymode" : 1,
									"id" : "obj-31",
									"numinlets" : 1,
									"fontname" : "Geneva"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 12.0, 218.0, 15.0, 15.0 ],
									"id" : "obj-32",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 248.0, 14.0, 28.0, 28.0 ],
									"id" : "obj-33",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "metro 100",
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 248.0, 50.0, 69.0, 20.0 ],
									"id" : "obj-34",
									"numinlets" : 2,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pack 64 80",
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 307.0, 424.0, 72.0, 20.0 ],
									"id" : "obj-35",
									"numinlets" : 2,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "makenote 100 400",
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 179.0, 472.0, 113.0, 20.0 ],
									"id" : "obj-36",
									"numinlets" : 3,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "noteout 10",
									"numoutlets" : 0,
									"fontsize" : 11.0,
									"patching_rect" : [ 179.0, 506.0, 69.0, 20.0 ],
									"id" : "obj-37",
									"numinlets" : 3,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.rseq",
									"numoutlets" : 5,
									"outlettype" : [ "", "", "", "", "" ],
									"fontsize" : 11.0,
									"patching_rect" : [ 12.0, 191.0, 85.0, 20.0 ],
									"id" : "obj-38",
									"numinlets" : 1,
									"fontname" : "Verdana",
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "sync all",
									"numoutlets" : 0,
									"fontsize" : 11.0,
									"patching_rect" : [ 562.0, 114.0, 52.0, 20.0 ],
									"id" : "obj-39",
									"numinlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "on/off",
									"numoutlets" : 0,
									"fontsize" : 11.0,
									"patching_rect" : [ 280.0, 29.0, 42.0, 20.0 ],
									"id" : "obj-40",
									"numinlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "click to toggle chained rseq",
									"linecount" : 4,
									"numoutlets" : 0,
									"fontsize" : 11.0,
									"patching_rect" : [ 229.0, 271.0, 55.0, 60.0 ],
									"id" : "obj-41",
									"numinlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "use list index to scale velocity",
									"linecount" : 2,
									"numoutlets" : 0,
									"fontsize" : 11.0,
									"patching_rect" : [ 543.0, 358.0, 100.0, 33.0 ],
									"id" : "obj-42",
									"numinlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "click and edit any list of rhythms",
									"numoutlets" : 0,
									"fontsize" : 11.0,
									"patching_rect" : [ 156.0, 106.0, 201.0, 20.0 ],
									"id" : "obj-43",
									"numinlets" : 1,
									"fontname" : "Verdana"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "a chained rseq (driven by the rseq above instead of metro)",
									"linecount" : 2,
									"numoutlets" : 0,
									"fontsize" : 11.0,
									"patching_rect" : [ 320.0, 270.0, 176.0, 33.0 ],
									"id" : "obj-44",
									"numinlets" : 1,
									"fontname" : "Verdana"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 1,
									"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 1 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [ 387.0, 238.0, 512.5, 238.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 1 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 1,
									"color" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
									"midpoints" : [ 498.5, 263.0, 381.5, 263.0 ]
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
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 1,
									"color" : [ 0.8, 0.611765, 0.380392, 1.0 ],
									"midpoints" : [ 572.5, 350.0, 381.5, 350.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 1 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 1,
									"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
									"midpoints" : [ 483.5, 290.0, 381.5, 290.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 0 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 1,
									"color" : [ 0.6, 0.6, 1.0, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 1,
									"color" : [ 0.8, 0.611765, 0.380392, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 1,
									"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 1 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 1,
									"color" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-35", 1 ],
									"hidden" : 0,
									"midpoints" : [ 512.5, 420.0, 369.5, 420.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-9", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [ 381.0, 407.0, 316.5, 407.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [ 282.5, 351.0, 316.5, 351.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 1 ],
									"destination" : [ "obj-37", 1 ],
									"hidden" : 0,
									"midpoints" : [ 282.5, 497.0, 213.5, 497.0 ]
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
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 0,
									"midpoints" : [ 21.5, 498.0, 188.5, 498.0 ]
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
									"midpoints" : [ 316.5, 459.0, 188.5, 459.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-36", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 1,
									"color" : [ 0.6, 0.6, 1.0, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 1,
									"color" : [ 0.8, 0.611765, 0.380392, 1.0 ],
									"midpoints" : [  ]
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
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 1,
									"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 1 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 1,
									"color" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-38", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-1", 1 ],
									"hidden" : 0,
									"midpoints" : [ 21.5, 292.0, 61.5, 292.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-38", 0 ],
									"destination" : [ "obj-32", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-38", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 0 ],
									"destination" : [ "obj-38", 0 ],
									"hidden" : 1,
									"color" : [ 0.6, 0.6, 1.0, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-38", 0 ],
									"hidden" : 1,
									"color" : [ 0.8, 0.611765, 0.380392, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 1,
									"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 1 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 1,
									"color" : [ 0.290196, 0.611765, 0.380392, 1.0 ],
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 11.1,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"fontname" : "Verdana",
						"default_fontsize" : 11.1
					}

				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-22", 2 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 1 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
