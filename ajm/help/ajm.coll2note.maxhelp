{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 47.0, 50.0, 669.0, 343.0 ],
		"bglocked" : 0,
		"defrect" : [ 47.0, 50.0, 669.0, 343.0 ],
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
					"text" : "TODO: probabilistic playback",
					"linecount" : 2,
					"fontname" : "Verdana",
					"presentation_rect" : [ 311.0, 185.0, 0.0, 0.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 311.0, 185.0, 150.0, 33.0 ],
					"fontsize" : 11.1,
					"numoutlets" : 0,
					"id" : "obj-2"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "48 80 1.9",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 76.0, 157.0, 85.0, 18.0 ],
					"fontsize" : 11.1,
					"numoutlets" : 1,
					"id" : "obj-6",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "TODO: make a better example with chords",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 198.0, 137.0, 150.0, 33.0 ],
					"fontsize" : 11.1,
					"numoutlets" : 0,
					"id" : "obj-4"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "ajm.relmetro 2n @transport ajm_c2n_help @start 1.1.0 @end 5.1.0",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 58.0, 82.0, 393.0, 20.0 ],
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
					"args" : [ "@transport", "ajm_c2n_help" ],
					"patching_rect" : [ 180.0, 208.0, 115.0, 116.0 ],
					"numoutlets" : 0,
					"id" : "obj-17",
					"name" : "ajm.help-transport.maxpat"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "ajm.coll2note",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 58.0, 191.0, 87.0, 20.0 ],
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
					"patching_rect" : [ 184.0, 186.0, 106.0, 20.0 ],
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"id" : "obj-55"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "format: bars.beats.units, pitch velocity duration_in_beats;",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 133.0, 110.0, 335.0, 20.0 ],
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
					"patching_rect" : [ 58.0, 219.0, 75.0, 20.0 ],
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
					"patching_rect" : [ 58.0, 112.0, 60.0, 20.0 ],
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
					"numinlets" : 1,
					"lockeddragscroll" : 1,
					"args" : [  ],
					"patching_rect" : [ 509.0, 275.0, 145.0, 55.0 ],
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
					"patching_rect" : [ 509.0, 195.0, 61.0, 20.0 ],
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
					"numinlets" : 2,
					"hidden" : 1,
					"patching_rect" : [ 509.0, 219.0, 137.0, 31.0 ],
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
					"patching_rect" : [ 513.0, 9.0, 138.0, 55.0 ],
					"numoutlets" : 0,
					"id" : "obj-48",
					"name" : "ajm.helplinks.maxpat"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "convert midi coll data to noteout format",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 171.0, 20.0, 304.0, 21.0 ],
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"id" : "obj-56"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "ajm.coll2note",
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
					"grad2" : [ 0.219608, 0.564706, 0.462745, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 25.0, 9.0, 465.0, 50.0 ],
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
					"patching_rect" : [ 24.0, 8.0, 468.0, 54.0 ],
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
					"midpoints" : [ 67.5, 144.0, 151.5, 144.0 ]
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
					"source" : [ "obj-3", 1 ],
					"destination" : [ "obj-27", 1 ],
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
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
