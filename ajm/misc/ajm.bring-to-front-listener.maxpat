{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 50.0, 94.0, 640.0, 506.0 ],
		"bglocked" : 0,
		"defrect" : [ 50.0, 94.0, 640.0, 506.0 ],
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
					"maxclass" : "outlet",
					"hint" : "to thispatcher",
					"annotation" : "to thispatcher",
					"numinlets" : 1,
					"patching_rect" : [ 83.0, 77.0, 25.0, 25.0 ],
					"numoutlets" : 0,
					"id" : "obj-2",
					"comment" : "to thispatcher"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t bang front",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 25.0, 47.0, 77.0, 20.0 ],
					"fontsize" : 11.1,
					"numoutlets" : 2,
					"id" : "obj-7",
					"outlettype" : [ "bang", "front" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s ajm.bring_to_front_callback",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 25.0, 111.0, 178.0, 20.0 ],
					"fontsize" : 11.1,
					"numoutlets" : 0,
					"id" : "obj-5"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "foo",
					"text" : "r #1.bring_to_front",
					"fontname" : "Verdana",
					"numinlets" : 0,
					"patching_rect" : [ 25.0, 18.0, 120.0, 20.0 ],
					"fontsize" : 11.1,
					"numoutlets" : 1,
					"id" : "obj-1",
					"outlettype" : [ "" ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-7", 1 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
