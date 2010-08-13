{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 234.0, 99.0, 442.0, 185.0 ],
		"bglocked" : 0,
		"defrect" : [ 234.0, 99.0, 442.0, 185.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 11.0,
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
					"text" : "p \"message and textedit\"",
					"fontsize" : 11.0,
					"patching_rect" : [ 265.0, 45.287369, 151.0, 20.0 ],
					"id" : "obj-12",
					"fontname" : "Verdana",
					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 432.0, 45.0, 592.0, 397.0 ],
						"bglocked" : 0,
						"defrect" : [ 432.0, 45.0, 592.0, 397.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 11.0,
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess set",
									"fontsize" : 11.0,
									"hidden" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 196.0, 316.0, 83.0, 20.0 ],
									"id" : "obj-15",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 13.0, 348.0, 199.0, 18.0 ],
									"id" : "obj-14",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "textbutton",
									"fontsize" : 11.0,
									"outlettype" : [ "", "", "int" ],
									"patching_rect" : [ 384.0, 261.0, 100.0, 20.0 ],
									"textovercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"text" : "Evaluate",
									"bgovercolor" : [ 0.490196, 0.984314, 0.74902, 1.0 ],
									"id" : "obj-1",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"bgcolor" : [ 0.156863, 0.8, 0.54902, 1.0 ],
									"numoutlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"triscale" : 0.9,
									"fontsize" : 11.0,
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 167.0, 194.0, 37.0, 20.0 ],
									"id" : "obj-3",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "cube $1",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 167.0, 217.0, 54.0, 18.0 ],
									"id" : "obj-4",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "\\\"the value of x is #{$x}\\\"",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 33.0, 156.0, 161.0, 18.0 ],
									"id" : "obj-5",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "$x += 1",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 95.0, 128.0, 57.0, 18.0 ],
									"id" : "obj-6",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "$x = 1",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 32.0, 128.0, 48.0, 18.0 ],
									"id" : "obj-7",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "[1.4\\, 2.5]",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 35.0, 96.0, 72.0, 18.0 ],
									"id" : "obj-8",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "def cube n\\; n**3 end",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 24.0, 206.0, 135.0, 18.0 ],
									"id" : "obj-9",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"triscale" : 0.9,
									"fontsize" : 11.0,
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 26.0, 253.0, 37.0, 20.0 ],
									"id" : "obj-10",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "if $1< 0 then 'negative' else 'positive' end",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 26.0, 280.0, 241.0, 18.0 ],
									"id" : "obj-11",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Remember $1, $2, etc also have special meaning for message boxes. They will be interpreted before Ruby ever sees the text, which can be useful in some situations.",
									"linecount" : 2,
									"fontsize" : 11.0,
									"patching_rect" : [ 18.0, 49.0, 500.0, 33.0 ],
									"id" : "obj-16",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Message boxes can be tricky. The following characters need to be escaped by putting a backslash in front of them:  \"  ,  ;  \\  (backslashes need to be doubly escaped)",
									"linecount" : 2,
									"fontsize" : 11.0,
									"patching_rect" : [ 19.0, 8.0, 486.0, 33.0 ],
									"id" : "obj-17",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b",
									"fontsize" : 11.0,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 273.0, 102.0, 28.0, 20.0 ],
									"id" : "obj-18",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "grab",
									"fontsize" : 11.0,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 273.0, 125.0, 36.0, 20.0 ],
									"id" : "obj-20",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "textedit",
									"text" : "x = 5\nx = x + 10\nout0 x",
									"linecount" : 3,
									"fontsize" : 11.0,
									"outlettype" : [ "", "int", "", "" ],
									"patching_rect" : [ 290.0, 152.0, 278.0, 107.0 ],
									"tabmode" : 0,
									"id" : "obj-22",
									"fontname" : "Geneva",
									"numinlets" : 1,
									"outputmode" : 1,
									"numoutlets" : 4
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "This textedit has \"Output as One Symbol\" enabled, so escaping quotes and commas is not neccessary. Multi-line scripts work too.",
									"linecount" : 3,
									"fontsize" : 11.0,
									"patching_rect" : [ 311.0, 102.0, 256.0, 47.0 ],
									"id" : "obj-23",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.ruby",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 13.0, 316.0, 85.0, 20.0 ],
									"id" : "obj-25",
									"fontname" : "Verdana",
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"angle" : -90.0,
									"patching_rect" : [ 285.0, 148.0, 288.0, 137.0 ],
									"mode" : 1,
									"border" : 2,
									"grad1" : [ 0.156863, 0.670588, 0.8, 1.0 ],
									"id" : "obj-12",
									"grad2" : [ 0.043137, 0.223529, 0.196078, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-20", 1 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [ 393.5, 290.0, 578.0, 290.0, 578.0, 95.0, 282.5, 95.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-14", 1 ],
									"hidden" : 0,
									"midpoints" : [ 22.5, 341.5, 202.5, 341.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [ 44.5, 119.0, 22.5, 119.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [ 33.5, 238.0, 22.5, 238.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [ 35.5, 307.0, 22.5, 307.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [ 41.5, 151.0, 22.5, 151.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [ 104.5, 151.0, 22.5, 151.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [ 176.5, 238.0, 22.5, 238.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [ 42.5, 177.0, 22.5, 177.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [ 282.5, 307.0, 22.5, 307.0 ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"fontsize" : 11.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"fontname" : "Verdana",
						"default_fontsize" : 11.0,
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p \"Ruby 1.9\"",
					"fontsize" : 11.0,
					"patching_rect" : [ 265.0, 136.149414, 81.0, 20.0 ],
					"id" : "obj-3",
					"fontname" : "Verdana",
					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 615.0, 46.0, 534.0, 350.0 ],
						"bglocked" : 0,
						"defrect" : [ 615.0, 46.0, 534.0, 350.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 11.0,
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "eval 1+",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 382.0, 197.0, 54.0, 18.0 ],
									"id" : "obj-11",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "out0 RUBY_VERSION",
									"fontsize" : 11.595187,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 27.0, 127.0, 18.0 ],
									"id" : "obj-5",
									"fontname" : "Arial",
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "String indexing makes more sense in Ruby 1.9",
									"linecount" : 2,
									"fontsize" : 11.0,
									"patching_rect" : [ 95.0, 56.0, 143.0, 33.0 ],
									"id" : "obj-8",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "The older syntax works with both",
									"linecount" : 2,
									"fontsize" : 11.0,
									"patching_rect" : [ 405.0, 129.0, 107.0, 33.0 ],
									"id" : "obj-7",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "The new Ruby 1.9 hash syntax",
									"linecount" : 2,
									"fontsize" : 11.0,
									"patching_rect" : [ 238.0, 47.0, 117.0, 33.0 ],
									"id" : "obj-6",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "$hash = {:key => 42}, out0 $hash[:key]",
									"linecount" : 2,
									"fontsize" : 11.595187,
									"outlettype" : [ "" ],
									"patching_rect" : [ 277.0, 130.0, 125.0, 31.0 ],
									"id" : "obj-3",
									"fontname" : "Arial",
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "gswitch2",
									"int" : 1,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 218.0, 130.0, 39.0, 32.0 ],
									"id" : "obj-2",
									"numinlets" : 2,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess set",
									"fontsize" : 11.0,
									"hidden" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 158.0, 244.0, 83.0, 20.0 ],
									"id" : "obj-1",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend eval",
									"fontsize" : 11.595187,
									"outlettype" : [ "" ],
									"patching_rect" : [ 238.0, 194.0, 78.0, 20.0 ],
									"id" : "obj-19",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"fontsize" : 11.595187,
									"outlettype" : [ "" ],
									"patching_rect" : [ 238.0, 273.0, 50.0, 18.0 ],
									"id" : "obj-18",
									"fontname" : "Arial",
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"fontsize" : 11.595187,
									"outlettype" : [ "" ],
									"patching_rect" : [ 53.0, 268.0, 70.0, 18.0 ],
									"id" : "obj-17",
									"fontname" : "Arial",
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.ruby @ruby_version 1.8",
									"fontsize" : 11.595187,
									"outlettype" : [ "" ],
									"patching_rect" : [ 238.0, 226.0, 177.0, 20.0 ],
									"id" : "obj-15",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "$str = 'STRING', out0 $str[-1]",
									"linecount" : 2,
									"fontsize" : 11.595187,
									"outlettype" : [ "" ],
									"patching_rect" : [ 101.0, 95.0, 96.0, 31.0 ],
									"id" : "obj-14",
									"fontname" : "Arial",
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend eval",
									"fontsize" : 11.595187,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 194.0, 78.0, 20.0 ],
									"id" : "obj-13",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "$hash = {key: 42}, out0 $hash[:key]",
									"linecount" : 2,
									"fontsize" : 11.595187,
									"outlettype" : [ "" ],
									"patching_rect" : [ 238.0, 81.0, 110.0, 31.0 ],
									"id" : "obj-10",
									"fontname" : "Arial",
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.ruby @ruby_version 1.9",
									"fontsize" : 11.595187,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 220.0, 177.0, 20.0 ],
									"id" : "obj-4",
									"fontname" : "Arial",
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-2", 1 ],
									"hidden" : 0,
									"midpoints" : [ 286.5, 170.0, 267.0, 170.0, 267.0, 120.0, 247.5, 120.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 1 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-2", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-18", 1 ],
									"hidden" : 0,
									"midpoints" : [ 247.5, 259.0, 278.5, 259.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-17", 1 ],
									"hidden" : 0,
									"midpoints" : [ 59.5, 253.5, 113.5, 253.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [ 59.5, 174.0, 247.5, 174.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"fontsize" : 11.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"fontname" : "Verdana",
						"default_fontsize" : 11.0,
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p \"inlet & outlet assist\"",
					"fontsize" : 11.0,
					"patching_rect" : [ 265.0, 105.574722, 138.0, 20.0 ],
					"id" : "obj-4",
					"fontname" : "Verdana",
					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 615.0, 46.0, 359.0, 253.0 ],
						"bglocked" : 0,
						"defrect" : [ 615.0, 46.0, 359.0, 253.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 11.0,
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "The inlet and outlet hints can be set with inlet_assist and outlet_assist methods. Try sending these messages and then moving your mouse over the inlets/outlets while editing this patch. Typically these assist messages would be set when using a script file.",
									"linecount" : 7,
									"fontsize" : 11.0,
									"patching_rect" : [ 34.0, 22.0, 241.0, 100.0 ],
									"id" : "obj-29",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "eval outlet_assist 'outlet 1'\\, 'outlet 2'",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 45.0, 153.0, 222.0, 18.0 ],
									"id" : "obj-26",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "eval inlet_assist 'description of the inlet'",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 23.0, 129.0, 233.0, 18.0 ],
									"id" : "obj-25",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.ruby 2 3",
									"fontsize" : 11.0,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 23.0, 194.0, 107.0, 20.0 ],
									"id" : "obj-6",
									"fontname" : "Verdana",
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"numinlets" : 2,
									"numoutlets" : 3
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [ 54.5, 182.0, 32.5, 182.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"fontsize" : 11.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"fontname" : "Verdana",
						"default_fontsize" : 11.0,
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p \"using libraries\"",
					"fontsize" : 11.0,
					"patching_rect" : [ 265.0, 76.0, 110.0, 20.0 ],
					"id" : "obj-24",
					"fontname" : "Verdana",
					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 686.0, 73.0, 322.0, 318.0 ],
						"bglocked" : 0,
						"defrect" : [ 686.0, 73.0, 322.0, 318.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 11.0,
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "You can use Ruby standard libraries:",
									"fontsize" : 13.0,
									"patching_rect" : [ 20.0, 19.0, 256.0, 22.0 ],
									"id" : "obj-13",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess set",
									"fontsize" : 11.0,
									"hidden" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 136.0, 66.0, 83.0, 20.0 ],
									"id" : "obj-9",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 28.0, 99.0, 191.0, 18.0 ],
									"id" : "obj-8",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "eval require 'date'\\; out0 DateTime.now",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 24.0, 41.0, 230.0, 18.0 ],
									"id" : "obj-1",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.ruby",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 24.0, 68.0, 86.0, 20.0 ],
									"id" : "obj-12",
									"fontname" : "Verdana",
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : ".. and any Java class on Max's classpath:",
									"fontsize" : 13.0,
									"patching_rect" : [ 12.0, 175.0, 281.0, 22.0 ],
									"id" : "obj-10",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "eval out0 $r.nextFloat if $r",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 30.0, 234.0, 157.0, 18.0 ],
									"id" : "obj-5",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"triscale" : 0.9,
									"fontsize" : 11.0,
									"outlettype" : [ "float", "bang" ],
									"patching_rect" : [ 13.0, 283.0, 73.0, 20.0 ],
									"id" : "obj-6",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.ruby",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 13.0, 261.0, 85.0, 20.0 ],
									"id" : "obj-7",
									"fontname" : "Verdana",
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "eval $r = java.util.Random.new",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 13.0, 206.0, 186.0, 18.0 ],
									"id" : "obj-11",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-8", 1 ],
									"hidden" : 0,
									"midpoints" : [ 33.5, 92.0, 209.5, 92.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"fontsize" : 11.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"fontname" : "Verdana",
						"default_fontsize" : 11.0,
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p \"type conversions\"",
					"fontsize" : 11.0,
					"patching_rect" : [ 265.0, 15.0, 127.0, 20.0 ],
					"id" : "obj-16",
					"fontname" : "Verdana",
					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 596.0, 45.0, 432.0, 600.0 ],
						"bglocked" : 0,
						"defrect" : [ 596.0, 45.0, 432.0, 600.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 11.0,
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.ruby @verbose true",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 5.0, 319.0, 170.0, 20.0 ],
									"id" : "obj-32",
									"fontname" : "Verdana",
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.ruby @verbose true",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 10.0, 500.0, 170.0, 20.0 ],
									"id" : "obj-31",
									"fontname" : "Verdana",
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print message",
									"fontsize" : 11.0,
									"patching_rect" : [ 240.0, 561.0, 87.0, 20.0 ],
									"id" : "obj-1",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print list",
									"fontsize" : 11.0,
									"patching_rect" : [ 164.0, 559.0, 59.0, 20.0 ],
									"id" : "obj-2",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print float",
									"fontsize" : 11.0,
									"patching_rect" : [ 88.0, 559.0, 67.0, 20.0 ],
									"id" : "obj-3",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print int",
									"fontsize" : 11.0,
									"patching_rect" : [ 12.0, 559.0, 56.0, 20.0 ],
									"id" : "obj-4",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route int float list",
									"fontsize" : 11.0,
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 12.0, 536.0, 247.0, 20.0 ],
									"id" : "obj-5",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 4
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "out0 [1\\,2\\,3].inspect",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 27.0, 443.0, 138.0, 18.0 ],
									"id" : "obj-11",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "hash={1=>2\\,3=>4}\\; hash.to_a.each{|pair| out0 pair}\\; 1",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 12.0, 419.0, 351.0, 18.0 ],
									"id" : "obj-12",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Ruby can handle numbers much larger than Max supports. These must be converted to a Max message",
									"linecount" : 2,
									"fontsize" : 11.0,
									"patching_rect" : [ 85.0, 61.0, 323.0, 33.0 ],
									"id" : "obj-13",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "2**1000",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 20.0, 67.0, 63.0, 18.0 ],
									"id" : "obj-14",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "verbose mode indicates when a non-string type is converted to a string.",
									"linecount" : 2,
									"fontsize" : 11.0,
									"patching_rect" : [ 177.0, 287.0, 232.0, 33.0 ],
									"id" : "obj-15",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "['a'\\, 'b'\\, 'c']",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 21.0, 168.0, 92.0, 18.0 ],
									"id" : "obj-16",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "flat arrays are converted to a list or Max messages (lists start with a number, otherwise it's a message)",
									"linecount" : 2,
									"fontsize" : 11.0,
									"patching_rect" : [ 115.0, 148.0, 299.0, 33.0 ],
									"id" : "obj-17",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "[1\\, 2\\, 3]",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 22.0, 145.0, 74.0, 18.0 ],
									"id" : "obj-18",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Your script can force the output to be the type you want:",
									"fontsize" : 11.0,
									"patching_rect" : [ 11.0, 398.0, 347.0, 20.0 ],
									"id" : "obj-19",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "'string'",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 20.0, 104.0, 51.0, 18.0 ],
									"id" : "obj-20",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "1.5",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 21.0, 33.0, 26.0, 18.0 ],
									"id" : "obj-21",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "1",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 21.0, 11.0, 18.0, 18.0 ],
									"id" : "obj-22",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Hashes also turn into a single string.",
									"fontsize" : 11.0,
									"patching_rect" : [ 145.0, 247.0, 223.0, 20.0 ],
									"id" : "obj-23",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Nested arrays will turn into a single string.",
									"fontsize" : 11.0,
									"patching_rect" : [ 160.0, 207.0, 253.0, 20.0 ],
									"id" : "obj-24",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "{1=>2\\, 3=>[4\\,5]}",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 20.0, 248.0, 125.0, 18.0 ],
									"id" : "obj-25",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "[1\\, [2\\, 3]\\, [4\\, 5]]",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 19.0, 208.0, 140.0, 18.0 ],
									"id" : "obj-26",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Ruby ints and floats convert to Max ints and floats",
									"linecount" : 2,
									"fontsize" : 11.0,
									"patching_rect" : [ 48.0, 15.0, 173.0, 33.0 ],
									"id" : "obj-27",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "strings are converted to max messages",
									"fontsize" : 11.0,
									"patching_rect" : [ 73.0, 104.0, 234.0, 20.0 ],
									"id" : "obj-28",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend eval out0",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 6.0, 293.0, 111.0, 20.0 ],
									"id" : "obj-29",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend eval",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 12.0, 475.0, 82.0, 20.0 ],
									"id" : "obj-30",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-5", 3 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 2 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 1 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [ 36.5, 465.0, 21.5, 465.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [ 14.5, 345.0, 8.0, 345.0, 8.0, 522.0, 21.5, 522.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [ 29.5, 86.0, 15.5, 86.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [ 30.5, 30.0, 15.5, 30.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [ 30.5, 53.0, 15.5, 53.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [ 29.5, 125.0, 15.5, 125.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [ 29.5, 268.0, 15.5, 268.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [ 28.5, 229.0, 15.5, 229.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [ 31.5, 164.0, 15.5, 164.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [ 30.5, 187.0, 15.5, 187.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-32", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"fontsize" : 11.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"fontname" : "Verdana",
						"default_fontsize" : 11.0,
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p \"inter-object communcation\"",
					"fontsize" : 11.0,
					"patching_rect" : [ 22.0, 76.0, 185.0, 20.0 ],
					"id" : "obj-9",
					"fontname" : "Verdana",
					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 286.0, 44.0, 717.0, 655.0 ],
						"bglocked" : 0,
						"defrect" : [ 286.0, 44.0, 717.0, 655.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 11.0,
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "puts 'my_id: ' + max_object('my_id').to_s\\, 'ajmHelpObjects1.my_id: ' + max_object('ajmHelpObjects1.my_id').to_s",
									"linecount" : 2,
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 27.0, 454.0, 408.0, 31.0 ],
									"id" : "obj-42",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "This will output a lot because this help file uses so many ajm.ruby objects!",
									"linecount" : 2,
									"fontsize" : 11.0,
									"patching_rect" : [ 451.0, 540.0, 228.0, 33.0 ],
									"id" : "obj-40",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "puts $max_object_map",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 309.0, 542.0, 141.0, 18.0 ],
									"id" : "obj-38",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Every ajm.ruby instance will have a unique id. If no @id attribute is provided, a semi-random unique value (like '927b70') will be used. You can find out the current object's context and id with $max_object.context and $max_object.id",
									"linecount" : 2,
									"fontsize" : 11.0,
									"patching_rect" : [ 24.0, 371.0, 691.0, 33.0 ],
									"id" : "obj-37",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.ruby @context ajmHelpObjects3 @id ajmHelpId3",
									"linecount" : 2,
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 19.0, 566.0, 207.0, 33.0 ],
									"id" : "obj-27",
									"fontname" : "Verdana",
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "puts $max_object_map['ajmHelpObjects3']",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 19.0, 540.0, 251.0, 18.0 ],
									"id" : "obj-25",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p \"notes about the empty context\"",
									"fontsize" : 11.0,
									"patching_rect" : [ 21.0, 614.011475, 202.0, 20.0 ],
									"id" : "obj-24",
									"fontname" : "Verdana",
									"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
									"numinlets" : 0,
									"numoutlets" : 0,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 236.0, 469.0, 461.0, 213.0 ],
										"bglocked" : 0,
										"defrect" : [ 236.0, 469.0, 461.0, 213.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 11.0,
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "The $max_objects array is only useful when using shared named contexts. If you ever need to get all max_objects under the empty context, use $max_object_map[nil]",
													"linecount" : 3,
													"fontsize" : 11.0,
													"patching_rect" : [ 14.0, 145.0, 431.0, 47.0 ],
													"id" : "obj-8",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"numoutlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Stating that the $max_objects array stores all objects in the same context was misleading. It actually stores objects with the same Ruby evaluator. Objects with no @context have their own dedicated evaluator, and so they always have a $max_objects array that only contain themself.",
													"linecount" : 4,
													"fontsize" : 11.0,
													"patching_rect" : [ 14.0, 70.0, 427.0, 60.0 ],
													"id" : "obj-7",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"numoutlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "The $max_object_map and the max_object() method consider objects with no @context to be in the same context. This allows easy lookup of objects by id when not using shared contexts.",
													"linecount" : 3,
													"fontsize" : 11.0,
													"patching_rect" : [ 14.0, 10.0, 431.0, 47.0 ],
													"id" : "obj-5",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"numoutlets" : 0
												}

											}
 ],
										"lines" : [  ]
									}
,
									"saved_object_attributes" : 									{
										"fontface" : 0,
										"fontsize" : 11.0,
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"fontname" : "Verdana",
										"default_fontsize" : 11.0,
										"globalpatchername" : ""
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "The above example uses the special max_object() lookup method. If this method is passed just an 'id', it will find the MaxObject with that @id in the current context. To find an object in another context, send the method 'context.id'. For example:",
									"linecount" : 3,
									"fontsize" : 11.0,
									"patching_rect" : [ 24.0, 410.0, 664.0, 47.0 ],
									"id" : "obj-22",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "ids can change at any time. It's recommended to keep the id constant after initializing your patch.",
									"linecount" : 4,
									"fontsize" : 11.0,
									"patching_rect" : [ 518.0, 224.0, 166.0, 60.0 ],
									"id" : "obj-18",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "id ajmHelpId2",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 555.0, 288.0, 88.0, 18.0 ],
									"id" : "obj-14",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "id ajmHelpId2-b",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 554.0, 320.0, 100.0, 18.0 ],
									"id" : "obj-13",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "target = max_object('ajmHelpId2')\\; if target then target.outlet(0\\,'hello from another object') else puts 'object not found' end",
									"linecount" : 3,
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 26.0, 272.0, 294.0, 45.0 ],
									"id" : "obj-21",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.ruby @context ajmHelpObjects3 @id ajmHelpId1",
									"linecount" : 2,
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 26.0, 326.0, 202.0, 33.0 ],
									"id" : "obj-19",
									"fontname" : "Verdana",
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print foundById",
									"fontsize" : 11.0,
									"patching_rect" : [ 342.0, 347.0, 97.0, 20.0 ],
									"id" : "obj-16",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.ruby @context ajmHelpObjects3 @id ajmHelpId2",
									"linecount" : 2,
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 342.0, 296.0, 200.0, 33.0 ],
									"id" : "obj-17",
									"fontname" : "Verdana",
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "To communicate with a specific ajm.ruby object, use the @id attribute",
									"fontsize" : 11.0,
									"patching_rect" : [ 28.0, 253.0, 406.0, 20.0 ],
									"id" : "obj-12",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print 555",
									"fontsize" : 11.0,
									"patching_rect" : [ 412.0, 207.0, 61.0, 20.0 ],
									"id" : "obj-7",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.ruby @context ajmHelpObjects2",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 412.0, 183.0, 240.0, 20.0 ],
									"id" : "obj-8",
									"fontname" : "Verdana",
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print 444",
									"fontsize" : 11.0,
									"patching_rect" : [ 344.0, 183.0, 61.0, 20.0 ],
									"id" : "obj-9",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.ruby @context ajmHelpObjects2",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 344.0, 159.0, 240.0, 20.0 ],
									"id" : "obj-10",
									"fontname" : "Verdana",
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print 3",
									"fontsize" : 11.0,
									"patching_rect" : [ 95.0, 208.0, 47.0, 20.0 ],
									"id" : "obj-5",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.ruby @context ajmHelpObjects1",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 95.0, 184.0, 240.0, 20.0 ],
									"id" : "obj-6",
									"fontname" : "Verdana",
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print 2",
									"fontsize" : 11.0,
									"patching_rect" : [ 35.0, 181.0, 47.0, 20.0 ],
									"id" : "obj-3",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.ruby @context ajmHelpObjects1 @id my_id",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 35.0, 157.0, 302.0, 20.0 ],
									"id" : "obj-4",
									"fontname" : "Verdana",
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "context ajmHelpObjects2",
									"fontsize" : 11.1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 390.0, 123.0, 151.0, 18.0 ],
									"id" : "obj-30",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "context ajmHelpObjects1",
									"fontsize" : 11.1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 390.0, 94.0, 151.0, 18.0 ],
									"id" : "obj-29",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Note: The $max_objects array is not guaranteed to be in any particular order.",
									"linecount" : 2,
									"fontsize" : 11.0,
									"patching_rect" : [ 341.0, 50.0, 243.0, 33.0 ],
									"id" : "obj-36",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "All objects in the current named context are stored in the $max_objects array. $max_object stores the current Max Object instance. ",
									"linecount" : 2,
									"fontsize" : 11.0,
									"patching_rect" : [ 24.0, 12.0, 456.0, 33.0 ],
									"id" : "obj-35",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "$max_object.outlet(0\\,'just me')",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 60.0, 77.0, 192.0, 18.0 ],
									"id" : "obj-34",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print 1",
									"fontsize" : 11.0,
									"patching_rect" : [ 36.0, 130.0, 47.0, 20.0 ],
									"id" : "obj-23",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "$max_objects.each{|obj| obj.outlet(0\\,'everyone')}",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 36.0, 51.0, 299.0, 18.0 ],
									"id" : "obj-31",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.ruby @context ajmHelpObjects1",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 36.0, 106.0, 325.0, 20.0 ],
									"id" : "obj-33",
									"fontname" : "Verdana",
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "$max_object_map maps contexts to a map of ids to objects. So for example, if we lookup $max_object_map['context_name'], we get a map of ids to max objects that use @context context_name",
									"linecount" : 2,
									"fontsize" : 11.0,
									"patching_rect" : [ 21.0, 503.0, 607.0, 33.0 ],
									"id" : "obj-2",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-42", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [ 36.5, 488.0, 12.0, 488.0, 12.0, 321.0, 35.5, 321.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-38", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [ 318.5, 562.0, 28.5, 562.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [ 564.5, 309.0, 550.0, 309.0, 550.0, 289.0, 351.5, 289.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [ 563.5, 342.0, 550.0, 342.0, 550.0, 289.0, 351.5, 289.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 0 ],
									"destination" : [ "obj-33", 0 ],
									"hidden" : 0,
									"midpoints" : [ 69.5, 101.0, 45.5, 101.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 0 ],
									"destination" : [ "obj-33", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-33", 0 ],
									"hidden" : 0,
									"midpoints" : [ 399.5, 115.0, 372.0, 115.0, 372.0, 101.0, 45.0, 101.0, 45.0, 102.0, 45.5, 102.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-33", 0 ],
									"hidden" : 0,
									"midpoints" : [ 399.5, 143.0, 372.0, 143.0, 372.0, 101.0, 45.5, 101.0 ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"fontsize" : 11.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"fontname" : "Verdana",
						"default_fontsize" : 11.0,
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p \"variable scope\"",
					"fontsize" : 11.0,
					"patching_rect" : [ 22.0, 136.149414, 112.0, 20.0 ],
					"id" : "obj-1",
					"fontname" : "Verdana",
					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 539.0, 46.0, 444.0, 275.0 ],
						"bglocked" : 0,
						"defrect" : [ 539.0, 46.0, 444.0, 275.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 11.0,
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "@var",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 182.0, 122.0, 39.0, 18.0 ],
									"id" : "obj-14",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "method call",
									"fontsize" : 11.0,
									"patching_rect" : [ 320.0, 100.0, 83.0, 20.0 ],
									"id" : "obj-13",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "attribute",
									"fontsize" : 11.0,
									"patching_rect" : [ 184.0, 101.0, 60.0, 20.0 ],
									"id" : "obj-12",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "local",
									"fontsize" : 11.0,
									"patching_rect" : [ 256.0, 99.0, 38.0, 20.0 ],
									"id" : "obj-11",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.ruby @verbose true",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 18.0, 190.0, 170.0, 20.0 ],
									"id" : "obj-9",
									"fontname" : "Verdana",
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "global",
									"fontsize" : 11.0,
									"patching_rect" : [ 116.0, 106.0, 48.0, 20.0 ],
									"id" : "obj-8",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "constant",
									"fontsize" : 11.0,
									"patching_rect" : [ 39.0, 100.0, 62.0, 20.0 ],
									"id" : "obj-5",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "In general it's only safe to use local variables within a file.",
									"linecount" : 2,
									"fontsize" : 11.0,
									"patching_rect" : [ 217.0, 196.0, 183.0, 33.0 ],
									"id" : "obj-6",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess set",
									"fontsize" : 11.0,
									"hidden" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 204.0, 170.0, 83.0, 20.0 ],
									"id" : "obj-4",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 17.0, 224.0, 174.0, 18.0 ],
									"id" : "obj-3",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "constants start with a capital letter, globals start with a $",
									"fontsize" : 11.0,
									"patching_rect" : [ 12.0, 51.0, 332.0, 20.0 ],
									"id" : "obj-2",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "file ajm_variable_scope.rb",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 18.0, 76.0, 193.0, 18.0 ],
									"id" : "obj-18",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "some_method",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 315.0, 121.0, 89.0, 18.0 ],
									"id" : "obj-19",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "$var",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 118.0, 124.0, 37.0, 18.0 ],
									"id" : "obj-21",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "Var",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 39.0, 123.0, 27.0, 18.0 ],
									"id" : "obj-22",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "var",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 255.0, 120.0, 32.5, 18.0 ],
									"id" : "obj-23",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"bgcolor" : [ 1.0, 0.611765, 0.611765, 1.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend eval out0",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 39.0, 161.0, 112.0, 20.0 ],
									"id" : "obj-24",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Local variables are forgotten after each evaluation. To remember a value across separate Max messages, use globals or constants.",
									"linecount" : 2,
									"fontsize" : 11.0,
									"patching_rect" : [ 11.0, 8.0, 404.0, 33.0 ],
									"id" : "obj-25",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-3", 1 ],
									"hidden" : 0,
									"midpoints" : [ 27.5, 216.5, 181.5, 216.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [ 264.5, 156.0, 48.5, 156.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [ 324.5, 156.0, 48.5, 156.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [ 127.5, 156.0, 48.5, 156.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [ 48.5, 156.0, 48.5, 156.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [ 48.5, 185.5, 27.5, 185.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [ 191.5, 156.0, 48.5, 156.0 ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"fontsize" : 11.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"fontname" : "Verdana",
						"default_fontsize" : 11.0,
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p at_exit",
					"fontsize" : 11.0,
					"patching_rect" : [ 22.0, 105.574722, 60.0, 20.0 ],
					"id" : "obj-2",
					"fontname" : "Verdana",
					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 560.0, 46.0, 458.0, 293.0 ],
						"bglocked" : 0,
						"defrect" : [ 560.0, 46.0, 458.0, 293.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 11.0,
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "at_exit { puts 'called second at exit' }",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 221.0, 126.0, 221.0, 18.0 ],
									"id" : "obj-1",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "at_exit { puts 'called first at exit' }",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 178.0, 91.0, 204.0, 18.0 ],
									"id" : "obj-4",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "If shared contexts are used, the at_exit handlers will not run until the last object in the context is deleted. \n\nat_exit handlers will also be called if a scriptfile is reloaded (because reloading a scriptfile resets the context).",
									"linecount" : 5,
									"fontsize" : 11.0,
									"patching_rect" : [ 6.0, 209.0, 431.0, 73.0 ],
									"id" : "obj-5",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "at_exit { ruby code }",
									"fontface" : 1,
									"fontsize" : 12.0,
									"patching_rect" : [ 8.0, 7.0, 190.0, 20.0 ],
									"id" : "obj-7",
									"fontname" : "Courier New",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "at_exit registers code to run when the ajm.ruby object is deleted. If multiple at_exit handlers are registered, they will be executed in reverse order of registration. \r",
									"linecount" : 3,
									"fontsize" : 11.0,
									"patching_rect" : [ 8.0, 32.0, 442.0, 47.0 ],
									"id" : "obj-8",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Try evaluating these at_exit commands  and then delete the ajm.ruby object.",
									"linecount" : 3,
									"fontsize" : 11.0,
									"patching_rect" : [ 10.0, 109.0, 171.0, 47.0 ],
									"id" : "obj-9",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.ruby",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 178.0, 167.0, 86.0, 20.0 ],
									"id" : "obj-10",
									"fontname" : "Verdana",
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"fontsize" : 11.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"fontname" : "Verdana",
						"default_fontsize" : 11.0,
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p \"shared context and variables\"",
					"fontsize" : 11.0,
					"patching_rect" : [ 22.0, 45.287369, 194.0, 20.0 ],
					"id" : "obj-13",
					"fontname" : "Verdana",
					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 419.0, 46.0, 658.0, 594.0 ],
						"bglocked" : 0,
						"defrect" : [ 419.0, 46.0, 658.0, 594.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 11.0,
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "delete_global :x",
									"fontsize" : 11.1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 394.0, 496.0, 101.0, 18.0 ],
									"id" : "obj-30",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "has_global? :x",
									"fontsize" : 11.1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 512.0, 496.0, 92.0, 18.0 ],
									"id" : "obj-42",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "get_global :x",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 291.0, 496.0, 84.0, 18.0 ],
									"id" : "obj-24",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "get_global :x",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 51.0, 514.0, 84.0, 18.0 ],
									"id" : "obj-33",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "set_global :x\\, 'global object'",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 32.0, 492.0, 172.0, 18.0 ],
									"id" : "obj-34",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print",
									"fontsize" : 11.0,
									"patching_rect" : [ 291.0, 561.0, 37.0, 20.0 ],
									"id" : "obj-35",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.ruby @context ajmHelpContext2",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 291.0, 538.0, 241.0, 20.0 ],
									"id" : "obj-36",
									"fontname" : "Verdana",
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print",
									"fontsize" : 11.0,
									"patching_rect" : [ 32.0, 563.0, 37.0, 20.0 ],
									"id" : "obj-38",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.ruby @context ajmHelpContext",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 32.0, 540.0, 234.0, 20.0 ],
									"id" : "obj-39",
									"fontname" : "Verdana",
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Conversely, the set_global() and get_global() methods define variables visible to all ajm.ruby instances.",
									"fontsize" : 11.0,
									"patching_rect" : [ 32.0, 467.0, 611.0, 20.0 ],
									"id" : "obj-41",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Note: If no ajm.ruby objects reference a context, the context will be deleted. If you want to keep a context around, make sure at least one ajm.ruby object references it.",
									"linecount" : 3,
									"fontsize" : 11.0,
									"patching_rect" : [ 286.0, 259.0, 356.0, 47.0 ],
									"id" : "obj-40",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "you can change contexts at any time",
									"linecount" : 2,
									"fontsize" : 11.0,
									"patching_rect" : [ 520.0, 168.0, 128.0, 33.0 ],
									"id" : "obj-37",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "context ajmHelpContext_2",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 363.0, 185.0, 158.0, 18.0 ],
									"id" : "obj-32",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "context ajmHelpContext",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 341.0, 163.0, 144.0, 18.0 ],
									"id" : "obj-31",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "$x",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 291.0, 183.0, 32.5, 18.0 ],
									"id" : "obj-23",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print",
									"fontsize" : 11.0,
									"patching_rect" : [ 291.0, 235.0, 37.0, 20.0 ],
									"id" : "obj-28",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.ruby @context ajmHelpContext",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 291.0, 212.0, 234.0, 20.0 ],
									"id" : "obj-29",
									"fontname" : "Verdana",
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "$x",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 87.0, 182.0, 32.5, 18.0 ],
									"id" : "obj-12",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "$x = 66",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 23.0, 182.0, 55.0, 18.0 ],
									"id" : "obj-13",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print",
									"fontsize" : 11.0,
									"patching_rect" : [ 23.0, 234.0, 37.0, 20.0 ],
									"id" : "obj-14",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.ruby @context ajmHelpContext_2",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 23.0, 211.0, 248.0, 20.0 ],
									"id" : "obj-15",
									"fontname" : "Verdana",
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Shared context lets multiple ajm.ruby objects share a Ruby evaluator.",
									"fontface" : 1,
									"fontsize" : 12.0,
									"patching_rect" : [ 7.0, 4.0, 502.0, 21.0 ],
									"id" : "obj-27",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "get_local :x",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 290.0, 372.0, 76.0, 18.0 ],
									"id" : "obj-1",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "set_local :x\\, 'second object'",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 273.0, 350.0, 170.0, 18.0 ],
									"id" : "obj-2",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "get_local :x",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 33.0, 373.0, 76.0, 18.0 ],
									"id" : "obj-3",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "set_local :x\\, 'first object'",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 14.0, 351.0, 153.0, 18.0 ],
									"id" : "obj-4",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print",
									"fontsize" : 11.0,
									"patching_rect" : [ 273.0, 420.0, 37.0, 20.0 ],
									"id" : "obj-5",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.ruby @context ajmHelpContext",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 273.0, 397.0, 234.0, 20.0 ],
									"id" : "obj-6",
									"fontname" : "Verdana",
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print",
									"fontsize" : 11.0,
									"patching_rect" : [ 14.0, 422.0, 37.0, 20.0 ],
									"id" : "obj-7",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.ruby @context ajmHelpContext",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 14.0, 399.0, 234.0, 20.0 ],
									"id" : "obj-8",
									"fontname" : "Verdana",
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "$x",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 514.0, 71.0, 32.5, 18.0 ],
									"id" : "obj-9",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print",
									"fontsize" : 11.0,
									"patching_rect" : [ 514.0, 118.0, 37.0, 20.0 ],
									"id" : "obj-10",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.ruby",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 514.0, 93.0, 86.0, 20.0 ],
									"id" : "obj-11",
									"fontname" : "Verdana",
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "$x",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 262.0, 72.0, 32.5, 18.0 ],
									"id" : "obj-16",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print",
									"fontsize" : 11.0,
									"patching_rect" : [ 262.0, 119.0, 37.0, 20.0 ],
									"id" : "obj-17",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.ruby @context ajmHelpContext",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 262.0, 94.0, 234.0, 20.0 ],
									"id" : "obj-18",
									"fontname" : "Verdana",
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "$x",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 76.0, 67.0, 32.5, 18.0 ],
									"id" : "obj-19",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "$x = 99",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 12.0, 67.0, 55.0, 18.0 ],
									"id" : "obj-20",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print",
									"fontsize" : 11.0,
									"patching_rect" : [ 12.0, 119.0, 37.0, 20.0 ],
									"id" : "obj-21",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.ruby @context ajmHelpContext",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 12.0, 96.0, 234.0, 20.0 ],
									"id" : "obj-22",
									"fontname" : "Verdana",
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Any variables, methods, and classes defined in one object will be available in any objects with the same context. Contexts are globally shared between patches (like send/receive)",
									"linecount" : 2,
									"fontsize" : 11.0,
									"patching_rect" : [ 7.0, 29.0, 534.0, 33.0 ],
									"id" : "obj-25",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "The set_local() and get_local() methods define a variable only visible to the current ajm.ruby instance.",
									"fontsize" : 11.0,
									"patching_rect" : [ 14.0, 326.0, 586.0, 20.0 ],
									"id" : "obj-26",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [ 96.5, 204.0, 32.5, 204.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [ 372.5, 207.0, 300.5, 207.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [ 350.5, 207.0, 300.5, 207.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [ 299.5, 393.0, 282.5, 393.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [ 42.5, 394.0, 23.5, 394.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [ 85.5, 89.0, 21.5, 89.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-39", 0 ],
									"destination" : [ "obj-38", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-39", 0 ],
									"hidden" : 0,
									"midpoints" : [ 60.5, 535.0, 41.5, 535.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 0 ],
									"destination" : [ "obj-39", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 0 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-36", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-36", 0 ],
									"hidden" : 0,
									"midpoints" : [ 403.5, 527.0, 300.5, 527.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-42", 0 ],
									"destination" : [ "obj-36", 0 ],
									"hidden" : 0,
									"midpoints" : [ 521.5, 527.0, 300.5, 527.0 ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"fontsize" : 11.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"fontname" : "Verdana",
						"default_fontsize" : 11.0,
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p $LOAD_PATH",
					"fontsize" : 11.0,
					"patching_rect" : [ 22.0, 15.0, 94.0, 20.0 ],
					"id" : "obj-18",
					"fontname" : "Verdana",
					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 466.0, 47.0, 553.0, 279.0 ],
						"bglocked" : 0,
						"defrect" : [ 466.0, 47.0, 553.0, 279.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 11.0,
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "$LOAD_PATH.unshift File.dirname($0)",
									"fontsize" : 11.0,
									"patching_rect" : [ 294.0, 217.0, 227.0, 20.0 ],
									"id" : "obj-27",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "To require/load files relative to the current scriptfile, initialize your scriptfile with the following line of code:",
									"linecount" : 3,
									"fontsize" : 11.0,
									"patching_rect" : [ 290.0, 169.0, 230.0, 47.0 ],
									"id" : "obj-25",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Use the Options -> File Preferences menu to change your Max search path.",
									"fontsize" : 11.0,
									"patching_rect" : [ 17.0, 33.0, 475.0, 20.0 ],
									"id" : "obj-2",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Any ruby scripts in a folder on the $LOAD_PATH variable can be found.",
									"fontsize" : 11.0,
									"patching_rect" : [ 136.0, 72.0, 411.0, 20.0 ],
									"id" : "obj-3",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "puts $LOAD_PATH",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 21.0, 73.0, 112.0, 18.0 ],
									"id" : "obj-4",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "load() expects the file extension",
									"fontsize" : 11.0,
									"patching_rect" : [ 166.0, 128.0, 187.0, 20.0 ],
									"id" : "obj-5",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Any scripts on the Max search path can be dynamically loaded.",
									"fontface" : 1,
									"fontsize" : 12.0,
									"patching_rect" : [ 17.0, 7.0, 482.0, 21.0 ],
									"id" : "obj-11",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "load 'ajm_scriptfile.rb'",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 23.0, 129.0, 134.0, 18.0 ],
									"id" : "obj-12",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "load '/path/to/my/rubyscripts/name.rb'",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 23.0, 192.0, 241.0, 18.0 ],
									"id" : "obj-13",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print =>",
									"fontsize" : 11.0,
									"patching_rect" : [ 8.0, 247.0, 56.0, 20.0 ],
									"id" : "obj-14",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "require 'ajm_scriptfile.rb'",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 22.0, 101.0, 150.0, 18.0 ],
									"id" : "obj-15",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.ruby @scriptfile ajm_load_require.rb",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 8.0, 224.0, 264.0, 20.0 ],
									"id" : "obj-16",
									"fontname" : "Verdana",
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "require() won't load the file more than once (good for libraries)",
									"fontsize" : 11.0,
									"patching_rect" : [ 177.0, 101.0, 360.0, 20.0 ],
									"id" : "obj-17",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Or you can specifiy the full path to the file if it's not on the Max search path:",
									"linecount" : 2,
									"fontsize" : 11.0,
									"patching_rect" : [ 24.0, 160.0, 238.0, 33.0 ],
									"id" : "obj-18",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [ 31.5, 122.0, 17.5, 122.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [ 30.5, 94.0, 17.5, 94.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [ 32.5, 151.0, 17.5, 151.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [ 32.5, 215.0, 17.5, 215.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"fontsize" : 11.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"fontname" : "Verdana",
						"default_fontsize" : 11.0,
						"globalpatchername" : ""
					}

				}

			}
 ],
		"lines" : [  ]
	}

}
