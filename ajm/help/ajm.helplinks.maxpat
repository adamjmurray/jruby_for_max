{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 643.0, 274.0, 282.0, 162.0 ],
		"bglocked" : 0,
		"defrect" : [ 643.0, 274.0, 282.0, 162.0 ],
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
					"maxclass" : "textbutton",
					"fontname" : "Arial",
					"bgovercolor" : [ 0.784314, 0.909804, 0.917647, 1.0 ],
					"id" : "obj-12",
					"patching_rect" : [ 143.0, 57.0, 124.0, 18.0 ],
					"presentation" : 1,
					"border" : 1,
					"rounded" : 20.0,
					"numinlets" : 1,
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"text" : "© 2008 Adam Murray",
					"fontsize" : 12.0,
					"numoutlets" : 3,
					"bgcolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
					"outlettype" : [ "", "", "int" ],
					"presentation_rect" : [ 4.0, 26.0, 123.0, 17.0 ],
					"texton" : "Stop"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"fontname" : "Arial",
					"bgovercolor" : [ 0.784314, 0.909804, 0.917647, 1.0 ],
					"id" : "obj-10",
					"patching_rect" : [ 13.0, 56.0, 80.0, 18.0 ],
					"presentation" : 1,
					"border" : 1,
					"rounded" : 20.0,
					"numinlets" : 1,
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"text" : "ajm overview",
					"fontsize" : 12.0,
					"numoutlets" : 3,
					"bgcolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
					"outlettype" : [ "", "", "int" ],
					"presentation_rect" : [ 27.0, 5.0, 79.0, 17.0 ],
					"texton" : "Stop"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "fpic",
					"id" : "obj-1",
					"patching_rect" : [ 44.0, 18.0, 19.0, 20.0 ],
					"pic" : "compusition.gif",
					"presentation" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"presentation_rect" : [ 2.0, 4.0, 19.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "load ajm.about",
					"fontname" : "Arial",
					"id" : "obj-5",
					"patching_rect" : [ 143.0, 84.0, 81.0, 17.0 ],
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
					"fontname" : "Arial",
					"id" : "obj-6",
					"patching_rect" : [ 87.0, 123.0, 51.0, 19.0 ],
					"numinlets" : 1,
					"fontsize" : 11.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "load ajm.overview",
					"fontname" : "Arial",
					"id" : "obj-8",
					"patching_rect" : [ 13.0, 84.0, 100.0, 17.0 ],
					"numinlets" : 2,
					"fontsize" : 11.0,
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"id" : "obj-9",
					"patching_rect" : [ 91.0, 9.0, 127.0, 16.0 ],
					"presentation" : 1,
					"border" : 1,
					"rounded" : 12,
					"numinlets" : 1,
					"numoutlets" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"shadow" : 3,
					"presentation_rect" : [ 0.0, 0.0, 133.0, 49.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"grad1" : [ 0.482353, 0.482353, 0.482353, 1.0 ],
					"id" : "obj-70",
					"patching_rect" : [ 90.0, 30.0, 131.0, 15.0 ],
					"mode" : 1,
					"presentation" : 1,
					"rounded" : 16,
					"grad2" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"angle" : 270.0,
					"presentation_rect" : [ 0.0, 0.0, 135.0, 51.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [ 22.5, 109.0, 96.5, 109.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [ 152.5, 109.0, 96.5, 109.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
