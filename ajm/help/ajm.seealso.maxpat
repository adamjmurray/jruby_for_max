{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 55.0, 77.0, 237.0, 188.0 ],
		"bglocked" : 0,
		"defrect" : [ 55.0, 77.0, 237.0, 188.0 ],
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
					"maxclass" : "newobj",
					"text" : "prepend append",
					"fontname" : "Verdana",
					"id" : "obj-4",
					"patching_rect" : [ 21.0, 50.0, 101.0, 20.0 ],
					"numinlets" : 1,
					"fontsize" : 11.1,
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend help",
					"fontname" : "Verdana",
					"id" : "obj-3",
					"patching_rect" : [ 77.0, 114.0, 84.0, 20.0 ],
					"numinlets" : 1,
					"fontsize" : 11.1,
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"fontname" : "Verdana",
					"id" : "obj-2",
					"patching_rect" : [ 77.0, 144.0, 56.0, 20.0 ],
					"numinlets" : 1,
					"fontsize" : 11.1,
					"numoutlets" : 1,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"id" : "obj-1",
					"patching_rect" : [ 21.0, 11.0, 25.0, 25.0 ],
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "autohelp_see_title",
					"text" : "See Also:",
					"fontname" : "Arial",
					"id" : "obj-8",
					"patching_rect" : [ 60.0, 16.0, 71.0, 20.0 ],
					"presentation" : 1,
					"numinlets" : 1,
					"fontface" : 1,
					"fontsize" : 11.595187,
					"numoutlets" : 0,
					"presentation_rect" : [ 3.0, 4.0, 100.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "autohelp_see_menu",
					"fontname" : "Arial",
					"id" : "obj-9",
					"patching_rect" : [ 21.0, 86.0, 130.0, 20.0 ],
					"presentation" : 1,
					"numinlets" : 1,
					"fontsize" : 11.595187,
					"numoutlets" : 3,
					"types" : [  ],
					"items" : [  ],
					"outlettype" : [ "int", "", "" ],
					"presentation_rect" : [ 5.0, 24.0, 130.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"varname" : "autohelp_see_panel",
					"id" : "obj-10",
					"patching_rect" : [ 156.0, 19.0, 48.0, 42.0 ],
					"presentation" : 1,
					"border" : 2,
					"numinlets" : 1,
					"bordercolor" : [ 0.5, 0.5, 0.5, 0.75 ],
					"numoutlets" : 0,
					"background" : 1,
					"bgcolor" : [ 0.85, 0.85, 0.85, 0.75 ],
					"presentation_rect" : [ 0.0, 0.0, 140.0, 50.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 1 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
