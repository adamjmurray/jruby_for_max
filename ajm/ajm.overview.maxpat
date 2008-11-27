{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 7.0, 59.0, 903.0, 391.0 ],
		"bgcolor" : [ 0.666667, 0.713726, 1.0, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 7.0, 59.0, 903.0, 391.0 ],
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
					"text" : "cosy sequencing language",
					"patching_rect" : [ 113.0, 189.0, 166.0, 20.0 ],
					"id" : "obj-58",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 11.0,
					"presentation_rect" : [ 113.0, 189.0, 0.0, 0.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "ajm.busymap",
					"patching_rect" : [ 423.0, 280.0, 86.0, 18.0 ],
					"id" : "obj-57",
					"fontname" : "Verdana",
					"bgcolor" : [ 0.823529, 0.752941, 0.615686, 1.0 ],
					"numinlets" : 2,
					"fontsize" : 11.0,
					"presentation_rect" : [ 473.0, 266.0, 0.0, 0.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Ruby Abstraction",
					"linecount" : 2,
					"patching_rect" : [ 569.0, 16.0, 71.0, 33.0 ],
					"id" : "obj-55",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 11.0,
					"presentation_rect" : [ 560.0, 14.0, 0.0, 0.0 ],
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"patching_rect" : [ 440.0, 37.0, 18.0, 18.0 ],
					"id" : "obj-56",
					"fontname" : "Verdana",
					"bgcolor" : [ 0.823529, 0.752941, 0.615686, 1.0 ],
					"numinlets" : 2,
					"fontsize" : 11.0,
					"presentation_rect" : [ 543.0, 12.0, 0.0, 0.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "fpic",
					"patching_rect" : [ 659.0, 12.0, 19.0, 20.0 ],
					"pic" : "compusition.gif",
					"id" : "obj-1",
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "© 2008 Adam Murray",
					"patching_rect" : [ 679.0, 12.0, 134.0, 18.0 ],
					"id" : "obj-2",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"fontsize" : 11.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b",
					"patching_rect" : [ 679.0, 35.0, 28.0, 20.0 ],
					"id" : "obj-3",
					"fontname" : "Verdana",
					"hidden" : 1,
					"numinlets" : 1,
					"fontsize" : 11.0,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "load ajm.about",
					"patching_rect" : [ 679.0, 53.0, 116.0, 18.0 ],
					"id" : "obj-4",
					"fontname" : "Verdana",
					"hidden" : 1,
					"numinlets" : 2,
					"fontsize" : 11.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"patching_rect" : [ 679.0, 71.0, 56.0, 20.0 ],
					"id" : "obj-5",
					"fontname" : "Verdana",
					"hidden" : 1,
					"numinlets" : 1,
					"fontsize" : 11.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 654.0, 7.0, 166.0, 29.0 ],
					"id" : "obj-6",
					"rounded" : 12,
					"shadow" : 3,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"border" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "bgcolor 170 182 255",
					"patching_rect" : [ 699.0, 358.0, 128.0, 20.0 ],
					"id" : "obj-7",
					"fontname" : "Verdana",
					"hidden" : 1,
					"numinlets" : 4,
					"fontsize" : 11.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "dst[1]",
					"text" : "prepend load",
					"patching_rect" : [ 460.0, 345.0, 95.0, 20.0 ],
					"id" : "obj-8",
					"fontname" : "Verdana",
					"hidden" : 1,
					"numinlets" : 1,
					"fontsize" : 11.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "ajm.ruby",
					"patching_rect" : [ 422.0, 106.0, 61.0, 18.0 ],
					"id" : "obj-9",
					"fontname" : "Verdana",
					"bgcolor" : [ 0.611765, 0.701961, 1.0, 1.0 ],
					"numinlets" : 2,
					"fontsize" : 11.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "language",
					"patching_rect" : [ 423.0, 79.0, 88.0, 20.0 ],
					"id" : "obj-10",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 11.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "pattrstorage UI with queued preset recall",
					"patching_rect" : [ 516.0, 248.0, 241.0, 20.0 ],
					"id" : "obj-11",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 11.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "message-driven signal envelope (includes bpatcher UI)",
					"patching_rect" : [ 80.0, 309.0, 314.0, 20.0 ],
					"id" : "obj-12",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 11.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "JSUI",
					"patching_rect" : [ 336.0, 38.0, 97.0, 20.0 ],
					"id" : "obj-13",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 11.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Bpatcher",
					"patching_rect" : [ 461.0, 36.0, 89.0, 20.0 ],
					"id" : "obj-14",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 11.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Abstraction",
					"patching_rect" : [ 458.0, 15.0, 90.0, 20.0 ],
					"id" : "obj-15",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 11.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"patching_rect" : [ 317.0, 13.0, 18.0, 18.0 ],
					"id" : "obj-16",
					"fontname" : "Verdana",
					"bgcolor" : [ 0.611765, 0.701961, 1.0, 1.0 ],
					"numinlets" : 2,
					"fontsize" : 11.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"patching_rect" : [ 441.0, 13.0, 18.0, 18.0 ],
					"id" : "obj-17",
					"fontname" : "Verdana",
					"bgcolor" : [ 0.545098, 0.85098, 0.592157, 1.0 ],
					"numinlets" : 2,
					"fontsize" : 11.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"patching_rect" : [ 318.0, 38.0, 18.0, 18.0 ],
					"id" : "obj-18",
					"fontname" : "Verdana",
					"bgcolor" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"numinlets" : 2,
					"fontsize" : 11.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"patching_rect" : [ 552.0, 23.0, 18.0, 18.0 ],
					"id" : "obj-19",
					"fontname" : "Verdana",
					"bgcolor" : [ 1.0, 0.611765, 0.611765, 1.0 ],
					"numinlets" : 2,
					"fontsize" : 11.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "ajm.psui",
					"patching_rect" : [ 421.0, 247.0, 58.0, 18.0 ],
					"id" : "obj-20",
					"fontname" : "Verdana",
					"bgcolor" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"numinlets" : 2,
					"fontsize" : 11.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "ajm.env",
					"patching_rect" : [ 17.0, 309.0, 56.0, 18.0 ],
					"id" : "obj-21",
					"fontname" : "Verdana",
					"bgcolor" : [ 0.545098, 0.85098, 0.592157, 1.0 ],
					"numinlets" : 2,
					"fontsize" : 11.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "oscillator with speed, range, and shape controls.",
					"patching_rect" : [ 80.0, 279.0, 293.0, 20.0 ],
					"id" : "obj-22",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 11.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "ajm.lfo",
					"patching_rect" : [ 18.0, 278.0, 50.0, 18.0 ],
					"id" : "obj-23",
					"fontname" : "Verdana",
					"bgcolor" : [ 0.545098, 0.85098, 0.592157, 1.0 ],
					"numinlets" : 2,
					"fontsize" : 11.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "evaluate MIDI note names and other seqeuncing syntax",
					"patching_rect" : [ 490.0, 139.0, 319.0, 20.0 ],
					"id" : "obj-24",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 11.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "ajm.eval",
					"patching_rect" : [ 422.0, 140.0, 58.0, 18.0 ],
					"id" : "obj-25",
					"fontname" : "Verdana",
					"bgcolor" : [ 0.611765, 0.701961, 1.0, 1.0 ],
					"numinlets" : 2,
					"fontsize" : 11.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"patching_rect" : [ 375.0, 370.0, 56.0, 20.0 ],
					"id" : "obj-26",
					"fontname" : "Verdana",
					"hidden" : 1,
					"numinlets" : 1,
					"fontsize" : 11.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "ajm.rseq2seq",
					"patching_rect" : [ 18.0, 160.0, 86.0, 18.0 ],
					"id" : "obj-27",
					"fontname" : "Verdana",
					"bgcolor" : [ 0.545098, 0.85098, 0.592157, 1.0 ],
					"numinlets" : 2,
					"fontsize" : 11.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "synthesis",
					"patching_rect" : [ 26.0, 253.0, 68.0, 20.0 ],
					"id" : "obj-28",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 11.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "visualization of the poly~ busymap",
					"patching_rect" : [ 516.0, 279.0, 206.0, 20.0 ],
					"id" : "obj-29",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 11.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "ajm.cosy",
					"patching_rect" : [ 19.0, 190.0, 60.0, 18.0 ],
					"id" : "obj-30",
					"fontname" : "Verdana",
					"bgcolor" : [ 1.0, 0.611765, 0.611765, 1.0 ],
					"numinlets" : 2,
					"fontsize" : 11.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "route messages to poly~ targets with OSC syntax",
					"patching_rect" : [ 517.0, 310.0, 287.0, 20.0 ],
					"id" : "obj-31",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 11.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "ajm.polyroute",
					"patching_rect" : [ 421.0, 310.0, 88.0, 18.0 ],
					"id" : "obj-32",
					"fontname" : "Verdana",
					"bgcolor" : [ 0.545098, 0.85098, 0.592157, 1.0 ],
					"numinlets" : 2,
					"fontsize" : 11.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "ajm objects overview",
					"patching_rect" : [ 63.0, 18.0, 199.0, 27.0 ],
					"id" : "obj-33",
					"fontname" : "Arial",
					"numinlets" : 1,
					"fontsize" : 18.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "misc",
					"patching_rect" : [ 423.0, 220.0, 88.0, 20.0 ],
					"id" : "obj-34",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 11.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "a rhythmic version of ajm.seq",
					"patching_rect" : [ 112.0, 133.0, 217.0, 20.0 ],
					"id" : "obj-35",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 11.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "ajm.rseq",
					"patching_rect" : [ 18.0, 132.0, 59.0, 18.0 ],
					"id" : "obj-36",
					"fontname" : "Verdana",
					"bgcolor" : [ 0.611765, 0.701961, 1.0, 1.0 ],
					"numinlets" : 2,
					"fontsize" : 11.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "ajm.seq",
					"patching_rect" : [ 19.0, 107.0, 53.0, 18.0 ],
					"id" : "obj-37",
					"fontname" : "Verdana",
					"bgcolor" : [ 0.611765, 0.701961, 1.0, 1.0 ],
					"numinlets" : 2,
					"fontsize" : 11.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "dst",
					"text" : "prepend help",
					"patching_rect" : [ 375.0, 347.0, 81.0, 20.0 ],
					"id" : "obj-38",
					"fontname" : "Verdana",
					"hidden" : 1,
					"numinlets" : 1,
					"fontsize" : 11.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "sequencing",
					"patching_rect" : [ 24.0, 80.0, 73.0, 20.0 ],
					"id" : "obj-39",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 11.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "a looping sequence of notes, chords, or data",
					"patching_rect" : [ 112.0, 107.0, 276.0, 20.0 ],
					"id" : "obj-40",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 11.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "simplifies connecting ajm.rseq to ajm.seq",
					"patching_rect" : [ 113.0, 160.0, 263.0, 20.0 ],
					"id" : "obj-41",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 11.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Java external",
					"patching_rect" : [ 333.0, 15.0, 91.0, 20.0 ],
					"id" : "obj-42",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 11.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 308.0, 6.0, 336.0, 57.0 ],
					"id" : "obj-43",
					"rounded" : 6,
					"shadow" : 3,
					"bgcolor" : [ 0.756863, 0.921569, 0.878431, 1.0 ],
					"numinlets" : 1,
					"border" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "evaluate Ruby code",
					"patching_rect" : [ 492.0, 105.0, 121.0, 20.0 ],
					"id" : "obj-44",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 11.0,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 411.0, 237.0, 405.0, 106.0 ],
					"id" : "obj-45",
					"rounded" : 2,
					"shadow" : 3,
					"grad2" : [ 0.843137, 0.843137, 0.843137, 1.0 ],
					"angle" : 270.0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"mode" : 1,
					"numinlets" : 1,
					"border" : 1,
					"numoutlets" : 0,
					"grad1" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 9.0, 97.0, 369.0, 127.0 ],
					"id" : "obj-46",
					"rounded" : 2,
					"shadow" : 3,
					"grad2" : [ 0.843137, 0.843137, 0.843137, 1.0 ],
					"angle" : 270.0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"mode" : 1,
					"numinlets" : 1,
					"border" : 1,
					"numoutlets" : 0,
					"grad1" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 9.0, 270.0, 387.0, 68.0 ],
					"id" : "obj-47",
					"rounded" : 2,
					"shadow" : 3,
					"grad2" : [ 0.843137, 0.843137, 0.843137, 1.0 ],
					"angle" : 270.0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"mode" : 1,
					"numinlets" : 1,
					"border" : 1,
					"numoutlets" : 0,
					"grad1" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 411.0, 96.0, 405.0, 73.0 ],
					"id" : "obj-48",
					"rounded" : 2,
					"shadow" : 3,
					"grad2" : [ 0.843137, 0.843137, 0.843137, 1.0 ],
					"angle" : 270.0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"mode" : 1,
					"numinlets" : 1,
					"border" : 1,
					"numoutlets" : 0,
					"grad1" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 18.0, 15.0, 271.0, 31.0 ],
					"id" : "obj-50",
					"rounded" : 12,
					"grad2" : [ 0.219608, 0.564706, 0.462745, 1.0 ],
					"angle" : 270.0,
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"grad1" : [ 0.823529, 1.0, 0.956863, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 17.0, 14.0, 274.0, 35.0 ],
					"id" : "obj-54",
					"rounded" : 16,
					"grad2" : [ 0.0, 0.0, 0.0, 1.0 ],
					"angle" : 270.0,
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"grad1" : [ 0.866667, 0.866667, 0.866667, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 411.0, 217.0, 86.0, 40.0 ],
					"id" : "obj-49",
					"rounded" : 7,
					"shadow" : 3,
					"bgcolor" : [ 0.729412, 0.811765, 0.890196, 1.0 ],
					"numinlets" : 1,
					"border" : 1,
					"numoutlets" : 0,
					"background" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 9.0, 251.0, 102.0, 54.0 ],
					"id" : "obj-51",
					"rounded" : 7,
					"shadow" : 3,
					"bgcolor" : [ 0.729412, 0.811765, 0.890196, 1.0 ],
					"numinlets" : 1,
					"border" : 1,
					"numoutlets" : 0,
					"background" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 411.0, 77.0, 126.0, 61.0 ],
					"id" : "obj-52",
					"rounded" : 7,
					"shadow" : 3,
					"bgcolor" : [ 0.729412, 0.811765, 0.890196, 1.0 ],
					"numinlets" : 1,
					"border" : 1,
					"numoutlets" : 0,
					"background" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 9.0, 78.0, 108.0, 40.0 ],
					"id" : "obj-53",
					"rounded" : 7,
					"shadow" : 3,
					"bgcolor" : [ 0.729412, 0.811765, 0.890196, 1.0 ],
					"numinlets" : 1,
					"border" : 1,
					"numoutlets" : 0,
					"background" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-57", 0 ],
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
					"source" : [ "obj-37", 0 ],
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
					"source" : [ "obj-32", 0 ],
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
					"source" : [ "obj-25", 0 ],
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
					"source" : [ "obj-21", 0 ],
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
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-38", 0 ],
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
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 1,
					"midpoints" : [ 469.5, 367.0, 384.5, 367.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-4", 0 ],
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
 ]
	}

}
