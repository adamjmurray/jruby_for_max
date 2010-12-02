{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 234.0, 99.0, 477.0, 235.0 ],
		"bglocked" : 0,
		"defrect" : [ 234.0, 99.0, 477.0, 235.0 ],
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
					"text" : "p \"@symbols_to (working with Max Symbols)\"",
					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
					"patching_rect" : [ 22.0, 47.0, 267.0, 20.0 ],
					"fontname" : "Verdana",
					"id" : "obj-5",
					"numinlets" : 0,
					"fontsize" : 11.0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 253.0, 68.0, 683.0, 444.0 ],
						"bglocked" : 0,
						"defrect" : [ 253.0, 68.0, 683.0, 444.0 ],
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
									"text" : "With 'literal' mode, you may find sprintf or combine helpful.",
									"linecount" : 2,
									"patching_rect" : [ 168.0, 262.0, 184.0, 33.0 ],
									"fontname" : "Verdana",
									"id" : "obj-34",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"outlettype" : [ "" ],
									"patching_rect" : [ 33.0, 391.0, 50.0, 18.0 ],
									"fontname" : "Verdana",
									"id" : "obj-25",
									"numinlets" : 2,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess set",
									"outlettype" : [ "" ],
									"patching_rect" : [ 15.0, 368.0, 83.0, 20.0 ],
									"fontname" : "Verdana",
									"id" : "obj-26",
									"hidden" : 1,
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"outlettype" : [ "" ],
									"patching_rect" : [ 157.0, 394.0, 50.0, 18.0 ],
									"fontname" : "Verdana",
									"id" : "obj-27",
									"numinlets" : 2,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess set",
									"outlettype" : [ "" ],
									"patching_rect" : [ 157.0, 345.0, 83.0, 20.0 ],
									"fontname" : "Verdana",
									"id" : "obj-28",
									"hidden" : 1,
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sprintf :%s",
									"outlettype" : [ "" ],
									"patching_rect" : [ 64.0, 365.0, 72.0, 20.0 ],
									"fontname" : "Verdana",
									"id" : "obj-29",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "combine : symbol @triggers 1",
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 188.0, 368.0, 178.0, 20.0 ],
									"fontname" : "Verdana",
									"id" : "obj-30",
									"numinlets" : 2,
									"fontsize" : 11.0,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"outlettype" : [ "" ],
									"patching_rect" : [ 17.0, 330.0, 50.0, 18.0 ],
									"fontname" : "Verdana",
									"id" : "obj-23",
									"numinlets" : 2,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess set",
									"outlettype" : [ "" ],
									"patching_rect" : [ 15.0, 272.0, 83.0, 20.0 ],
									"fontname" : "Verdana",
									"id" : "obj-24",
									"hidden" : 1,
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"outlettype" : [ "" ],
									"patching_rect" : [ 192.0, 332.0, 50.0, 18.0 ],
									"fontname" : "Verdana",
									"id" : "obj-22",
									"numinlets" : 2,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess set",
									"outlettype" : [ "" ],
									"patching_rect" : [ 253.0, 330.0, 83.0, 20.0 ],
									"fontname" : "Verdana",
									"id" : "obj-20",
									"hidden" : 1,
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "abc",
									"outlettype" : [ "" ],
									"patching_rect" : [ 127.0, 272.0, 32.5, 18.0 ],
									"fontname" : "Verdana",
									"id" : "obj-19",
									"numinlets" : 2,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sprintf '%s'",
									"outlettype" : [ "" ],
									"patching_rect" : [ 48.0, 304.0, 73.0, 20.0 ],
									"fontname" : "Verdana",
									"id" : "obj-17",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "combine ' symbol ' @triggers 1",
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 192.0, 304.0, 182.0, 20.0 ],
									"fontname" : "Verdana",
									"id" : "obj-16",
									"numinlets" : 3,
									"fontsize" : 11.0,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Any inlets not specified are 'literal'",
									"patching_rect" : [ 438.0, 274.0, 205.0, 20.0 ],
									"fontname" : "Verdana",
									"id" : "obj-15",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "list a b \"c d e\"",
									"outlettype" : [ "" ],
									"patching_rect" : [ 531.0, 123.0, 89.0, 18.0 ],
									"fontname" : "Verdana",
									"id" : "obj-14",
									"numinlets" : 2,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "1 2 inlet_index()",
									"outlettype" : [ "" ],
									"patching_rect" : [ 421.0, 123.0, 103.0, 18.0 ],
									"fontname" : "Verdana",
									"id" : "obj-12",
									"numinlets" : 2,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "@symbols_to affects Max lists (the Ruby inlet() methods), the call message, and the send message. The eval message is always interpreted literally.",
									"linecount" : 3,
									"patching_rect" : [ 335.0, 16.0, 336.0, 47.0 ],
									"fontname" : "Verdana",
									"id" : "obj-10",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Each @symbols_to option has pros and cons. You will need to experiment to find the best option for your patch.",
									"linecount" : 3,
									"patching_rect" : [ 411.0, 372.0, 264.0, 47.0 ],
									"fontname" : "Verdana",
									"id" : "obj-9",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "list a b \"c d e\"",
									"outlettype" : [ "" ],
									"patching_rect" : [ 202.0, 122.0, 89.0, 18.0 ],
									"fontname" : "Verdana",
									"id" : "obj-8",
									"numinlets" : 2,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "1 a b c",
									"outlettype" : [ "" ],
									"patching_rect" : [ 312.0, 122.0, 48.0, 18.0 ],
									"fontname" : "Verdana",
									"id" : "obj-7",
									"numinlets" : 2,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "1 2 inlet_index()",
									"outlettype" : [ "" ],
									"patching_rect" : [ 92.0, 122.0, 103.0, 18.0 ],
									"fontname" : "Verdana",
									"id" : "obj-6",
									"numinlets" : 2,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "This sets the symbol conversion behavior to inlet0=literal, inlet1=symbol, inlet2=string, inlet3=string, inlet4=string",
									"linecount" : 7,
									"patching_rect" : [ 435.0, 171.0, 138.0, 100.0 ],
									"fontname" : "Verdana",
									"id" : "obj-3",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess set",
									"outlettype" : [ "" ],
									"patching_rect" : [ 23.0, 160.0, 83.0, 20.0 ],
									"fontname" : "Verdana",
									"id" : "obj-32",
									"hidden" : 1,
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"outlettype" : [ "" ],
									"patching_rect" : [ 22.0, 184.0, 176.0, 18.0 ],
									"bgcolor" : [ 1.0, 0.988235, 0.988235, 1.0 ],
									"fontname" : "Verdana",
									"id" : "obj-41",
									"numinlets" : 2,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj jruby 5 @file jruby_inlet_symbols_to.rb @symbols_to literal symbol string *",
									"outlettype" : [ "" ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"patching_rect" : [ 92.0, 152.0, 458.0, 20.0 ],
									"fontname" : "Verdana",
									"id" : "obj-4",
									"numinlets" : 5,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "either 'string', 'symbol', or 'literal' can be set for each inlet. Use * to set all remaining inlets",
									"linecount" : 2,
									"patching_rect" : [ 14.0, 78.0, 282.0, 33.0 ],
									"fontname" : "Verdana",
									"id" : "obj-1",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "@symbols_to",
									"patching_rect" : [ 10.0, 13.0, 169.0, 21.0 ],
									"fontname" : "Verdana",
									"id" : "obj-31",
									"numinlets" : 1,
									"fontface" : 1,
									"fontsize" : 12.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "automatically convert Max symbols to Ruby strings, symbols, or interpret them as a literal (the default)",
									"linecount" : 2,
									"patching_rect" : [ 10.0, 35.0, 299.0, 33.0 ],
									"fontname" : "Verdana",
									"id" : "obj-45",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [ 136.5, 357.5, 73.5, 357.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-30", 1 ],
									"hidden" : 0,
									"midpoints" : [ 136.5, 357.5, 356.5, 357.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-27", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-25", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-28", 0 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-16", 1 ],
									"hidden" : 0,
									"midpoints" : [ 136.5, 298.0, 283.0, 298.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [ 136.5, 298.0, 57.5, 298.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-23", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-22", 1 ],
									"hidden" : 0,
									"midpoints" : [ 201.5, 327.0, 232.5, 327.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-41", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-41", 1 ],
									"hidden" : 0,
									"midpoints" : [ 101.5, 178.0, 188.5, 178.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-4", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-4", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-4", 3 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-4", 4 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"fontname" : "Verdana",
						"default_fontsize" : 11.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 11.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p \"message and textedit\"",
					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
					"patching_rect" : [ 310.0, 77.287369, 151.0, 20.0 ],
					"fontname" : "Verdana",
					"id" : "obj-12",
					"numinlets" : 0,
					"fontsize" : 11.0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 432.0, 45.0, 607.0, 411.0 ],
						"bglocked" : 0,
						"defrect" : [ 432.0, 45.0, 607.0, 411.0 ],
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
									"text" : "There's no need to 'prepend eval' with the output of a textedit object (textedit messages are prepended with 'text', which is treated like 'eval)",
									"linecount" : 3,
									"patching_rect" : [ 298.0, 311.0, 287.0, 47.0 ],
									"fontname" : "Verdana",
									"id" : "obj-27",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj jruby",
									"outlettype" : [ "" ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"patching_rect" : [ 12.0, 345.0, 85.0, 20.0 ],
									"fontname" : "Verdana",
									"id" : "obj-21",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess set",
									"outlettype" : [ "" ],
									"patching_rect" : [ 195.0, 345.0, 83.0, 20.0 ],
									"fontname" : "Verdana",
									"id" : "obj-15",
									"hidden" : 1,
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"outlettype" : [ "" ],
									"patching_rect" : [ 12.0, 377.0, 199.0, 18.0 ],
									"fontname" : "Verdana",
									"id" : "obj-14",
									"numinlets" : 2,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "textbutton",
									"outlettype" : [ "", "", "int" ],
									"patching_rect" : [ 399.0, 261.0, 100.0, 20.0 ],
									"bgcolor" : [ 0.156863, 0.8, 0.54902, 1.0 ],
									"fontname" : "Verdana",
									"id" : "obj-1",
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textovercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"numinlets" : 1,
									"fontsize" : 11.0,
									"bgovercolor" : [ 0.490196, 0.984314, 0.74902, 1.0 ],
									"numoutlets" : 3,
									"text" : "Evaluate"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 195.0, 197.0, 53.0, 20.0 ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"fontname" : "Verdana",
									"id" : "obj-3",
									"numinlets" : 1,
									"triscale" : 0.9,
									"fontsize" : 11.0,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "cube $1",
									"outlettype" : [ "" ],
									"patching_rect" : [ 195.0, 220.0, 54.0, 18.0 ],
									"fontname" : "Verdana",
									"id" : "obj-4",
									"numinlets" : 2,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "\\\"the value of x is #{$x}\\\"",
									"outlettype" : [ "" ],
									"patching_rect" : [ 33.0, 156.0, 161.0, 18.0 ],
									"fontname" : "Verdana",
									"id" : "obj-5",
									"numinlets" : 2,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "$x += 1",
									"outlettype" : [ "" ],
									"patching_rect" : [ 95.0, 128.0, 57.0, 18.0 ],
									"fontname" : "Verdana",
									"id" : "obj-6",
									"numinlets" : 2,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "$x = 1",
									"outlettype" : [ "" ],
									"patching_rect" : [ 32.0, 128.0, 48.0, 18.0 ],
									"fontname" : "Verdana",
									"id" : "obj-7",
									"numinlets" : 2,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "[1.4\\, 2.5]",
									"outlettype" : [ "" ],
									"patching_rect" : [ 35.0, 96.0, 72.0, 18.0 ],
									"fontname" : "Verdana",
									"id" : "obj-8",
									"numinlets" : 2,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "eval def cube n\\; n**3 end",
									"outlettype" : [ "" ],
									"patching_rect" : [ 24.0, 206.0, 161.0, 18.0 ],
									"fontname" : "Verdana",
									"id" : "obj-9",
									"numinlets" : 2,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"outlettype" : [ "int", "bang" ],
									"patching_rect" : [ 26.0, 253.0, 37.0, 20.0 ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"fontname" : "Verdana",
									"id" : "obj-10",
									"numinlets" : 1,
									"triscale" : 0.9,
									"fontsize" : 11.0,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "(if $1 < 0 then 'negative' else 'positive' end)",
									"outlettype" : [ "" ],
									"patching_rect" : [ 26.0, 280.0, 258.0, 18.0 ],
									"fontname" : "Verdana",
									"id" : "obj-11",
									"numinlets" : 2,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Remember $1, $2, etc also have special meaning for message boxes. They will be interpreted before Ruby ever sees the text, which can be useful in some situations.",
									"linecount" : 2,
									"patching_rect" : [ 18.0, 49.0, 500.0, 33.0 ],
									"fontname" : "Verdana",
									"id" : "obj-16",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Message boxes can be tricky. The following characters need to be escaped by putting a backslash in front of them:  \"  ,  ;  \\  (backslashes need to be doubly escaped)",
									"linecount" : 2,
									"patching_rect" : [ 19.0, 8.0, 486.0, 33.0 ],
									"fontname" : "Verdana",
									"id" : "obj-17",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b",
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 288.0, 102.0, 28.0, 20.0 ],
									"fontname" : "Verdana",
									"id" : "obj-18",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "grab",
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 288.0, 125.0, 36.0, 20.0 ],
									"fontname" : "Verdana",
									"id" : "obj-20",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "textedit",
									"text" : "x = 5\nx = x + 10\nout0 x",
									"linecount" : 3,
									"outputmode" : 1,
									"outlettype" : [ "", "int", "", "" ],
									"tabmode" : 0,
									"patching_rect" : [ 305.0, 152.0, 278.0, 107.0 ],
									"fontname" : "Geneva",
									"id" : "obj-22",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 4
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "This textedit has \"Output as One Symbol\" enabled, so escaping quotes and commas is not neccessary. Multi-line scripts work too.",
									"linecount" : 3,
									"patching_rect" : [ 326.0, 102.0, 256.0, 47.0 ],
									"fontname" : "Verdana",
									"id" : "obj-23",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend eval out0",
									"outlettype" : [ "" ],
									"patching_rect" : [ 12.0, 314.0, 112.0, 20.0 ],
									"fontname" : "Verdana",
									"id" : "obj-25",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"grad2" : [ 0.043137, 0.223529, 0.196078, 1.0 ],
									"patching_rect" : [ 300.0, 148.0, 288.0, 137.0 ],
									"id" : "obj-12",
									"angle" : -90.0,
									"mode" : 1,
									"numinlets" : 1,
									"border" : 2,
									"grad1" : [ 0.156863, 0.670588, 0.8, 1.0 ],
									"numoutlets" : 0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [ 204.5, 243.0, 21.5, 243.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [ 33.5, 229.0, 6.0, 248.0, 6.0, 333.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [ 44.5, 119.0, 21.5, 119.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [ 35.5, 307.0, 21.5, 307.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [ 41.5, 151.0, 21.5, 151.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [ 104.5, 151.0, 21.5, 151.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [ 42.5, 177.0, 21.5, 177.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [ 297.5, 340.0, 21.5, 340.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-14", 1 ],
									"hidden" : 0,
									"midpoints" : [ 21.5, 370.5, 201.5, 370.5 ]
								}

							}
, 							{
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
									"midpoints" : [ 408.5, 290.0, 593.0, 290.0, 593.0, 95.0, 297.5, 95.0 ]
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
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"fontname" : "Verdana",
						"default_fontsize" : 11.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 11.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p \"Ruby 1.9\"",
					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
					"patching_rect" : [ 310.0, 168.149414, 81.0, 20.0 ],
					"fontname" : "Verdana",
					"id" : "obj-3",
					"numinlets" : 0,
					"fontsize" : 11.0,
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
									"outlettype" : [ "" ],
									"patching_rect" : [ 382.0, 197.0, 54.0, 18.0 ],
									"fontname" : "Verdana",
									"id" : "obj-11",
									"numinlets" : 2,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "out0 RUBY_VERSION",
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 27.0, 127.0, 18.0 ],
									"fontname" : "Arial",
									"id" : "obj-5",
									"numinlets" : 2,
									"fontsize" : 11.595187,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "String indexing makes more sense in Ruby 1.9",
									"linecount" : 2,
									"patching_rect" : [ 77.0, 68.0, 143.0, 33.0 ],
									"fontname" : "Verdana",
									"id" : "obj-8",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "The older syntax works with both",
									"linecount" : 2,
									"patching_rect" : [ 405.0, 129.0, 107.0, 33.0 ],
									"fontname" : "Verdana",
									"id" : "obj-7",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "The new Ruby 1.9 hash syntax",
									"linecount" : 2,
									"patching_rect" : [ 238.0, 47.0, 117.0, 33.0 ],
									"fontname" : "Verdana",
									"id" : "obj-6",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "$hash = {:key => 42}, out0 $hash[:key]",
									"linecount" : 2,
									"outlettype" : [ "" ],
									"patching_rect" : [ 277.0, 130.0, 125.0, 31.0 ],
									"fontname" : "Arial",
									"id" : "obj-3",
									"numinlets" : 2,
									"fontsize" : 11.595187,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "gswitch2",
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 218.0, 130.0, 39.0, 32.0 ],
									"id" : "obj-2",
									"int" : 1,
									"numinlets" : 2,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess set",
									"outlettype" : [ "" ],
									"patching_rect" : [ 158.0, 244.0, 83.0, 20.0 ],
									"fontname" : "Verdana",
									"id" : "obj-1",
									"hidden" : 1,
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend eval",
									"outlettype" : [ "" ],
									"patching_rect" : [ 238.0, 194.0, 78.0, 20.0 ],
									"fontname" : "Arial",
									"id" : "obj-19",
									"numinlets" : 1,
									"fontsize" : 11.595187,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"outlettype" : [ "" ],
									"patching_rect" : [ 238.0, 273.0, 50.0, 18.0 ],
									"fontname" : "Arial",
									"id" : "obj-18",
									"numinlets" : 2,
									"fontsize" : 11.595187,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"outlettype" : [ "" ],
									"patching_rect" : [ 53.0, 268.0, 70.0, 18.0 ],
									"fontname" : "Arial",
									"id" : "obj-17",
									"numinlets" : 2,
									"fontsize" : 11.595187,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj jruby @ruby_version 1.8",
									"outlettype" : [ "" ],
									"patching_rect" : [ 238.0, 226.0, 177.0, 20.0 ],
									"fontname" : "Arial",
									"id" : "obj-15",
									"numinlets" : 1,
									"fontsize" : 11.595187,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "$str = 'STRING', out0 $str[-1]",
									"linecount" : 2,
									"outlettype" : [ "" ],
									"patching_rect" : [ 83.0, 107.0, 96.0, 31.0 ],
									"fontname" : "Arial",
									"id" : "obj-14",
									"numinlets" : 2,
									"fontsize" : 11.595187,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend eval",
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 194.0, 78.0, 20.0 ],
									"fontname" : "Arial",
									"id" : "obj-13",
									"numinlets" : 1,
									"fontsize" : 11.595187,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "$hash = {key: 42}, out0 $hash[:key]",
									"linecount" : 2,
									"outlettype" : [ "" ],
									"patching_rect" : [ 238.0, 81.0, 110.0, 31.0 ],
									"fontname" : "Arial",
									"id" : "obj-10",
									"numinlets" : 2,
									"fontsize" : 11.595187,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj jruby @ruby_version 1.9",
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 220.0, 177.0, 20.0 ],
									"fontname" : "Arial",
									"id" : "obj-4",
									"numinlets" : 1,
									"fontsize" : 11.595187,
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
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"fontname" : "Verdana",
						"default_fontsize" : 11.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 11.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p \"inlet & outlet assist\"",
					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
					"patching_rect" : [ 310.0, 137.574722, 138.0, 20.0 ],
					"fontname" : "Verdana",
					"id" : "obj-4",
					"numinlets" : 0,
					"fontsize" : 11.0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 615.0, 46.0, 301.0, 259.0 ],
						"bglocked" : 0,
						"defrect" : [ 615.0, 46.0, 301.0, 259.0 ],
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
									"text" : "Typically these assist messages would be set when using a @file.",
									"linecount" : 2,
									"patching_rect" : [ 41.0, 216.0, 206.0, 33.0 ],
									"fontname" : "Verdana",
									"id" : "obj-2",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "The inlet and outlet hints can be set with inlet_assist and outlet_assist methods.\n\nTry sending these messages and then moving your mouse over the inlets/outlets while editing this patch.",
									"linecount" : 6,
									"patching_rect" : [ 34.0, 22.0, 241.0, 87.0 ],
									"fontname" : "Verdana",
									"id" : "obj-29",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "eval outlet_assist('outlet 1'\\, 'outlet 2')",
									"outlettype" : [ "" ],
									"patching_rect" : [ 49.0, 148.0, 227.0, 18.0 ],
									"fontname" : "Verdana",
									"id" : "obj-26",
									"numinlets" : 2,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "eval inlet_assist('description of the inlet')",
									"outlettype" : [ "" ],
									"patching_rect" : [ 27.0, 124.0, 239.0, 18.0 ],
									"fontname" : "Verdana",
									"id" : "obj-25",
									"numinlets" : 2,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj jruby 2 3",
									"outlettype" : [ "", "", "" ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"patching_rect" : [ 27.0, 183.0, 107.0, 20.0 ],
									"fontname" : "Verdana",
									"id" : "obj-6",
									"numinlets" : 2,
									"fontsize" : 11.0,
									"numoutlets" : 3
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [ 58.5, 177.0, 36.5, 177.0 ]
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
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"fontname" : "Verdana",
						"default_fontsize" : 11.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 11.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p \"using libraries\"",
					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
					"patching_rect" : [ 310.0, 108.0, 110.0, 20.0 ],
					"fontname" : "Verdana",
					"id" : "obj-24",
					"numinlets" : 0,
					"fontsize" : 11.0,
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
									"patching_rect" : [ 20.0, 19.0, 256.0, 22.0 ],
									"fontname" : "Verdana",
									"id" : "obj-13",
									"numinlets" : 1,
									"fontsize" : 13.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess set",
									"outlettype" : [ "" ],
									"patching_rect" : [ 136.0, 66.0, 83.0, 20.0 ],
									"fontname" : "Verdana",
									"id" : "obj-9",
									"hidden" : 1,
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"outlettype" : [ "" ],
									"patching_rect" : [ 28.0, 99.0, 191.0, 18.0 ],
									"fontname" : "Verdana",
									"id" : "obj-8",
									"numinlets" : 2,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "eval require 'date'\\; out0 DateTime.now",
									"outlettype" : [ "" ],
									"patching_rect" : [ 24.0, 41.0, 230.0, 18.0 ],
									"fontname" : "Verdana",
									"id" : "obj-1",
									"numinlets" : 2,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj jruby",
									"outlettype" : [ "" ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"patching_rect" : [ 24.0, 68.0, 86.0, 20.0 ],
									"fontname" : "Verdana",
									"id" : "obj-12",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : ".. and any Java class on Max's classpath:",
									"patching_rect" : [ 12.0, 175.0, 281.0, 22.0 ],
									"fontname" : "Verdana",
									"id" : "obj-10",
									"numinlets" : 1,
									"fontsize" : 13.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "eval out0 $r.nextFloat",
									"outlettype" : [ "" ],
									"patching_rect" : [ 30.0, 234.0, 157.0, 18.0 ],
									"fontname" : "Verdana",
									"id" : "obj-5",
									"numinlets" : 2,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"outlettype" : [ "float", "bang" ],
									"patching_rect" : [ 13.0, 283.0, 73.0, 20.0 ],
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"fontname" : "Verdana",
									"id" : "obj-6",
									"numinlets" : 1,
									"triscale" : 0.9,
									"fontsize" : 11.0,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj jruby",
									"outlettype" : [ "" ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"patching_rect" : [ 13.0, 261.0, 85.0, 20.0 ],
									"fontname" : "Verdana",
									"id" : "obj-7",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "eval $r = java.util.Random.new",
									"outlettype" : [ "" ],
									"patching_rect" : [ 13.0, 206.0, 186.0, 18.0 ],
									"fontname" : "Verdana",
									"id" : "obj-11",
									"numinlets" : 2,
									"fontsize" : 11.0,
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
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"fontname" : "Verdana",
						"default_fontsize" : 11.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 11.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p \"type conversions\"",
					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
					"patching_rect" : [ 310.0, 47.0, 127.0, 20.0 ],
					"fontname" : "Verdana",
					"id" : "obj-16",
					"numinlets" : 0,
					"fontsize" : 11.0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 596.0, 45.0, 481.0, 521.0 ],
						"bglocked" : 0,
						"defrect" : [ 596.0, 45.0, 481.0, 521.0 ],
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
									"text" : "Converts an array to a Max message",
									"linecount" : 2,
									"patching_rect" : [ 165.0, 369.0, 114.0, 33.0 ],
									"fontname" : "Verdana",
									"id" : "obj-8",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "outputs each entry of the Hash as a Max list",
									"linecount" : 2,
									"patching_rect" : [ 340.0, 331.0, 137.0, 33.0 ],
									"fontname" : "Verdana",
									"id" : "obj-7",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj jruby @verbose true",
									"outlettype" : [ "" ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"patching_rect" : [ 12.0, 435.0, 170.0, 20.0 ],
									"fontname" : "Verdana",
									"id" : "obj-31",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print message",
									"patching_rect" : [ 240.0, 490.0, 87.0, 20.0 ],
									"fontname" : "Verdana",
									"id" : "obj-1",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print list",
									"patching_rect" : [ 164.0, 490.0, 59.0, 20.0 ],
									"fontname" : "Verdana",
									"id" : "obj-2",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print float",
									"patching_rect" : [ 88.0, 490.0, 67.0, 20.0 ],
									"fontname" : "Verdana",
									"id" : "obj-3",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print int",
									"patching_rect" : [ 12.0, 490.0, 56.0, 20.0 ],
									"fontname" : "Verdana",
									"id" : "obj-4",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route int float list",
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 12.0, 465.0, 247.0, 20.0 ],
									"fontname" : "Verdana",
									"id" : "obj-5",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 4
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "out0 [1\\,2\\,3].inspect",
									"outlettype" : [ "" ],
									"patching_rect" : [ 27.0, 373.0, 138.0, 18.0 ],
									"fontname" : "Verdana",
									"id" : "obj-11",
									"numinlets" : 2,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "hash={1=>2\\,3=>4}\\; hash.to_a.each{|pair| out0 pair}",
									"outlettype" : [ "" ],
									"patching_rect" : [ 12.0, 334.0, 330.0, 18.0 ],
									"fontname" : "Verdana",
									"id" : "obj-12",
									"numinlets" : 2,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Ruby can handle numbers much larger than Max supports. These must be converted to a Max message",
									"linecount" : 2,
									"patching_rect" : [ 85.0, 61.0, 323.0, 33.0 ],
									"fontname" : "Verdana",
									"id" : "obj-13",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "2**1000",
									"outlettype" : [ "" ],
									"patching_rect" : [ 20.0, 67.0, 63.0, 18.0 ],
									"fontname" : "Verdana",
									"id" : "obj-14",
									"numinlets" : 2,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "verbose mode indicates when a non-string type is converted to a string.",
									"linecount" : 2,
									"patching_rect" : [ 187.0, 430.0, 232.0, 33.0 ],
									"fontname" : "Verdana",
									"id" : "obj-15",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "['a'\\, 'b'\\, 'c']",
									"outlettype" : [ "" ],
									"patching_rect" : [ 21.0, 168.0, 92.0, 18.0 ],
									"fontname" : "Verdana",
									"id" : "obj-16",
									"numinlets" : 2,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "flat arrays are converted to a list or Max messages (lists start with a number, otherwise it's a message)",
									"linecount" : 2,
									"patching_rect" : [ 115.0, 148.0, 299.0, 33.0 ],
									"fontname" : "Verdana",
									"id" : "obj-17",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "[1\\, 2\\, 3]",
									"outlettype" : [ "" ],
									"patching_rect" : [ 22.0, 145.0, 74.0, 18.0 ],
									"fontname" : "Verdana",
									"id" : "obj-18",
									"numinlets" : 2,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Your script can force the output to be the type you want:",
									"patching_rect" : [ 11.0, 313.0, 347.0, 20.0 ],
									"fontname" : "Verdana",
									"id" : "obj-19",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "'string'",
									"outlettype" : [ "" ],
									"patching_rect" : [ 20.0, 104.0, 51.0, 18.0 ],
									"fontname" : "Verdana",
									"id" : "obj-20",
									"numinlets" : 2,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "1.5",
									"outlettype" : [ "" ],
									"patching_rect" : [ 21.0, 33.0, 26.0, 18.0 ],
									"fontname" : "Verdana",
									"id" : "obj-21",
									"numinlets" : 2,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "1",
									"outlettype" : [ "" ],
									"patching_rect" : [ 21.0, 11.0, 18.0, 18.0 ],
									"fontname" : "Verdana",
									"id" : "obj-22",
									"numinlets" : 2,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Hashes also turn into a single string.",
									"patching_rect" : [ 157.0, 248.0, 223.0, 20.0 ],
									"fontname" : "Verdana",
									"id" : "obj-23",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Nested arrays will turn into a single string.",
									"patching_rect" : [ 160.0, 207.0, 253.0, 20.0 ],
									"fontname" : "Verdana",
									"id" : "obj-24",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "( {:a=>1\\, :b=>2} )",
									"outlettype" : [ "" ],
									"patching_rect" : [ 20.0, 248.0, 134.0, 18.0 ],
									"fontname" : "Verdana",
									"id" : "obj-25",
									"numinlets" : 2,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "[1\\, [2\\, 3]\\, [4\\, 5]]",
									"outlettype" : [ "" ],
									"patching_rect" : [ 19.0, 208.0, 140.0, 18.0 ],
									"fontname" : "Verdana",
									"id" : "obj-26",
									"numinlets" : 2,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Ruby ints and floats convert to Max ints and floats",
									"linecount" : 2,
									"patching_rect" : [ 48.0, 15.0, 173.0, 33.0 ],
									"fontname" : "Verdana",
									"id" : "obj-27",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "strings are converted to max messages",
									"patching_rect" : [ 73.0, 104.0, 234.0, 20.0 ],
									"fontname" : "Verdana",
									"id" : "obj-28",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend eval out0",
									"outlettype" : [ "" ],
									"patching_rect" : [ 6.0, 276.0, 111.0, 20.0 ],
									"fontname" : "Verdana",
									"id" : "obj-29",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend eval",
									"outlettype" : [ "" ],
									"patching_rect" : [ 12.0, 404.0, 82.0, 20.0 ],
									"fontname" : "Verdana",
									"id" : "obj-30",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [ 15.5, 303.0, 6.0, 303.0, 6.0, 430.0, 21.5, 430.0 ]
								}

							}
, 							{
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
									"midpoints" : [ 36.5, 395.0, 21.5, 395.0 ]
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
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"fontname" : "Verdana",
						"default_fontsize" : 11.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 11.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p \"inter-object communcation\"",
					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
					"patching_rect" : [ 23.0, 108.0, 185.0, 20.0 ],
					"fontname" : "Verdana",
					"id" : "obj-9",
					"numinlets" : 0,
					"fontsize" : 11.0,
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
									"text" : "eval puts \"my_id in current context? #{not max_object('my_id').nil?}\" \\, \"my_id in context ajmHelpObjects1? #{not max_object('ajmHelpObjects1.my_id').nil?}\"",
									"linecount" : 2,
									"outlettype" : [ "" ],
									"patching_rect" : [ 28.0, 456.0, 523.0, 31.0 ],
									"fontname" : "Verdana",
									"id" : "obj-42",
									"numinlets" : 2,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "This will output a lot because this help file uses so many ajm.ruby objects!",
									"linecount" : 2,
									"patching_rect" : [ 478.0, 539.0, 228.0, 33.0 ],
									"fontname" : "Verdana",
									"id" : "obj-40",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "eval puts $max_object_map",
									"outlettype" : [ "" ],
									"patching_rect" : [ 309.0, 542.0, 167.0, 18.0 ],
									"fontname" : "Verdana",
									"id" : "obj-38",
									"numinlets" : 2,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Every ajm.ruby instance will have a unique id. If no @id attribute is provided, a semi-random unique value (like '927b70') will be used. You can find out the current object's context and id with $max_object.context and $max_object.id",
									"linecount" : 2,
									"patching_rect" : [ 24.0, 371.0, 691.0, 33.0 ],
									"fontname" : "Verdana",
									"id" : "obj-37",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj jruby @context ajmHelpObjects3 @id ajmHelpId3",
									"linecount" : 2,
									"outlettype" : [ "" ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"patching_rect" : [ 19.0, 566.0, 207.0, 33.0 ],
									"fontname" : "Verdana",
									"id" : "obj-27",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "eval puts $max_object_map['ajmHelpObjects3']",
									"outlettype" : [ "" ],
									"patching_rect" : [ 19.0, 540.0, 278.0, 18.0 ],
									"fontname" : "Verdana",
									"id" : "obj-25",
									"numinlets" : 2,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p \"notes about the empty context\"",
									"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
									"patching_rect" : [ 21.0, 614.011475, 202.0, 20.0 ],
									"fontname" : "Verdana",
									"id" : "obj-24",
									"numinlets" : 0,
									"fontsize" : 11.0,
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
													"patching_rect" : [ 14.0, 145.0, 431.0, 47.0 ],
													"fontname" : "Verdana",
													"id" : "obj-8",
													"numinlets" : 1,
													"fontsize" : 11.0,
													"numoutlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Stating that the $max_objects array stores all objects in the same context was misleading. It actually stores objects with the same Ruby evaluator. Objects with no @context have their own dedicated evaluator, and so they always have a $max_objects array that only contain themself.",
													"linecount" : 4,
													"patching_rect" : [ 14.0, 70.0, 427.0, 60.0 ],
													"fontname" : "Verdana",
													"id" : "obj-7",
													"numinlets" : 1,
													"fontsize" : 11.0,
													"numoutlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "The $max_object_map and the max_object() method consider objects with no @context to be in the same context. This allows easy lookup of objects by id when not using shared contexts.",
													"linecount" : 3,
													"patching_rect" : [ 14.0, 10.0, 431.0, 47.0 ],
													"fontname" : "Verdana",
													"id" : "obj-5",
													"numinlets" : 1,
													"fontsize" : 11.0,
													"numoutlets" : 0
												}

											}
 ],
										"lines" : [  ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"fontname" : "Verdana",
										"default_fontsize" : 11.0,
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 11.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "The above example uses the special max_object() lookup method. If this method is passed just an 'id', it will find the MaxObject with that @id in the current context. To find an object in another context, send the method 'context.id'. For example:",
									"linecount" : 3,
									"patching_rect" : [ 24.0, 410.0, 664.0, 47.0 ],
									"fontname" : "Verdana",
									"id" : "obj-22",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "ids can change at any time. It's recommended to keep the id constant after initializing your patch.",
									"linecount" : 4,
									"patching_rect" : [ 518.0, 224.0, 166.0, 60.0 ],
									"fontname" : "Verdana",
									"id" : "obj-18",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "id ajmHelpId2",
									"outlettype" : [ "" ],
									"patching_rect" : [ 554.0, 287.0, 88.0, 18.0 ],
									"fontname" : "Verdana",
									"id" : "obj-14",
									"numinlets" : 2,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "id ajmHelpId2-b",
									"outlettype" : [ "" ],
									"patching_rect" : [ 554.0, 320.0, 100.0, 18.0 ],
									"fontname" : "Verdana",
									"id" : "obj-13",
									"numinlets" : 2,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "eval target = max_object('ajmHelpId2')\\; if target then target.outlet(0\\,'hello from another object') else puts 'object not found' end",
									"linecount" : 3,
									"outlettype" : [ "" ],
									"patching_rect" : [ 26.0, 272.0, 274.0, 45.0 ],
									"fontname" : "Verdana",
									"id" : "obj-21",
									"numinlets" : 2,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj jruby @context ajmHelpObjects3 @id ajmHelpId1",
									"linecount" : 2,
									"outlettype" : [ "" ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"patching_rect" : [ 26.0, 326.0, 202.0, 33.0 ],
									"fontname" : "Verdana",
									"id" : "obj-19",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print foundById",
									"patching_rect" : [ 342.0, 347.0, 97.0, 20.0 ],
									"fontname" : "Verdana",
									"id" : "obj-16",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj jruby @context ajmHelpObjects3 @id ajmHelpId2",
									"linecount" : 2,
									"outlettype" : [ "" ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"patching_rect" : [ 342.0, 296.0, 200.0, 33.0 ],
									"fontname" : "Verdana",
									"id" : "obj-17",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "To communicate with a specific ajm.ruby object, use the @id attribute",
									"patching_rect" : [ 28.0, 253.0, 406.0, 20.0 ],
									"fontname" : "Verdana",
									"id" : "obj-12",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print *5*",
									"patching_rect" : [ 412.0, 207.0, 61.0, 20.0 ],
									"fontname" : "Verdana",
									"id" : "obj-7",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj jruby @context ajmHelpObjects2",
									"outlettype" : [ "" ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"patching_rect" : [ 412.0, 183.0, 240.0, 20.0 ],
									"fontname" : "Verdana",
									"id" : "obj-8",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print *4*",
									"patching_rect" : [ 344.0, 183.0, 61.0, 20.0 ],
									"fontname" : "Verdana",
									"id" : "obj-9",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj jruby @context ajmHelpObjects2",
									"outlettype" : [ "" ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"patching_rect" : [ 344.0, 159.0, 240.0, 20.0 ],
									"fontname" : "Verdana",
									"id" : "obj-10",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print 3",
									"patching_rect" : [ 95.0, 208.0, 47.0, 20.0 ],
									"fontname" : "Verdana",
									"id" : "obj-5",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj jruby @context ajmHelpObjects1",
									"outlettype" : [ "" ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"patching_rect" : [ 95.0, 184.0, 240.0, 20.0 ],
									"fontname" : "Verdana",
									"id" : "obj-6",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print 2",
									"patching_rect" : [ 35.0, 181.0, 47.0, 20.0 ],
									"fontname" : "Verdana",
									"id" : "obj-3",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj jruby @context ajmHelpObjects1 @id my_id",
									"outlettype" : [ "" ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"patching_rect" : [ 35.0, 157.0, 302.0, 20.0 ],
									"fontname" : "Verdana",
									"id" : "obj-4",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "context ajmHelpObjects2",
									"outlettype" : [ "" ],
									"patching_rect" : [ 390.0, 123.0, 151.0, 18.0 ],
									"fontname" : "Verdana",
									"id" : "obj-30",
									"numinlets" : 2,
									"fontsize" : 11.1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "context ajmHelpObjects1",
									"outlettype" : [ "" ],
									"patching_rect" : [ 390.0, 94.0, 151.0, 18.0 ],
									"fontname" : "Verdana",
									"id" : "obj-29",
									"numinlets" : 2,
									"fontsize" : 11.1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Note: The $max_objects array is not guaranteed to be in any particular order.",
									"linecount" : 2,
									"patching_rect" : [ 381.0, 50.0, 243.0, 33.0 ],
									"fontname" : "Verdana",
									"id" : "obj-36",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "All objects in the current named context are stored in the $max_objects array. $max_object stores the current Max Object instance. ",
									"linecount" : 2,
									"patching_rect" : [ 24.0, 12.0, 456.0, 33.0 ],
									"fontname" : "Verdana",
									"id" : "obj-35",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "eval $max_object.outlet(0\\,'just me')",
									"outlettype" : [ "" ],
									"patching_rect" : [ 60.0, 77.0, 218.0, 18.0 ],
									"fontname" : "Verdana",
									"id" : "obj-34",
									"numinlets" : 2,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print 1",
									"patching_rect" : [ 36.0, 130.0, 47.0, 20.0 ],
									"fontname" : "Verdana",
									"id" : "obj-23",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "eval $max_objects.each{|obj| obj.outlet(0\\,'everyone')}",
									"outlettype" : [ "" ],
									"patching_rect" : [ 36.0, 51.0, 325.0, 18.0 ],
									"fontname" : "Verdana",
									"id" : "obj-31",
									"numinlets" : 2,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj jruby @context ajmHelpObjects1",
									"outlettype" : [ "" ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"patching_rect" : [ 36.0, 106.0, 325.0, 20.0 ],
									"fontname" : "Verdana",
									"id" : "obj-33",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "$max_object_map maps contexts to a map of ids to objects. So for example, if we lookup $max_object_map['context_name'], we get a map of ids to max objects that use @context context_name",
									"linecount" : 2,
									"patching_rect" : [ 21.0, 503.0, 607.0, 33.0 ],
									"fontname" : "Verdana",
									"id" : "obj-2",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-42", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [ 37.5, 493.0, 12.0, 493.0, 12.0, 321.0, 35.5, 321.0 ]
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
									"midpoints" : [ 563.5, 309.0, 550.0, 309.0, 550.0, 289.0, 351.5, 289.0 ]
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
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"fontname" : "Verdana",
						"default_fontsize" : 11.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 11.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p \"variable scope\"",
					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
					"patching_rect" : [ 23.0, 168.149414, 112.0, 20.0 ],
					"fontname" : "Verdana",
					"id" : "obj-1",
					"numinlets" : 0,
					"fontsize" : 11.0,
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
									"outlettype" : [ "" ],
									"patching_rect" : [ 182.0, 123.0, 39.0, 18.0 ],
									"fontname" : "Verdana",
									"id" : "obj-14",
									"numinlets" : 2,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "method call",
									"patching_rect" : [ 320.0, 102.0, 83.0, 20.0 ],
									"fontname" : "Verdana",
									"id" : "obj-13",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "attribute",
									"patching_rect" : [ 184.0, 102.0, 60.0, 20.0 ],
									"fontname" : "Verdana",
									"id" : "obj-12",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "local",
									"patching_rect" : [ 256.0, 102.0, 38.0, 20.0 ],
									"fontname" : "Verdana",
									"id" : "obj-11",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj jruby @verbose true",
									"outlettype" : [ "" ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"patching_rect" : [ 18.0, 190.0, 170.0, 20.0 ],
									"fontname" : "Verdana",
									"id" : "obj-9",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "global",
									"patching_rect" : [ 116.0, 102.0, 48.0, 20.0 ],
									"fontname" : "Verdana",
									"id" : "obj-8",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "constant",
									"patching_rect" : [ 39.0, 102.0, 62.0, 20.0 ],
									"fontname" : "Verdana",
									"id" : "obj-5",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "In general it's only safe to use local variables within a file.",
									"linecount" : 2,
									"patching_rect" : [ 217.0, 196.0, 183.0, 33.0 ],
									"fontname" : "Verdana",
									"id" : "obj-6",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess set",
									"outlettype" : [ "" ],
									"patching_rect" : [ 204.0, 170.0, 83.0, 20.0 ],
									"fontname" : "Verdana",
									"id" : "obj-4",
									"hidden" : 1,
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"outlettype" : [ "" ],
									"patching_rect" : [ 17.0, 224.0, 174.0, 18.0 ],
									"fontname" : "Verdana",
									"id" : "obj-3",
									"numinlets" : 2,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "constants start with a capital letter, globals start with a $",
									"patching_rect" : [ 12.0, 51.0, 332.0, 20.0 ],
									"fontname" : "Verdana",
									"id" : "obj-2",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "file jruby_variable_scope.rb",
									"outlettype" : [ "" ],
									"patching_rect" : [ 18.0, 76.0, 164.0, 18.0 ],
									"fontname" : "Verdana",
									"id" : "obj-18",
									"numinlets" : 2,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "some_method",
									"outlettype" : [ "" ],
									"patching_rect" : [ 315.0, 123.0, 89.0, 18.0 ],
									"fontname" : "Verdana",
									"id" : "obj-19",
									"numinlets" : 2,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "$var",
									"outlettype" : [ "" ],
									"patching_rect" : [ 118.0, 123.0, 37.0, 18.0 ],
									"fontname" : "Verdana",
									"id" : "obj-21",
									"numinlets" : 2,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "Var",
									"outlettype" : [ "" ],
									"patching_rect" : [ 39.0, 123.0, 27.0, 18.0 ],
									"fontname" : "Verdana",
									"id" : "obj-22",
									"numinlets" : 2,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "var",
									"outlettype" : [ "" ],
									"patching_rect" : [ 255.0, 123.0, 32.5, 18.0 ],
									"bgcolor" : [ 1.0, 0.611765, 0.611765, 1.0 ],
									"fontname" : "Verdana",
									"id" : "obj-23",
									"numinlets" : 2,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend eval out0",
									"outlettype" : [ "" ],
									"patching_rect" : [ 39.0, 161.0, 112.0, 20.0 ],
									"fontname" : "Verdana",
									"id" : "obj-24",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Local variables are forgotten after each evaluation. To remember a value across separate Max messages, use globals or constants.",
									"linecount" : 2,
									"patching_rect" : [ 11.0, 8.0, 404.0, 33.0 ],
									"fontname" : "Verdana",
									"id" : "obj-25",
									"numinlets" : 1,
									"fontsize" : 11.0,
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
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"fontname" : "Verdana",
						"default_fontsize" : 11.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 11.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p at_exit",
					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
					"patching_rect" : [ 23.0, 137.574722, 60.0, 20.0 ],
					"fontname" : "Verdana",
					"id" : "obj-2",
					"numinlets" : 0,
					"fontsize" : 11.0,
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
									"maxclass" : "newobj",
									"text" : "prepend eval",
									"outlettype" : [ "" ],
									"patching_rect" : [ 178.0, 164.0, 82.0, 20.0 ],
									"fontname" : "Verdana",
									"id" : "obj-2",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "at_exit { puts 'called second at exit' }",
									"outlettype" : [ "" ],
									"patching_rect" : [ 221.0, 126.0, 221.0, 18.0 ],
									"fontname" : "Verdana",
									"id" : "obj-1",
									"numinlets" : 2,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "at_exit { puts 'called first at exit' }",
									"outlettype" : [ "" ],
									"patching_rect" : [ 178.0, 91.0, 204.0, 18.0 ],
									"fontname" : "Verdana",
									"id" : "obj-4",
									"numinlets" : 2,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "If shared contexts are used, the at_exit handlers will not run until the last object in the context is deleted. \n\nat_exit handlers will also be called if a scriptfile is reloaded (because reloading a scriptfile resets the context).",
									"linecount" : 5,
									"patching_rect" : [ 6.0, 213.0, 431.0, 73.0 ],
									"fontname" : "Verdana",
									"id" : "obj-5",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "at_exit { ruby code }",
									"patching_rect" : [ 8.0, 7.0, 190.0, 20.0 ],
									"fontname" : "Courier New",
									"id" : "obj-7",
									"numinlets" : 1,
									"fontface" : 1,
									"fontsize" : 12.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "at_exit registers code to run when the ajm.ruby object is deleted. If multiple at_exit handlers are registered, they will be executed in reverse order of registration. \r",
									"linecount" : 3,
									"patching_rect" : [ 8.0, 32.0, 442.0, 47.0 ],
									"fontname" : "Verdana",
									"id" : "obj-8",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Try evaluating these at_exit commands  and then delete the ajm.ruby object.",
									"linecount" : 3,
									"patching_rect" : [ 10.0, 109.0, 171.0, 47.0 ],
									"fontname" : "Verdana",
									"id" : "obj-9",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj jruby",
									"outlettype" : [ "" ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"patching_rect" : [ 178.0, 191.0, 86.0, 20.0 ],
									"fontname" : "Verdana",
									"id" : "obj-10",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"fontname" : "Verdana",
						"default_fontsize" : 11.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 11.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p \"shared context and variables\"",
					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
					"patching_rect" : [ 23.0, 77.287369, 194.0, 20.0 ],
					"fontname" : "Verdana",
					"id" : "obj-13",
					"numinlets" : 0,
					"fontsize" : 11.0,
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
									"maxclass" : "newobj",
									"text" : "mxj jruby @context ajmHelpContext2",
									"outlettype" : [ "" ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"patching_rect" : [ 291.0, 545.0, 241.0, 20.0 ],
									"fontname" : "Verdana",
									"id" : "obj-46",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj jruby @context ajmHelpContext_2",
									"outlettype" : [ "" ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"patching_rect" : [ 14.0, 250.0, 248.0, 20.0 ],
									"fontname" : "Verdana",
									"id" : "obj-45",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj jruby @context ajmHelpContext",
									"outlettype" : [ "" ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"patching_rect" : [ 13.0, 123.0, 234.0, 20.0 ],
									"fontname" : "Verdana",
									"id" : "obj-43",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "delete_global :x",
									"outlettype" : [ "" ],
									"patching_rect" : [ 394.0, 492.0, 101.0, 18.0 ],
									"fontname" : "Verdana",
									"id" : "obj-30",
									"numinlets" : 2,
									"fontsize" : 11.1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "has_global? :x",
									"outlettype" : [ "" ],
									"patching_rect" : [ 512.0, 492.0, 92.0, 18.0 ],
									"fontname" : "Verdana",
									"id" : "obj-42",
									"numinlets" : 2,
									"fontsize" : 11.1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "get_global :x",
									"outlettype" : [ "" ],
									"patching_rect" : [ 291.0, 492.0, 84.0, 18.0 ],
									"fontname" : "Verdana",
									"id" : "obj-24",
									"numinlets" : 2,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "eval out0 get_global(:x)",
									"outlettype" : [ "" ],
									"patching_rect" : [ 51.0, 514.0, 145.0, 18.0 ],
									"fontname" : "Verdana",
									"id" : "obj-33",
									"numinlets" : 2,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "eval set_global(:x\\, 'global object')",
									"outlettype" : [ "" ],
									"patching_rect" : [ 32.0, 492.0, 208.0, 18.0 ],
									"fontname" : "Verdana",
									"id" : "obj-34",
									"numinlets" : 2,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print",
									"patching_rect" : [ 291.0, 572.0, 37.0, 20.0 ],
									"fontname" : "Verdana",
									"id" : "obj-35",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend eval out0",
									"outlettype" : [ "" ],
									"patching_rect" : [ 291.0, 521.0, 117.0, 20.0 ],
									"fontname" : "Verdana",
									"id" : "obj-36",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print",
									"patching_rect" : [ 32.0, 563.0, 37.0, 20.0 ],
									"fontname" : "Verdana",
									"id" : "obj-38",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj jruby @context ajmHelpContext",
									"outlettype" : [ "" ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"patching_rect" : [ 32.0, 540.0, 234.0, 20.0 ],
									"fontname" : "Verdana",
									"id" : "obj-39",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "And the set_global() and get_global() methods define variables visible to all ajm.ruby instances.",
									"patching_rect" : [ 32.0, 467.0, 611.0, 20.0 ],
									"fontname" : "Verdana",
									"id" : "obj-41",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Note: If no ajm.ruby objects reference a context, the context will be deleted. If you want to keep a context around, make sure at least one ajm.ruby object references it.",
									"linecount" : 3,
									"patching_rect" : [ 286.0, 259.0, 356.0, 47.0 ],
									"fontname" : "Verdana",
									"id" : "obj-40",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "you can change contexts at any time",
									"linecount" : 2,
									"patching_rect" : [ 526.0, 203.0, 128.0, 33.0 ],
									"fontname" : "Verdana",
									"id" : "obj-37",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "context ajmHelpContext_2",
									"outlettype" : [ "" ],
									"patching_rect" : [ 394.0, 184.0, 158.0, 18.0 ],
									"fontname" : "Verdana",
									"id" : "obj-32",
									"numinlets" : 2,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "context ajmHelpContext",
									"outlettype" : [ "" ],
									"patching_rect" : [ 372.0, 162.0, 144.0, 18.0 ],
									"fontname" : "Verdana",
									"id" : "obj-31",
									"numinlets" : 2,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "eval out0 $x",
									"outlettype" : [ "" ],
									"patching_rect" : [ 291.0, 183.0, 79.0, 18.0 ],
									"fontname" : "Verdana",
									"id" : "obj-23",
									"numinlets" : 2,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print",
									"patching_rect" : [ 291.0, 235.0, 37.0, 20.0 ],
									"fontname" : "Verdana",
									"id" : "obj-28",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj jruby @context ajmHelpContext",
									"outlettype" : [ "" ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"patching_rect" : [ 291.0, 212.0, 234.0, 20.0 ],
									"fontname" : "Verdana",
									"id" : "obj-29",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "out0 $x",
									"outlettype" : [ "" ],
									"patching_rect" : [ 78.0, 194.0, 53.0, 18.0 ],
									"fontname" : "Verdana",
									"id" : "obj-12",
									"numinlets" : 2,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "$x = 66",
									"outlettype" : [ "" ],
									"patching_rect" : [ 14.0, 194.0, 55.0, 18.0 ],
									"fontname" : "Verdana",
									"id" : "obj-13",
									"numinlets" : 2,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print",
									"patching_rect" : [ 14.0, 276.0, 37.0, 20.0 ],
									"fontname" : "Verdana",
									"id" : "obj-14",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend eval",
									"outlettype" : [ "" ],
									"patching_rect" : [ 14.0, 223.0, 82.0, 20.0 ],
									"fontname" : "Verdana",
									"id" : "obj-15",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Shared context lets multiple ajm.ruby objects share a Ruby evaluator.",
									"patching_rect" : [ 7.0, 4.0, 502.0, 21.0 ],
									"fontname" : "Verdana",
									"id" : "obj-27",
									"numinlets" : 1,
									"fontface" : 1,
									"fontsize" : 12.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "eval out0 get_local(:x)",
									"outlettype" : [ "" ],
									"patching_rect" : [ 290.0, 372.0, 137.0, 18.0 ],
									"fontname" : "Verdana",
									"id" : "obj-1",
									"numinlets" : 2,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "eval set_local(:x\\, 'second object')",
									"outlettype" : [ "" ],
									"patching_rect" : [ 273.0, 350.0, 202.0, 18.0 ],
									"fontname" : "Verdana",
									"id" : "obj-2",
									"numinlets" : 2,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "eval out0 get_local(:x)",
									"outlettype" : [ "" ],
									"patching_rect" : [ 33.0, 373.0, 137.0, 18.0 ],
									"fontname" : "Verdana",
									"id" : "obj-3",
									"numinlets" : 2,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "eval set_local(:x\\, 'first object')",
									"outlettype" : [ "" ],
									"patching_rect" : [ 14.0, 351.0, 185.0, 18.0 ],
									"fontname" : "Verdana",
									"id" : "obj-4",
									"numinlets" : 2,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print",
									"patching_rect" : [ 273.0, 420.0, 37.0, 20.0 ],
									"fontname" : "Verdana",
									"id" : "obj-5",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj jruby @context ajmHelpContext",
									"outlettype" : [ "" ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"patching_rect" : [ 273.0, 397.0, 234.0, 20.0 ],
									"fontname" : "Verdana",
									"id" : "obj-6",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print",
									"patching_rect" : [ 14.0, 422.0, 37.0, 20.0 ],
									"fontname" : "Verdana",
									"id" : "obj-7",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj jruby @context ajmHelpContext",
									"outlettype" : [ "" ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"patching_rect" : [ 14.0, 399.0, 234.0, 20.0 ],
									"fontname" : "Verdana",
									"id" : "obj-8",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "eval out0 $x",
									"outlettype" : [ "" ],
									"patching_rect" : [ 514.0, 71.0, 80.0, 18.0 ],
									"fontname" : "Verdana",
									"id" : "obj-9",
									"numinlets" : 2,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print",
									"patching_rect" : [ 514.0, 118.0, 37.0, 20.0 ],
									"fontname" : "Verdana",
									"id" : "obj-10",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj jruby",
									"outlettype" : [ "" ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"patching_rect" : [ 514.0, 93.0, 86.0, 20.0 ],
									"fontname" : "Verdana",
									"id" : "obj-11",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "eval out0 $x",
									"outlettype" : [ "" ],
									"patching_rect" : [ 262.0, 72.0, 79.0, 18.0 ],
									"fontname" : "Verdana",
									"id" : "obj-16",
									"numinlets" : 2,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print",
									"patching_rect" : [ 262.0, 119.0, 37.0, 20.0 ],
									"fontname" : "Verdana",
									"id" : "obj-17",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj jruby @context ajmHelpContext",
									"outlettype" : [ "" ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"patching_rect" : [ 262.0, 94.0, 234.0, 20.0 ],
									"fontname" : "Verdana",
									"id" : "obj-18",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "out0 $x",
									"outlettype" : [ "" ],
									"patching_rect" : [ 76.0, 67.0, 53.0, 18.0 ],
									"fontname" : "Verdana",
									"id" : "obj-19",
									"numinlets" : 2,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "$x = 99",
									"outlettype" : [ "" ],
									"patching_rect" : [ 13.0, 67.0, 55.0, 18.0 ],
									"fontname" : "Verdana",
									"id" : "obj-20",
									"numinlets" : 2,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print",
									"patching_rect" : [ 13.0, 152.0, 37.0, 20.0 ],
									"fontname" : "Verdana",
									"id" : "obj-21",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend eval",
									"outlettype" : [ "" ],
									"patching_rect" : [ 13.0, 98.0, 82.0, 20.0 ],
									"fontname" : "Verdana",
									"id" : "obj-22",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Any variables, methods, and classes defined in one object will be available in any objects with the same context. Contexts are globally shared between patches (like send/receive)",
									"linecount" : 2,
									"patching_rect" : [ 7.0, 29.0, 534.0, 33.0 ],
									"fontname" : "Verdana",
									"id" : "obj-25",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "The set_local() and get_local() methods define a variable only visible to the current ajm.ruby instance.",
									"patching_rect" : [ 14.0, 326.0, 586.0, 20.0 ],
									"fontname" : "Verdana",
									"id" : "obj-26",
									"numinlets" : 1,
									"fontsize" : 11.0,
									"numoutlets" : 0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-42", 0 ],
									"destination" : [ "obj-36", 0 ],
									"hidden" : 0,
									"midpoints" : [ 521.5, 516.0, 300.5, 516.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-36", 0 ],
									"hidden" : 0,
									"midpoints" : [ 403.5, 516.0, 300.5, 516.0 ]
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
									"source" : [ "obj-36", 0 ],
									"destination" : [ "obj-46", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-46", 0 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-45", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-45", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
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
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [ 87.5, 216.0, 23.5, 216.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-43", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-43", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [ 85.5, 89.0, 22.5, 89.0 ]
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
									"source" : [ "obj-32", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [ 403.5, 207.0, 300.5, 207.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-31", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [ 381.5, 207.0, 300.5, 207.0 ]
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
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"fontname" : "Verdana",
						"default_fontsize" : 11.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 11.0
					}

				}

			}
 ],
		"lines" : [  ]
	}

}
