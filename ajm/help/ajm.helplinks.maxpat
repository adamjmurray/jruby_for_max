{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 271.0, 323.0, 466.0, 308.0 ],
		"bglocked" : 0,
		"defrect" : [ 271.0, 323.0, 466.0, 308.0 ],
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
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "ajm.bring-to-front ajm.about",
					"numinlets" : 1,
					"fontsize" : 11.1,
					"numoutlets" : 0,
					"patching_rect" : [ 143.0, 83.0, 173.0, 20.0 ],
					"id" : "obj-3",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "ajm.bring-to-front ajm.overview",
					"numinlets" : 1,
					"fontsize" : 11.1,
					"numoutlets" : 0,
					"patching_rect" : [ 13.0, 115.0, 192.0, 20.0 ],
					"id" : "obj-2",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"border" : 1,
					"texton" : "Stop",
					"text" : "© 2010 Adam Murray",
					"numinlets" : 1,
					"fontsize" : 12.0,
					"bgovercolor" : [ 0.784314, 0.909804, 0.917647, 1.0 ],
					"presentation_rect" : [ 4.0, 26.0, 123.0, 17.0 ],
					"bgcolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"patching_rect" : [ 143.0, 57.0, 124.0, 18.0 ],
					"presentation" : 1,
					"id" : "obj-12",
					"fontname" : "Arial",
					"rounded" : 20.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"border" : 1,
					"texton" : "Stop",
					"text" : "ajm overview",
					"numinlets" : 1,
					"fontsize" : 12.0,
					"bgovercolor" : [ 0.784314, 0.909804, 0.917647, 1.0 ],
					"presentation_rect" : [ 27.0, 5.0, 79.0, 17.0 ],
					"bgcolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"patching_rect" : [ 13.0, 56.0, 80.0, 18.0 ],
					"presentation" : 1,
					"id" : "obj-10",
					"fontname" : "Arial",
					"rounded" : 20.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "fpic",
					"numinlets" : 1,
					"presentation_rect" : [ 2.0, 4.0, 19.0, 20.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 44.0, 18.0, 19.0, 20.0 ],
					"pic" : "compusition.gif",
					"presentation" : 1,
					"id" : "obj-1"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"border" : 1,
					"numinlets" : 1,
					"shadow" : 3,
					"presentation_rect" : [ 0.0, 0.0, 133.0, 49.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"patching_rect" : [ 91.0, 9.0, 127.0, 16.0 ],
					"presentation" : 1,
					"id" : "obj-9",
					"rounded" : 12
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"grad1" : [ 0.482353, 0.482353, 0.482353, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 135.0, 51.0 ],
					"numoutlets" : 0,
					"grad2" : [ 0.0, 0.0, 0.0, 1.0 ],
					"angle" : 270.0,
					"patching_rect" : [ 90.0, 30.0, 131.0, 15.0 ],
					"presentation" : 1,
					"id" : "obj-70",
					"rounded" : 16
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
