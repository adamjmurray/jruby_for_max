{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 16.0, 44.0, 692.0, 576.0 ],
		"bglocked" : 0,
		"defrect" : [ 16.0, 44.0, 692.0, 576.0 ],
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
					"maxclass" : "ezdac~",
					"offgradcolor1" : [ 0.368627, 0.364706, 0.341176, 1.0 ],
					"ongradcolor1" : [ 0.772549, 1.0, 0.807843, 1.0 ],
					"numinlets" : 2,
					"patching_rect" : [ 69.0, 80.0, 44.0, 44.0 ],
					"ongradcolor2" : [ 0.0, 0.607843, 0.121569, 1.0 ],
					"offgradcolor2" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-25",
					"bgcolor" : [ 0.52549, 0.52549, 0.52549, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "autohelp_dac_text",
					"text" : "start audio",
					"linecount" : 2,
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 28.0, 86.0, 38.0, 33.0 ],
					"fontsize" : 11.595187,
					"numoutlets" : 0,
					"id" : "obj-43"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"varname" : "startwinwdow_panel",
					"numinlets" : 1,
					"patching_rect" : [ 21.0, 75.0, 100.0, 55.0 ],
					"bordercolor" : [ 0.392157, 0.792157, 0.117647, 1.0 ],
					"border" : 2,
					"numoutlets" : 0,
					"id" : "obj-44",
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
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
					"args" : [ "cycle~", "phasor~", "trapezoid~", "rand~" ],
					"patching_rect" : [ 544.0, 519.0, 145.0, 55.0 ],
					"numoutlets" : 0,
					"id" : "obj-60",
					"name" : "ajm.seealso.maxpat"
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
					"grad1" : [ 0.823529, 1.0, 0.956863, 1.0 ],
					"grad2" : [ 0.219608, 0.564706, 0.462745, 1.0 ],
					"angle" : 270.0,
					"numinlets" : 1,
					"patching_rect" : [ 14.0, 10.0, 464.0, 42.0 ],
					"mode" : 1,
					"rounded" : 12,
					"numoutlets" : 0,
					"id" : "obj-64"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"grad1" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"grad2" : [ 0.0, 0.0, 0.0, 1.0 ],
					"angle" : 270.0,
					"numinlets" : 1,
					"patching_rect" : [ 13.0, 9.0, 467.0, 46.0 ],
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
					"patching_rect" : [ 260.0, 358.0, 73.0, 20.0 ],
					"fontsize" : 11.0,
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
					"patching_rect" : [ 260.0, 345.0, 80.0, 20.0 ],
					"fontsize" : 11.0,
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
					"patching_rect" : [ 260.0, 332.0, 73.0, 20.0 ],
					"fontsize" : 11.0,
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
					"patching_rect" : [ 260.0, 319.0, 72.0, 20.0 ],
					"fontsize" : 11.0,
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
					"patching_rect" : [ 260.0, 306.0, 72.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 0,
					"id" : "obj-6"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "scale 0 200 -1. 1.",
					"fontname" : "Verdana",
					"numinlets" : 6,
					"patching_rect" : [ 213.0, 495.0, 109.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 1,
					"id" : "obj-7",
					"outlettype" : [ "float" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "scale 0 200 -1. 1.",
					"fontname" : "Verdana",
					"numinlets" : 6,
					"patching_rect" : [ 203.0, 522.0, 109.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 1,
					"id" : "obj-8",
					"outlettype" : [ "float" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "rslider",
					"numinlets" : 2,
					"patching_rect" : [ 203.0, 411.0, 20.0, 74.0 ],
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
					"patching_rect" : [ 493.0, 357.0, 169.0, 47.0 ],
					"fontsize" : 11.0,
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
					"patching_rect" : [ 464.0, 337.0, 51.0, 18.0 ],
					"fontsize" : 11.0,
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
					"patching_rect" : [ 453.0, 315.0, 57.0, 18.0 ],
					"fontsize" : 11.0,
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
					"patching_rect" : [ 390.0, 315.0, 58.0, 18.0 ],
					"fontsize" : 11.0,
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
					"patching_rect" : [ 401.0, 337.0, 51.0, 18.0 ],
					"fontsize" : 11.0,
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
					"patching_rect" : [ 453.0, 364.0, 37.0, 20.0 ],
					"fontsize" : 11.0,
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
					"patching_rect" : [ 390.0, 364.0, 48.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 2,
					"id" : "obj-16",
					"outlettype" : [ "signal", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "ajm.lfo~",
					"fontname" : "Verdana",
					"numinlets" : 5,
					"patching_rect" : [ 390.0, 402.0, 73.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 1,
					"id" : "obj-17",
					"outlettype" : [ "signal" ],
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "scope~",
					"numinlets" : 2,
					"patching_rect" : [ 390.0, 429.0, 178.0, 74.0 ],
					"rounded" : 0,
					"numoutlets" : 0,
					"id" : "obj-18",
					"bgcolor" : [ 0.529412, 0.529412, 0.529412, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "ajm.lfo~ 30 -1 1 rand",
					"fontname" : "Verdana",
					"numinlets" : 5,
					"patching_rect" : [ 23.0, 384.0, 132.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 1,
					"id" : "obj-19",
					"outlettype" : [ "signal" ],
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "scope~",
					"numinlets" : 2,
					"patching_rect" : [ 23.0, 411.0, 178.0, 74.0 ],
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
					"patching_rect" : [ 251.0, 292.0, 103.0, 20.0 ],
					"fontsize" : 11.0,
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
					"patching_rect" : [ 215.0, 271.0, 360.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 0,
					"id" : "obj-22"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontname" : "Verdana",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 642.0, 126.0, 38.0, 20.0 ],
					"fontsize" : 11.0,
					"minimum" : 0.0,
					"triscale" : 0.9,
					"numoutlets" : 2,
					"id" : "obj-26",
					"maximum" : 1.0,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "ajm.lfo~ 4 -0.5 0 rect 0.25",
					"fontname" : "Verdana",
					"numinlets" : 5,
					"patching_rect" : [ 500.0, 154.0, 161.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 1,
					"id" : "obj-27",
					"outlettype" : [ "signal" ],
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "scope~",
					"numinlets" : 2,
					"patching_rect" : [ 500.0, 179.0, 107.0, 69.0 ],
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
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 466.0, 126.0, 38.0, 20.0 ],
					"fontsize" : 11.0,
					"minimum" : 0.0,
					"triscale" : 0.9,
					"numoutlets" : 2,
					"id" : "obj-29",
					"maximum" : 1.0,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "ajm.lfo~ 4 0 1 ramp 1",
					"fontname" : "Verdana",
					"numinlets" : 5,
					"patching_rect" : [ 351.0, 153.0, 134.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 1,
					"id" : "obj-30",
					"outlettype" : [ "signal" ],
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "scope~",
					"numinlets" : 2,
					"patching_rect" : [ 351.0, 178.0, 107.0, 69.0 ],
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
					"patching_rect" : [ 109.0, 198.0, 34.0, 20.0 ],
					"fontsize" : 11.0,
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
					"patching_rect" : [ 67.0, 198.0, 34.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 0,
					"id" : "obj-33"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontname" : "Verdana",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 106.0, 214.0, 38.0, 20.0 ],
					"fontsize" : 11.0,
					"minimum" : -1.0,
					"triscale" : 0.9,
					"numoutlets" : 2,
					"id" : "obj-34",
					"maximum" : 1.0,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontname" : "Verdana",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 63.0, 214.0, 38.0, 20.0 ],
					"fontsize" : 11.0,
					"minimum" : -1.0,
					"triscale" : 0.9,
					"numoutlets" : 2,
					"id" : "obj-35",
					"maximum" : 1.0,
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontname" : "Verdana",
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 20.0, 214.0, 38.0, 20.0 ],
					"fontsize" : 11.0,
					"triscale" : 0.9,
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
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 170.0, 219.0, 37.0, 20.0 ],
					"fontsize" : 11.0,
					"triscale" : 0.9,
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
					"patching_rect" : [ 170.0, 198.0, 139.0, 20.0 ],
					"fontsize" : 11.0,
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
					"patching_rect" : [ 278.0, 164.0, 36.0, 18.0 ],
					"fontsize" : 11.0,
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
					"patching_rect" : [ 242.0, 164.0, 34.0, 18.0 ],
					"fontsize" : 11.0,
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
					"patching_rect" : [ 201.0, 164.0, 39.0, 18.0 ],
					"fontsize" : 11.0,
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
					"patching_rect" : [ 166.0, 164.0, 31.0, 18.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 1,
					"id" : "obj-42",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "ajm.lfo~ 4 -0.5 0.5",
					"fontname" : "Verdana",
					"numinlets" : 5,
					"patching_rect" : [ 20.0, 255.0, 190.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 1,
					"id" : "obj-48",
					"outlettype" : [ "signal" ],
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
					"patching_rect" : [ 167.0, 127.0, 163.0, 33.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 0,
					"id" : "obj-50"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"grad1" : [ 0.909804, 0.996078, 1.0, 1.0 ],
					"grad2" : [ 0.803922, 0.847059, 1.0, 1.0 ],
					"angle" : 270.0,
					"numinlets" : 1,
					"patching_rect" : [ 163.0, 128.0, 167.0, 118.0 ],
					"mode" : 1,
					"border" : 1,
					"numoutlets" : 0,
					"id" : "obj-51",
					"bgcolor" : [ 0.917647, 0.937255, 0.960784, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Freq",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 23.0, 197.0, 35.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 0,
					"id" : "obj-52"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Control the speed and the range of the osciallator:",
					"linecount" : 3,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 23.0, 147.0, 126.0, 47.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 0,
					"id" : "obj-53"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"grad1" : [ 0.94902, 1.0, 0.913725, 1.0 ],
					"grad2" : [ 0.6, 0.92549, 0.6, 1.0 ],
					"angle" : 270.0,
					"numinlets" : 1,
					"patching_rect" : [ 18.0, 146.0, 130.0, 92.0 ],
					"mode" : 1,
					"border" : 1,
					"numoutlets" : 0,
					"id" : "obj-54",
					"bgcolor" : [ 0.917647, 0.937255, 0.960784, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Note: This abstraction is designed for use as a low frequency oscilator (LFO). For audible osciallators it is better to use one MSP's anti-aliased objects like rect~, saw~, or tri~.",
					"linecount" : 4,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 158.0, 62.0, 277.0, 60.0 ],
					"fontsize" : 11.0,
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
					"patching_rect" : [ 464.0, 70.0, 227.0, 60.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 0,
					"id" : "obj-56"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "The 5 optional arguments match the 5 inlets:",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 215.0, 257.0, 271.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 0,
					"id" : "obj-58"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "rslider can control min/max",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 225.0, 429.0, 107.0, 33.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 0,
					"id" : "obj-59"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"grad1" : [ 0.996078, 1.0, 0.909804, 1.0 ],
					"grad2" : [ 0.882353, 0.882353, 0.490196, 1.0 ],
					"angle" : 270.0,
					"numinlets" : 1,
					"patching_rect" : [ 462.0, 69.0, 224.0, 80.0 ],
					"mode" : 1,
					"border" : 1,
					"numoutlets" : 0,
					"id" : "obj-45",
					"bgcolor" : [ 0.917647, 0.937255, 0.960784, 1.0 ]
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
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-37", 0 ],
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
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 0 ],
					"destination" : [ "obj-48", 3 ],
					"hidden" : 0,
					"midpoints" : [ 175.5, 189.0, 157.75, 189.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-48", 3 ],
					"hidden" : 0,
					"midpoints" : [ 210.5, 189.0, 157.75, 189.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-48", 3 ],
					"hidden" : 0,
					"midpoints" : [ 251.5, 189.0, 157.75, 189.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-48", 3 ],
					"hidden" : 0,
					"midpoints" : [ 287.5, 189.0, 157.75, 189.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-48", 3 ],
					"hidden" : 0,
					"midpoints" : [ 179.5, 242.0, 157.75, 242.0 ]
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
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-48", 1 ],
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
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-48", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-17", 1 ],
					"hidden" : 0,
					"midpoints" : [ 462.5, 391.0, 413.0, 391.0 ]
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
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-17", 0 ],
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
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-31", 0 ],
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
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-19", 2 ],
					"hidden" : 0,
					"midpoints" : [ 222.5, 518.0, 16.0, 518.0, 16.0, 378.0, 89.0, 378.0 ]
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
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-19", 1 ],
					"hidden" : 0,
					"midpoints" : [ 212.5, 545.0, 9.0, 545.0, 9.0, 373.0, 60.75, 373.0 ]
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
 ]
	}

}
