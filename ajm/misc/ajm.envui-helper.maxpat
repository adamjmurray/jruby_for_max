{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 81.0, 90.0, 407.0, 205.0 ],
		"bglocked" : 1,
		"defrect" : [ 81.0, 90.0, 407.0, 205.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 1,
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
					"text" : "Sustain Point",
					"fontname" : "Verdana",
					"presentation_rect" : [ 138.0, 73.0, 87.0, 20.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 151.0, 73.0, 87.0, 20.0 ],
					"frgb" : [ 0.0, 0.0, 0.0, 0.74902 ],
					"fontsize" : 11.0,
					"presentation" : 1,
					"textcolor" : [ 0.0, 0.0, 0.0, 0.74902 ],
					"numoutlets" : 0,
					"id" : "obj-18"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"patching_rect" : [ 126.0, 169.0, 19.0, 19.0 ],
					"numoutlets" : 0,
					"id" : "obj-1",
					"comment" : "function sustain point"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "funcsustain",
					"fontname" : "Verdana",
					"presentation_rect" : [ 88.0, 74.0, 27.0, 17.0 ],
					"triscale" : 0.9,
					"numinlets" : 1,
					"patching_rect" : [ 103.0, 119.0, 27.0, 17.0 ],
					"minimum" : 1,
					"fontsize" : 9.0,
					"presentation" : 1,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"numoutlets" : 2,
					"maximum" : 5,
					"id" : "obj-2",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"outlettype" : [ "int", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"patching_rect" : [ 177.0, 168.0, 19.0, 19.0 ],
					"numoutlets" : 0,
					"id" : "obj-3",
					"comment" : "sustain 1st outlet"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"patching_rect" : [ 151.0, 171.0, 19.0, 19.0 ],
					"numoutlets" : 0,
					"id" : "obj-4",
					"comment" : "multislider 1st outlet"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"patching_rect" : [ 98.0, 171.0, 19.0, 19.0 ],
					"numoutlets" : 0,
					"id" : "obj-5",
					"comment" : "function changed with mouse (4th outlet)"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "offset $1 0",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 309.0, 73.0, 70.0, 18.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 1,
					"id" : "obj-6",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "* -130",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 309.0, 46.0, 47.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 1,
					"id" : "obj-7",
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"patching_rect" : [ 309.0, 17.0, 22.0, 22.0 ],
					"numoutlets" : 1,
					"id" : "obj-8",
					"outlettype" : [ "" ],
					"comment" : "0=function, 1=multislider"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "thispatcher",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 309.0, 108.0, 72.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 2,
					"id" : "obj-9",
					"outlettype" : [ "", "" ],
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"numinlets" : 1,
					"patching_rect" : [ 58.0, 169.0, 19.0, 19.0 ],
					"numoutlets" : 0,
					"id" : "obj-10",
					"comment" : "function pts, line format (2nd outlet)"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"patching_rect" : [ 151.0, 16.0, 20.0, 20.0 ],
					"numoutlets" : 1,
					"id" : "obj-11",
					"outlettype" : [ "" ],
					"comment" : "multislider inlet"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"numinlets" : 0,
					"patching_rect" : [ 21.0, 17.0, 20.0, 20.0 ],
					"numoutlets" : 1,
					"id" : "obj-12",
					"outlettype" : [ "" ],
					"comment" : "function inlet"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "function",
					"varname" : "function",
					"presentation_rect" : [ 0.0, 0.0, 130.0, 69.0 ],
					"outputmode" : 1,
					"pointcolor" : [ 0.011765, 0.827451, 0.596078, 1.0 ],
					"domain" : 579.0,
					"numinlets" : 1,
					"linecolor" : [ 0.470588, 0.94902, 0.666667, 1.0 ],
					"patching_rect" : [ 21.0, 47.0, 130.0, 69.0 ],
					"presentation" : 1,
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 4,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-13",
					"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"clickadd" : 0,
					"outlettype" : [ "float", "", "", "bang" ],
					"legend" : 0,
					"addpoints" : [ 0.0, 0.0, 1, 137.389999, 0.103448, 0, 220.805084, 0.545455, 0, 284.593231, 0.896552, 0, 417.076263, 0.509091, 0, 500.49173, 0.137931, 0, 579.0, 0.0, 1 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"varname" : "mssustain",
					"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
					"presentation_rect" : [ 130.0, 72.0, 130.0, 21.0 ],
					"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
					"slidercolor" : [ 0.839216, 0.0, 0.019608, 1.0 ],
					"settype" : 0,
					"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
					"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
					"setminmax" : [ 1.0, 63.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 151.0, 119.0, 130.0, 15.0 ],
					"presentation" : 1,
					"contdata" : 1,
					"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
					"numoutlets" : 2,
					"id" : "obj-14",
					"orientation" : 0,
					"bgcolor" : [ 0.858824, 0.890196, 0.956863, 1.0 ],
					"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"outlettype" : [ "", "" ],
					"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"varname" : "multislider",
					"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
					"presentation_rect" : [ 130.0, 0.0, 130.0, 69.0 ],
					"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
					"slidercolor" : [ 0.615686, 1.0, 0.87451, 1.0 ],
					"ghostbar" : 60,
					"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
					"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
					"setminmax" : [ 0.0, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 151.0, 47.0, 130.0, 69.0 ],
					"presentation" : 1,
					"contdata" : 1,
					"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
					"numoutlets" : 2,
					"id" : "obj-15",
					"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"outlettype" : [ "", "" ],
					"size" : 63,
					"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Sustain Point",
					"fontname" : "Verdana",
					"presentation_rect" : [ 8.0, 73.0, 87.0, 20.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 38.0, 121.0, 87.0, 20.0 ],
					"fontsize" : 11.0,
					"presentation" : 1,
					"numoutlets" : 0,
					"id" : "obj-16"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"presentation_rect" : [ 0.0, 72.0, 130.0, 21.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 21.0, 119.0, 130.0, 15.0 ],
					"presentation" : 1,
					"border" : 1,
					"rounded" : 0,
					"numoutlets" : 0,
					"id" : "obj-17",
					"bgcolor" : [ 0.858824, 0.890196, 0.956863, 1.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-4", 0 ],
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
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 3 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 1 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
