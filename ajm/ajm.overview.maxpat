{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 77.0, 52.0, 901.0, 435.0 ],
		"bgcolor" : [ 0.666667, 0.713726, 1.0, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 77.0, 52.0, 901.0, 435.0 ],
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
					"text" : "convert midi files to coll data",
					"fontname" : "Verdana",
					"presentation_rect" : [ 115.0, 269.0, 0.0, 0.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 115.0, 270.0, 270.0, 20.0 ],
					"fontsize" : 11.0,
					"id" : "obj-68",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "convert midi coll data to makenote format",
					"fontname" : "Verdana",
					"presentation_rect" : [ 115.0, 239.0, 0.0, 0.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 115.0, 241.0, 270.0, 20.0 ],
					"fontsize" : 11.0,
					"id" : "obj-67",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "relative time transport-synced metro",
					"fontname" : "Verdana",
					"presentation_rect" : [ 114.0, 212.0, 0.0, 0.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 114.0, 212.0, 242.0, 20.0 ],
					"fontsize" : 11.0,
					"id" : "obj-66",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "ajm.coll2note",
					"fontname" : "Verdana",
					"presentation_rect" : [ 20.0, 244.0, 0.0, 0.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 19.0, 243.0, 87.0, 18.0 ],
					"fontsize" : 11.0,
					"bgcolor" : [ 0.545098, 0.85098, 0.592157, 1.0 ],
					"id" : "obj-65",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "ajm.midi2coll",
					"fontname" : "Verdana",
					"presentation_rect" : [ 112.0, 239.0, 0.0, 0.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 19.0, 272.0, 85.0, 18.0 ],
					"fontsize" : 11.0,
					"bgcolor" : [ 1.0, 0.611765, 0.611765, 1.0 ],
					"id" : "obj-64",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "ajm.relmetro",
					"fontname" : "Verdana",
					"presentation_rect" : [ 38.0, 226.0, 0.0, 0.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 19.0, 215.0, 83.0, 18.0 ],
					"fontsize" : 11.0,
					"bgcolor" : [ 0.545098, 0.85098, 0.592157, 1.0 ],
					"id" : "obj-2",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"fontname" : "Arial",
					"presentation_rect" : [ 34.0, 56.0, 123.0, 17.0 ],
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"patching_rect" : [ 678.0, 12.0, 124.0, 18.0 ],
					"fontsize" : 12.0,
					"presentation" : 1,
					"texton" : "Stop",
					"border" : 1,
					"rounded" : 20.0,
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgovercolor" : [ 0.784314, 0.909804, 0.917647, 1.0 ],
					"text" : "© 2008 Adam Murray",
					"bgcolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
					"id" : "obj-63",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "print error message to the Max window",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"patching_rect" : [ 541.0, 244.0, 241.0, 20.0 ],
					"fontsize" : 11.0,
					"id" : "obj-62",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "ajm.error",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 448.0, 246.0, 64.0, 18.0 ],
					"fontsize" : 11.0,
					"bgcolor" : [ 1.0, 1.0, 0.337255, 1.0 ],
					"id" : "obj-61",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "js",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"patching_rect" : [ 336.0, 38.0, 25.0, 20.0 ],
					"fontsize" : 11.0,
					"id" : "obj-60",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 375.0, 38.0, 18.0, 18.0 ],
					"fontsize" : 11.0,
					"bgcolor" : [ 1.0, 0.588235, 0.188235, 1.0 ],
					"id" : "obj-59",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "cosy sequencing language",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"patching_rect" : [ 113.0, 186.0, 166.0, 20.0 ],
					"fontsize" : 11.0,
					"id" : "obj-58",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "ajm.busymap",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 449.0, 278.0, 86.0, 18.0 ],
					"fontsize" : 11.0,
					"bgcolor" : [ 0.823529, 0.752941, 0.615686, 1.0 ],
					"id" : "obj-57",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Ruby abstraction",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"patching_rect" : [ 569.0, 16.0, 71.0, 33.0 ],
					"fontsize" : 11.0,
					"id" : "obj-55",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 440.0, 37.0, 18.0, 18.0 ],
					"fontsize" : 11.0,
					"bgcolor" : [ 0.823529, 0.752941, 0.615686, 1.0 ],
					"id" : "obj-56",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "fpic",
					"numoutlets" : 0,
					"patching_rect" : [ 659.0, 13.0, 19.0, 20.0 ],
					"pic" : "compusition.gif",
					"id" : "obj-1",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "load ajm.about",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"hidden" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 678.0, 39.0, 116.0, 18.0 ],
					"fontsize" : 11.0,
					"id" : "obj-4",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"hidden" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 678.0, 62.0, 56.0, 20.0 ],
					"fontsize" : 11.0,
					"id" : "obj-5",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"shadow" : 3,
					"patching_rect" : [ 654.0, 8.0, 156.0, 28.0 ],
					"border" : 1,
					"rounded" : 12,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-6",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "bgcolor 170 182 255",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"hidden" : 1,
					"patching_rect" : [ 699.0, 358.0, 128.0, 20.0 ],
					"fontsize" : 11.0,
					"id" : "obj-7",
					"numinlets" : 4
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "ajm.ruby",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 447.0, 106.0, 61.0, 18.0 ],
					"fontsize" : 11.0,
					"bgcolor" : [ 0.611765, 0.701961, 1.0, 1.0 ],
					"id" : "obj-9",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "language",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"patching_rect" : [ 448.0, 79.0, 88.0, 20.0 ],
					"fontsize" : 11.0,
					"id" : "obj-10",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "pattrstorage UI with queued preset recall",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"patching_rect" : [ 541.0, 218.0, 241.0, 20.0 ],
					"fontsize" : 11.0,
					"id" : "obj-11",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "message-driven signal envelope (includes bpatcher UI)",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"patching_rect" : [ 82.0, 383.0, 314.0, 20.0 ],
					"fontsize" : 11.0,
					"id" : "obj-12",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jsui",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"patching_rect" : [ 394.0, 39.0, 34.0, 20.0 ],
					"fontsize" : 11.0,
					"id" : "obj-13",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "bpatcher",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"patching_rect" : [ 458.0, 36.0, 89.0, 20.0 ],
					"fontsize" : 11.0,
					"id" : "obj-14",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "abstraction",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"patching_rect" : [ 458.0, 15.0, 90.0, 20.0 ],
					"fontsize" : 11.0,
					"id" : "obj-15",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 317.0, 13.0, 18.0, 18.0 ],
					"fontsize" : 11.0,
					"bgcolor" : [ 0.611765, 0.701961, 1.0, 1.0 ],
					"id" : "obj-16",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 441.0, 13.0, 18.0, 18.0 ],
					"fontsize" : 11.0,
					"bgcolor" : [ 0.545098, 0.85098, 0.592157, 1.0 ],
					"id" : "obj-17",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 318.0, 38.0, 18.0, 18.0 ],
					"fontsize" : 11.0,
					"bgcolor" : [ 1.0, 1.0, 0.337255, 1.0 ],
					"id" : "obj-18",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 552.0, 23.0, 18.0, 18.0 ],
					"fontsize" : 11.0,
					"bgcolor" : [ 1.0, 0.611765, 0.611765, 1.0 ],
					"id" : "obj-19",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "ajm.psui",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 448.0, 217.0, 58.0, 18.0 ],
					"fontsize" : 11.0,
					"bgcolor" : [ 1.0, 0.588235, 0.188235, 1.0 ],
					"id" : "obj-20",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "ajm.env",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 19.0, 383.0, 56.0, 18.0 ],
					"fontsize" : 11.0,
					"bgcolor" : [ 0.545098, 0.85098, 0.592157, 1.0 ],
					"id" : "obj-21",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "oscillator with speed, range, and shape controls.",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"patching_rect" : [ 82.0, 353.0, 293.0, 20.0 ],
					"fontsize" : 11.0,
					"id" : "obj-22",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "ajm.lfo",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 20.0, 352.0, 50.0, 18.0 ],
					"fontsize" : 11.0,
					"bgcolor" : [ 0.545098, 0.85098, 0.592157, 1.0 ],
					"id" : "obj-23",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "evaluate MIDI note names and other seqeuncing syntax",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"patching_rect" : [ 515.0, 139.0, 319.0, 20.0 ],
					"fontsize" : 11.0,
					"id" : "obj-24",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "ajm.eval",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 447.0, 140.0, 58.0, 18.0 ],
					"fontsize" : 11.0,
					"bgcolor" : [ 0.611765, 0.701961, 1.0, 1.0 ],
					"id" : "obj-25",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"hidden" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 388.0, 442.0, 56.0, 20.0 ],
					"fontsize" : 11.0,
					"id" : "obj-26",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "ajm.rseq2seq",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 19.0, 159.0, 86.0, 18.0 ],
					"fontsize" : 11.0,
					"bgcolor" : [ 0.545098, 0.85098, 0.592157, 1.0 ],
					"id" : "obj-27",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "synthesis",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"patching_rect" : [ 28.0, 327.0, 68.0, 20.0 ],
					"fontsize" : 11.0,
					"id" : "obj-28",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "visualization of the poly~ busymap",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"patching_rect" : [ 542.0, 277.0, 206.0, 20.0 ],
					"fontsize" : 11.0,
					"id" : "obj-29",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "ajm.cosy",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 19.0, 187.0, 60.0, 18.0 ],
					"fontsize" : 11.0,
					"bgcolor" : [ 1.0, 0.611765, 0.611765, 1.0 ],
					"id" : "obj-30",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "route messages to poly~ targets with OSC syntax",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"patching_rect" : [ 543.0, 306.0, 287.0, 20.0 ],
					"fontsize" : 11.0,
					"id" : "obj-31",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "ajm.polyroute",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 447.0, 308.0, 88.0, 18.0 ],
					"fontsize" : 11.0,
					"bgcolor" : [ 0.545098, 0.85098, 0.592157, 1.0 ],
					"id" : "obj-32",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "ajm objects overview",
					"fontname" : "Arial",
					"numoutlets" : 0,
					"patching_rect" : [ 63.0, 18.0, 199.0, 27.0 ],
					"fontsize" : 18.0,
					"id" : "obj-33",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "misc",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"patching_rect" : [ 448.0, 190.0, 88.0, 20.0 ],
					"fontsize" : 11.0,
					"id" : "obj-34",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "a rhythmic version of ajm.seq",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"patching_rect" : [ 112.0, 131.0, 217.0, 20.0 ],
					"fontsize" : 11.0,
					"id" : "obj-35",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "ajm.rseq",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 19.0, 133.0, 59.0, 18.0 ],
					"fontsize" : 11.0,
					"bgcolor" : [ 0.611765, 0.701961, 1.0, 1.0 ],
					"id" : "obj-36",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "ajm.seq",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 19.0, 107.0, 53.0, 18.0 ],
					"fontsize" : 11.0,
					"bgcolor" : [ 0.611765, 0.701961, 1.0, 1.0 ],
					"id" : "obj-37",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "dst",
					"text" : "prepend help",
					"fontname" : "Verdana",
					"numoutlets" : 1,
					"hidden" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 388.0, 419.0, 81.0, 20.0 ],
					"fontsize" : 11.0,
					"id" : "obj-38",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "sequencing",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"patching_rect" : [ 24.0, 80.0, 73.0, 20.0 ],
					"fontsize" : 11.0,
					"id" : "obj-39",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "a looping sequence of notes, chords, or data",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"patching_rect" : [ 112.0, 107.0, 276.0, 20.0 ],
					"fontsize" : 11.0,
					"id" : "obj-40",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "simplifies connecting ajm.rseq to ajm.seq",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"patching_rect" : [ 112.0, 158.0, 263.0, 20.0 ],
					"fontsize" : 11.0,
					"id" : "obj-41",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Java external",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"patching_rect" : [ 333.0, 15.0, 91.0, 20.0 ],
					"fontsize" : 11.0,
					"id" : "obj-42",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"shadow" : 3,
					"patching_rect" : [ 308.0, 6.0, 336.0, 57.0 ],
					"border" : 1,
					"rounded" : 6,
					"bgcolor" : [ 0.756863, 0.921569, 0.878431, 1.0 ],
					"id" : "obj-43",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "evaluate Ruby code",
					"fontname" : "Verdana",
					"numoutlets" : 0,
					"patching_rect" : [ 517.0, 105.0, 121.0, 20.0 ],
					"fontsize" : 11.0,
					"id" : "obj-44",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"shadow" : 3,
					"angle" : 270.0,
					"patching_rect" : [ 436.0, 207.0, 403.0, 135.0 ],
					"mode" : 1,
					"border" : 1,
					"rounded" : 2,
					"grad1" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-45",
					"grad2" : [ 0.843137, 0.843137, 0.843137, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"shadow" : 3,
					"angle" : 270.0,
					"patching_rect" : [ 9.0, 97.0, 389.0, 207.0 ],
					"mode" : 1,
					"border" : 1,
					"rounded" : 2,
					"grad1" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-46",
					"grad2" : [ 0.843137, 0.843137, 0.843137, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"shadow" : 3,
					"angle" : 270.0,
					"patching_rect" : [ 11.0, 344.0, 387.0, 68.0 ],
					"mode" : 1,
					"border" : 1,
					"rounded" : 2,
					"grad1" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-47",
					"grad2" : [ 0.843137, 0.843137, 0.843137, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"shadow" : 3,
					"angle" : 270.0,
					"patching_rect" : [ 436.0, 96.0, 405.0, 73.0 ],
					"mode" : 1,
					"border" : 1,
					"rounded" : 2,
					"grad1" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-48",
					"grad2" : [ 0.843137, 0.843137, 0.843137, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"angle" : 270.0,
					"patching_rect" : [ 18.0, 15.0, 271.0, 31.0 ],
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
					"patching_rect" : [ 17.0, 14.0, 274.0, 35.0 ],
					"mode" : 1,
					"rounded" : 16,
					"grad1" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"id" : "obj-54",
					"grad2" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"shadow" : 3,
					"patching_rect" : [ 436.0, 187.0, 86.0, 40.0 ],
					"border" : 1,
					"rounded" : 7,
					"bgcolor" : [ 0.729412, 0.811765, 0.890196, 1.0 ],
					"id" : "obj-49",
					"background" : 1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"shadow" : 3,
					"patching_rect" : [ 11.0, 325.0, 102.0, 54.0 ],
					"border" : 1,
					"rounded" : 7,
					"bgcolor" : [ 0.729412, 0.811765, 0.890196, 1.0 ],
					"id" : "obj-51",
					"background" : 1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"shadow" : 3,
					"patching_rect" : [ 436.0, 77.0, 126.0, 61.0 ],
					"border" : 1,
					"rounded" : 7,
					"bgcolor" : [ 0.729412, 0.811765, 0.890196, 1.0 ],
					"id" : "obj-52",
					"background" : 1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"shadow" : 3,
					"patching_rect" : [ 9.0, 78.0, 108.0, 40.0 ],
					"border" : 1,
					"rounded" : 7,
					"bgcolor" : [ 0.729412, 0.811765, 0.890196, 1.0 ],
					"id" : "obj-53",
					"background" : 1,
					"numinlets" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-64", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-65", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-61", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-63", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
