{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 23.0, 49.0, 664.0, 308.0 ],
		"bglocked" : 0,
		"defrect" : [ 23.0, 49.0, 664.0, 308.0 ],
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
					"text" : "durations are expressed in beats for the specified metro",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 161.0, 163.0, 172.0, 33.0 ],
					"fontsize" : 11.1,
					"numoutlets" : 0,
					"id" : "obj-14"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "For simultaneous notes:",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 511.0, 89.0, 149.0, 20.0 ],
					"fontsize" : 11.1,
					"numoutlets" : 0,
					"id" : "obj-12"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p chords",
					"fontname" : "Verdana",
					"numinlets" : 0,
					"patching_rect" : [ 513.0, 110.0, 58.0, 20.0 ],
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
									"text" : "ajm.relmetro 2n @transport ajm_mn_chord @start 1.1.0",
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
									"hidden" : 1,
									"numinlets" : 1,
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
									"numinlets" : 1,
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
									"numinlets" : 0,
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
									"text" : "each coll entry can contain multiple notes using the more general format:\nbars.beats.units, pitch1 velocity1 duration1 ... pitchN velocityN durationN;",
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
									"midpoints" : [ 23.5, 88.0, 256.5, 88.0 ]
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
					"maxclass" : "message",
					"text" : "48 80 1.9",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 72.0, 163.0, 85.0, 18.0 ],
					"fontsize" : 11.1,
					"numoutlets" : 1,
					"id" : "obj-6",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "ajm.relmetro 2n @transport ajm_mn_help @start 1.1.0 @end 5.1.0",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 54.0, 88.0, 391.0, 20.0 ],
					"fontsize" : 11.1,
					"numoutlets" : 2,
					"id" : "obj-1",
					"outlettype" : [ "", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"numinlets" : 0,
					"args" : [ "@transport", "ajm_mn_help" ],
					"patching_rect" : [ 357.0, 179.0, 115.0, 116.0 ],
					"numoutlets" : 0,
					"id" : "obj-17",
					"name" : "ajm.help-transport.maxpat"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "ajm.makenote @transport ajm_mn_help",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 54.0, 197.0, 236.0, 20.0 ],
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
					"patching_rect" : [ 361.0, 157.0, 106.0, 20.0 ],
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"id" : "obj-55"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "format: bars.beats.units, pitch velocity duration;",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 129.0, 116.0, 335.0, 20.0 ],
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
					"patching_rect" : [ 54.0, 236.0, 75.0, 20.0 ],
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
					"patching_rect" : [ 54.0, 118.0, 60.0, 20.0 ],
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
					"maxclass" : "bpatcher",
					"lockeddragscroll" : 1,
					"numinlets" : 1,
					"args" : [  ],
					"patching_rect" : [ 508.0, 244.0, 145.0, 55.0 ],
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
					"hidden" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 508.0, 164.0, 61.0, 20.0 ],
					"fontsize" : 11.1,
					"numoutlets" : 1,
					"id" : "obj-74",
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "ajm.relmetro, ajm.midi2coll, noteout",
					"linecount" : 2,
					"fontname" : "Verdana",
					"hidden" : 1,
					"numinlets" : 2,
					"patching_rect" : [ 508.0, 188.0, 137.0, 31.0 ],
					"fontsize" : 11.1,
					"numoutlets" : 1,
					"id" : "obj-73",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"lockeddragscroll" : 1,
					"numinlets" : 0,
					"args" : [  ],
					"patching_rect" : [ 513.0, 9.0, 138.0, 55.0 ],
					"numoutlets" : 0,
					"id" : "obj-48",
					"name" : "ajm.helplinks.maxpat"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "make notes from a pitch,velocity,duration list\nwith duration expressed in beats ",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 162.0, 16.0, 288.0, 36.0 ],
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
					"angle" : 270.0,
					"grad1" : [ 0.823529, 1.0, 0.956863, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 25.0, 9.0, 465.0, 50.0 ],
					"grad2" : [ 0.219608, 0.564706, 0.462745, 1.0 ],
					"mode" : 1,
					"rounded" : 12,
					"numoutlets" : 0,
					"id" : "obj-50"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"angle" : 270.0,
					"grad1" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 24.0, 8.0, 468.0, 54.0 ],
					"grad2" : [ 0.0, 0.0, 0.0, 1.0 ],
					"mode" : 1,
					"rounded" : 16,
					"numoutlets" : 0,
					"id" : "obj-54"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-6", 1 ],
					"hidden" : 0,
					"midpoints" : [ 63.5, 150.0, 147.5, 150.0 ]
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
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
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
					"source" : [ "obj-3", 1 ],
					"destination" : [ "obj-27", 1 ],
					"hidden" : 0,
					"midpoints" : [ 280.5, 225.0, 91.5, 225.0 ]
				}

			}
 ]
	}

}
