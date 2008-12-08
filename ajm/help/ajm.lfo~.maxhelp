{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 66.0, 75.0, 651.0, 608.0 ],
		"bglocked" : 0,
		"defrect" : [ 66.0, 75.0, 651.0, 608.0 ],
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
					"patching_rect" : [ 224.0, 581.0, 73.0, 20.0 ],
					"fontsize" : 11.1,
					"numoutlets" : 2,
					"id" : "obj-23",
					"outlettype" : [ "", "" ],
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "ajm.bring-to-front-listener ajm.lfo~",
					"fontname" : "Verdana",
					"hidden" : 1,
					"numinlets" : 0,
					"patching_rect" : [ 224.0, 555.0, 211.0, 20.0 ],
					"fontsize" : 11.1,
					"numoutlets" : 1,
					"id" : "obj-24",
					"outlettype" : [ "front" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"lockeddragscroll" : 1,
					"numinlets" : 1,
					"args" : [  ],
					"patching_rect" : [ 500.0, 524.0, 145.0, 55.0 ],
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
					"patching_rect" : [ 500.0, 433.0, 61.0, 20.0 ],
					"fontsize" : 11.1,
					"numoutlets" : 1,
					"id" : "obj-74",
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "cycle~, phasor~, trapezoid~, rand~",
					"linecount" : 2,
					"fontname" : "Verdana",
					"hidden" : 1,
					"numinlets" : 2,
					"patching_rect" : [ 500.0, 457.0, 114.0, 31.0 ],
					"fontsize" : 11.1,
					"numoutlets" : 1,
					"id" : "obj-73",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "oscillator with speed, range, and shape controls.",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 126.0, 20.0, 336.0, 21.0 ],
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"id" : "obj-61"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "ajm.lfo~",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 22.0, 11.0, 77.0, 27.0 ],
					"fontsize" : 18.0,
					"numoutlets" : 0,
					"id" : "obj-62"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Abstraction",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 23.0, 36.0, 100.0, 17.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"id" : "obj-63"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"angle" : 270.0,
					"grad1" : [ 0.823529, 1.0, 0.956863, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 14.0, 10.0, 464.0, 42.0 ],
					"grad2" : [ 0.219608, 0.564706, 0.462745, 1.0 ],
					"mode" : 1,
					"rounded" : 12,
					"numoutlets" : 0,
					"id" : "obj-64"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"angle" : 270.0,
					"grad1" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 13.0, 9.0, 467.0, 46.0 ],
					"grad2" : [ 0.0, 0.0, 0.0, 1.0 ],
					"mode" : 1,
					"rounded" : 16,
					"numoutlets" : 0,
					"id" : "obj-75"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"lockeddragscroll" : 1,
					"numinlets" : 0,
					"args" : [  ],
					"patching_rect" : [ 507.0, 7.0, 139.0, 52.0 ],
					"numoutlets" : 0,
					"id" : "obj-1",
					"name" : "ajm.helplinks.maxpat"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "width = 0.5",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 260.0, 358.0, 62.0, 17.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"id" : "obj-2"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "shape = sine",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 260.0, 345.0, 67.0, 17.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"id" : "obj-3"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "max = 1",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 260.0, 332.0, 61.0, 17.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"id" : "obj-4"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "min = 0",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 260.0, 319.0, 61.0, 17.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"id" : "obj-5"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "freq = 1",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 260.0, 306.0, 61.0, 17.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"id" : "obj-6"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "expr $i1 / 100. - 1.",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 209.0, 484.0, 102.0, 17.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"id" : "obj-7",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "expr $i1 / 100. - 1.",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 199.0, 506.0, 102.0, 17.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"id" : "obj-8",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "rslider",
					"numinlets" : 2,
					"patching_rect" : [ 199.0, 400.0, 20.0, 74.0 ],
					"numoutlets" : 2,
					"id" : "obj-9",
					"outlettype" : [ "", "" ],
					"size" : 200
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "All inlets (except the fourth: waveform shape) accept floats or signals as input",
					"linecount" : 3,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 484.0, 339.0, 140.0, 39.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"id" : "obj-10"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "0 2000",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 455.0, 319.0, 43.0, 15.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"id" : "obj-11",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "-1 2000",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 444.0, 299.0, 48.0, 15.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"id" : "obj-12",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "10 2000",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 381.0, 298.0, 49.0, 15.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"id" : "obj-13",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "1 2000",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 392.0, 319.0, 43.0, 15.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"id" : "obj-14",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "line~",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 444.0, 346.0, 32.0, 17.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 2,
					"id" : "obj-15",
					"outlettype" : [ "signal", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "line~ 1",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 381.0, 346.0, 41.0, 17.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 2,
					"id" : "obj-16",
					"outlettype" : [ "signal", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "ajm.lfo",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 381.0, 384.0, 181.0, 17.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"id" : "obj-17",
					"outlettype" : [ "" ],
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "scope~",
					"numinlets" : 2,
					"patching_rect" : [ 381.0, 409.0, 178.0, 74.0 ],
					"rounded" : 0,
					"numoutlets" : 0,
					"id" : "obj-18",
					"bgcolor" : [ 0.529412, 0.529412, 0.529412, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "ajm.lfo 30 -1 1 rand",
					"fontname" : "Verdana",
					"numinlets" : 3,
					"patching_rect" : [ 19.0, 373.0, 103.0, 17.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"id" : "obj-19",
					"outlettype" : [ "" ],
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "scope~",
					"numinlets" : 2,
					"patching_rect" : [ 19.0, 400.0, 178.0, 74.0 ],
					"rounded" : 0,
					"numoutlets" : 0,
					"id" : "obj-20",
					"bgcolor" : [ 0.529412, 0.529412, 0.529412, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Default values:",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 251.0, 292.0, 85.0, 17.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"id" : "obj-21"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "frequency, min value, max value, waveform shape, width",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 205.0, 269.0, 296.0, 17.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"id" : "obj-22"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontname" : "Verdana",
					"triscale" : 0.9,
					"numinlets" : 1,
					"patching_rect" : [ 578.0, 124.0, 35.0, 17.0 ],
					"fontsize" : 9.0,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"numoutlets" : 2,
					"id" : "obj-26",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"minimum" : 0.0,
					"outlettype" : [ "float", "bang" ],
					"maximum" : 1.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "ajm.lfo 4 -0.5 0 rect 0.25",
					"fontname" : "Verdana",
					"numinlets" : 5,
					"patching_rect" : [ 454.0, 150.0, 136.0, 17.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"id" : "obj-27",
					"outlettype" : [ "" ],
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "scope~",
					"numinlets" : 2,
					"patching_rect" : [ 454.0, 173.0, 107.0, 69.0 ],
					"rounded" : 0,
					"numoutlets" : 0,
					"id" : "obj-28",
					"bgcolor" : [ 0.529412, 0.529412, 0.529412, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontname" : "Verdana",
					"triscale" : 0.9,
					"numinlets" : 1,
					"patching_rect" : [ 420.0, 124.0, 35.0, 17.0 ],
					"fontsize" : 9.0,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"numoutlets" : 2,
					"id" : "obj-29",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"minimum" : 0.0,
					"outlettype" : [ "float", "bang" ],
					"maximum" : 1.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "ajm.lfo 4 0 1 ramp 1",
					"fontname" : "Verdana",
					"numinlets" : 5,
					"patching_rect" : [ 328.0, 150.0, 104.0, 17.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"id" : "obj-30",
					"outlettype" : [ "" ],
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "scope~",
					"numinlets" : 2,
					"patching_rect" : [ 328.0, 173.0, 107.0, 69.0 ],
					"rounded" : 0,
					"numoutlets" : 0,
					"id" : "obj-31",
					"bgcolor" : [ 0.529412, 0.529412, 0.529412, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Max",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 109.0, 200.0, 29.0, 17.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"id" : "obj-32"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Min",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 65.0, 200.0, 29.0, 17.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"id" : "obj-33"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontname" : "Verdana",
					"triscale" : 0.9,
					"numinlets" : 1,
					"patching_rect" : [ 106.0, 214.0, 35.0, 17.0 ],
					"fontsize" : 9.0,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"numoutlets" : 2,
					"id" : "obj-34",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"minimum" : -1.0,
					"outlettype" : [ "float", "bang" ],
					"maximum" : 1.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontname" : "Verdana",
					"triscale" : 0.9,
					"numinlets" : 1,
					"patching_rect" : [ 63.0, 214.0, 35.0, 17.0 ],
					"fontsize" : 9.0,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"numoutlets" : 2,
					"id" : "obj-35",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"minimum" : -1.0,
					"outlettype" : [ "float", "bang" ],
					"maximum" : 1.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontname" : "Verdana",
					"triscale" : 0.9,
					"numinlets" : 1,
					"patching_rect" : [ 20.0, 214.0, 35.0, 17.0 ],
					"fontsize" : 9.0,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"numoutlets" : 2,
					"id" : "obj-36",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"fontname" : "Verdana",
					"triscale" : 0.9,
					"numinlets" : 1,
					"patching_rect" : [ 172.0, 218.0, 35.0, 17.0 ],
					"fontsize" : 9.0,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"numoutlets" : 2,
					"id" : "obj-37",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"outlettype" : [ "int", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"fontname" : "Verdana",
					"items" : [ "sine", ",", "ramp", "(saw/triangle)", ",", "rectangle", ",", "random" ],
					"types" : [  ],
					"numinlets" : 1,
					"patching_rect" : [ 172.0, 197.0, 121.0, 17.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"id" : "obj-38",
					"outlettype" : [ "int", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "rand",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 270.0, 163.0, 30.0, 15.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"id" : "obj-39",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "rect",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 236.0, 163.0, 29.0, 15.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"id" : "obj-40",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "ramp",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 198.0, 163.0, 33.0, 15.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"id" : "obj-41",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "sine",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 168.0, 163.0, 27.0, 15.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"id" : "obj-42",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "• start audio",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 40.0, 76.0, 70.0, 17.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"id" : "obj-43"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "stop",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 97.0, 90.0, 28.0, 15.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"id" : "obj-44",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "startwindow",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 24.0, 90.0, 65.0, 15.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"id" : "obj-45",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "dac~",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 24.0, 127.0, 32.0, 17.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"id" : "obj-46"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"patching_rect" : [ 13.0, 70.0, 123.0, 43.0 ],
					"bordercolor" : [ 0.392157, 0.792157, 0.117647, 1.0 ],
					"border" : 2,
					"rounded" : 0,
					"numoutlets" : 0,
					"id" : "obj-47",
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "ajm.lfo 4 -0.5 0.5",
					"fontname" : "Verdana",
					"numinlets" : 4,
					"patching_rect" : [ 20.0, 255.0, 184.0, 17.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"id" : "obj-48",
					"outlettype" : [ "" ],
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "scope~",
					"numinlets" : 2,
					"patching_rect" : [ 20.0, 282.0, 178.0, 74.0 ],
					"rounded" : 0,
					"numoutlets" : 0,
					"id" : "obj-49",
					"bgcolor" : [ 0.529412, 0.529412, 0.529412, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Select waveform shapes with messages or numbers:",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 170.0, 133.0, 135.0, 28.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"id" : "obj-50"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"patching_rect" : [ 165.0, 127.0, 143.0, 119.0 ],
					"border" : 1,
					"rounded" : 0,
					"numoutlets" : 0,
					"id" : "obj-51",
					"bgcolor" : [ 0.831373, 0.972549, 0.984314, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Freq",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 23.0, 200.0, 29.0, 17.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"id" : "obj-52"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Control the speed and the range of the osciallator",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 22.0, 168.0, 130.0, 28.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"id" : "obj-53"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"patching_rect" : [ 16.0, 161.0, 131.0, 80.0 ],
					"border" : 1,
					"rounded" : 0,
					"numoutlets" : 0,
					"id" : "obj-54",
					"bgcolor" : [ 0.709804, 0.972549, 0.713726, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Note: This abstraction is designed for use as a low frequency oscilator (LFO). For audible osciallators it is better to use one MSP's anti-aliased objects like rect~, saw~, or tri~.",
					"linecount" : 4,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 164.0, 66.0, 236.0, 50.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"id" : "obj-55"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "The \"width\" parameter controls the time it takes to go to the max value, specified as a fraction of a period. This only affects ramp and rect shapes.",
					"linecount" : 4,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 421.0, 70.0, 200.0, 50.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"id" : "obj-56"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numinlets" : 1,
					"patching_rect" : [ 415.0, 64.0, 204.0, 83.0 ],
					"border" : 1,
					"rounded" : 0,
					"numoutlets" : 0,
					"id" : "obj-57",
					"bgcolor" : [ 0.929412, 0.968627, 0.65098, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "The 5 optional arguments match the 5 inlets:",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 205.0, 257.0, 223.0, 17.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"id" : "obj-58"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "rslider can control min/max value:",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 142.0, 374.0, 93.0, 28.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"id" : "obj-59"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-17", 1 ],
					"hidden" : 0,
					"midpoints" : [ 453.5, 367.0, 552.5, 367.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-19", 1 ],
					"hidden" : 0,
					"midpoints" : [ 208.5, 525.0, 5.0, 525.0, 5.0, 362.0, 70.5, 362.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-19", 2 ],
					"hidden" : 0,
					"midpoints" : [ 218.5, 503.0, 12.0, 503.0, 12.0, 367.0, 112.5, 367.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-27", 4 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-30", 4 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-48", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-48", 0 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-48", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-48", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-48", 3 ],
					"hidden" : 0,
					"midpoints" : [ 181.5, 237.0, 194.5, 237.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-48", 3 ],
					"hidden" : 0,
					"midpoints" : [ 279.5, 189.0, 194.5, 189.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-48", 3 ],
					"hidden" : 0,
					"midpoints" : [ 245.5, 189.0, 194.5, 189.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-48", 3 ],
					"hidden" : 0,
					"midpoints" : [ 207.5, 189.0, 194.5, 189.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 0 ],
					"destination" : [ "obj-48", 3 ],
					"hidden" : 0,
					"midpoints" : [ 177.5, 189.0, 194.5, 189.0 ]
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
					"source" : [ "obj-45", 0 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 0,
					"midpoints" : [ 33.5, 121.0, 33.5, 121.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 0 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 0,
					"midpoints" : [ 106.5, 121.0, 33.5, 121.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 1 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
