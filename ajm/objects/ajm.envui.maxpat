{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 47.0, 61.0, 752.0, 443.0 ],
		"bglocked" : 0,
		"defrect" : [ 47.0, 61.0, 752.0, 443.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 1,
		"default_fontsize" : 11.0,
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
					"maxclass" : "message",
					"text" : "set $1",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 342.0, 67.0, 45.0, 18.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 1,
					"id" : "obj-37",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set $1",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 342.0, 131.0, 45.0, 18.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 1,
					"id" : "obj-36",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "/ 1000.",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 342.0, 45.0, 51.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 1,
					"id" : "obj-34",
					"outlettype" : [ "float" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "* 1000.",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 342.0, 109.0, 53.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 1,
					"id" : "obj-33",
					"outlettype" : [ "float" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "ui.envdur",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 317.0, 159.0, 50.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 2,
					"id" : "obj-29",
					"outlettype" : [ "int", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"fontname" : "Verdana",
					"presentation_rect" : [ 144.0, 44.0, 41.0, 20.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 342.0, 87.0, 50.0, 20.0 ],
					"fontsize" : 11.0,
					"presentation" : 1,
					"numoutlets" : 2,
					"id" : "obj-28",
					"outlettype" : [ "float", "bang" ],
					"minimum" : 0.01
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "+ 1",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 506.0, 77.0, 31.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 1,
					"id" : "obj-1",
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t i i",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 493.0, 52.0, 32.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 2,
					"id" : "obj-2",
					"outlettype" : [ "int", "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "switch 2 1",
					"fontname" : "Verdana",
					"numinlets" : 3,
					"patching_rect" : [ 339.0, 320.0, 69.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 1,
					"id" : "obj-3",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "switch 2 1",
					"fontname" : "Verdana",
					"numinlets" : 3,
					"patching_rect" : [ 189.0, 319.0, 69.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 1,
					"id" : "obj-4",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "select 0 1",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 493.0, 129.0, 66.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 3,
					"id" : "obj-5",
					"outlettype" : [ "bang", "bang", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"hint" : "release (line format)",
					"annotation" : "release (line format)",
					"numinlets" : 1,
					"patching_rect" : [ 339.0, 343.0, 23.0, 23.0 ],
					"numoutlets" : 0,
					"id" : "obj-6",
					"comment" : "release (line format)"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"hint" : "sustain (1/0 = on/off)",
					"annotation" : "sustain (1/0 = on/off)",
					"numinlets" : 1,
					"patching_rect" : [ 372.0, 383.0, 23.0, 23.0 ],
					"numoutlets" : 0,
					"id" : "obj-7",
					"comment" : "sustain (1/0 = on/off)"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "uitype",
					"text" : "pattr uitype @bindto type",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 493.0, 31.0, 151.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 3,
					"id" : "obj-8",
					"outlettype" : [ "", "", "" ],
					"restore" : [ 0 ],
					"saved_object_attributes" : 					{

					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "funcsustain",
					"text" : "pattr funcsustain @bindto env::funcsustain",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 490.0, 308.0, 244.0, 33.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 3,
					"id" : "obj-9",
					"outlettype" : [ "", "", "" ],
					"restore" : [ 1 ],
					"saved_object_attributes" : 					{

					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "mssustain",
					"text" : "pattr mssustain @bindto env::mssustain",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 492.0, 371.0, 231.0, 33.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 3,
					"id" : "obj-10",
					"outlettype" : [ "", "", "" ],
					"restore" : [ 1 ],
					"saved_object_attributes" : 					{

					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "multislider",
					"text" : "pattr multislider @bindto env::multislider",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 490.0, 345.0, 241.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 3,
					"id" : "obj-11",
					"outlettype" : [ "", "", "" ],
					"restore" : [ 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 ],
					"saved_object_attributes" : 					{

					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "sec",
					"fontname" : "Verdana",
					"presentation_rect" : [ 184.0, 46.0, 28.0, 20.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 364.0, 160.0, 32.0, 20.0 ],
					"fontsize" : 11.0,
					"presentation" : 1,
					"numoutlets" : 0,
					"id" : "obj-12"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p function-adapter",
					"fontname" : "Verdana",
					"numinlets" : 5,
					"patching_rect" : [ 158.0, 251.0, 131.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 3,
					"id" : "obj-13",
					"outlettype" : [ "", "", "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 193.0, 235.0, 551.0, 345.0 ],
						"bglocked" : 0,
						"defrect" : [ 193.0, 235.0, 551.0, 345.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "2 numbers for each point",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 337.0, 158.0, 91.0, 33.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-1"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "+ 2",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 306.0, 189.0, 31.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-2",
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* 2",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 306.0, 163.0, 31.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-3",
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b i",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 322.0, 96.0, 32.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 2,
									"id" : "obj-4",
									"outlettype" : [ "bang", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b i",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 92.0, 43.0, 32.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 2,
									"id" : "obj-5",
									"outlettype" : [ "bang", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b i",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 419.0, 38.0, 32.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 2,
									"id" : "obj-6",
									"outlettype" : [ "bang", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p sustain-points",
									"fontname" : "Verdana",
									"numinlets" : 3,
									"patching_rect" : [ 282.0, 130.0, 149.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-7",
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 30.0, 89.0, 189.0, 325.0 ],
										"bglocked" : 0,
										"defrect" : [ 30.0, 89.0, 189.0, 325.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "sustain on/off",
													"linecount" : 2,
													"fontname" : "Verdana",
													"numinlets" : 1,
													"patching_rect" : [ 115.0, 13.0, 45.0, 28.0 ],
													"fontsize" : 9.0,
													"numoutlets" : 0,
													"id" : "obj-1"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "onchange",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"patching_rect" : [ 1.0, 25.0, 52.0, 17.0 ],
													"fontsize" : 9.0,
													"numoutlets" : 0,
													"id" : "obj-2"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "sustain point index",
													"linecount" : 3,
													"fontname" : "Verdana",
													"numinlets" : 1,
													"patching_rect" : [ 57.0, 2.0, 44.0, 39.0 ],
													"fontsize" : 9.0,
													"numoutlets" : 0,
													"id" : "obj-3"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b i",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"patching_rect" : [ 121.0, 61.0, 27.0, 17.0 ],
													"fontsize" : 9.0,
													"numoutlets" : 2,
													"id" : "obj-4",
													"outlettype" : [ "bang", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b i",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"patching_rect" : [ 60.0, 64.0, 27.0, 17.0 ],
													"fontsize" : 9.0,
													"numoutlets" : 2,
													"id" : "obj-5",
													"outlettype" : [ "bang", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pack",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"patching_rect" : [ 54.0, 199.0, 30.0, 17.0 ],
													"fontsize" : 9.0,
													"numoutlets" : 1,
													"id" : "obj-6",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "sustain $1 $2",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"patching_rect" : [ 54.0, 222.0, 72.0, 15.0 ],
													"fontsize" : 9.0,
													"numoutlets" : 1,
													"id" : "obj-7",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "&& 1",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"patching_rect" : [ 74.0, 175.0, 35.0, 17.0 ],
													"fontsize" : 9.0,
													"numoutlets" : 1,
													"id" : "obj-8",
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "== 1",
													"linecount" : 2,
													"fontname" : "Verdana",
													"numinlets" : 2,
													"patching_rect" : [ 74.0, 148.0, 31.0, 28.0 ],
													"fontsize" : 9.0,
													"numoutlets" : 1,
													"id" : "obj-9",
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "- 1",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"patching_rect" : [ 54.0, 123.0, 27.0, 17.0 ],
													"fontsize" : 9.0,
													"numoutlets" : 1,
													"id" : "obj-10",
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "uzi 7",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"patching_rect" : [ 24.0, 102.0, 40.0, 17.0 ],
													"fontsize" : 9.0,
													"numoutlets" : 3,
													"id" : "obj-11",
													"outlettype" : [ "bang", "bang", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"patching_rect" : [ 60.0, 41.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"id" : "obj-12",
													"outlettype" : [ "int" ],
													"comment" : "sustain point"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"patching_rect" : [ 121.0, 40.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"id" : "obj-13",
													"outlettype" : [ "int" ],
													"comment" : "sustain on/off"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"patching_rect" : [ 24.0, 41.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"id" : "obj-14",
													"outlettype" : [ "bang" ],
													"comment" : "bang to update"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"patching_rect" : [ 54.0, 242.0, 15.0, 15.0 ],
													"numoutlets" : 0,
													"id" : "obj-15",
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 1 ],
													"destination" : [ "obj-8", 1 ],
													"hidden" : 0,
													"midpoints" : [ 138.5, 169.0, 99.5, 169.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 1 ],
													"destination" : [ "obj-9", 1 ],
													"hidden" : 0,
													"midpoints" : [ 77.5, 101.0, 95.5, 101.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-6", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [ 63.5, 144.0, 83.5, 144.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 2 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [ 69.5, 88.0, 33.5, 88.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"default_fontsize" : 11.1,
										"fontname" : "Verdana",
										"fontface" : 0,
										"fontsize" : 11.1,
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"globalpatchername" : ""
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl group",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 51.0, 162.0, 55.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 2,
									"id" : "obj-8",
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 160.0, 161.0, 35.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-9",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b next b",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 162.0, 131.0, 105.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 3,
									"id" : "obj-10",
									"outlettype" : [ "bang", "next", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl slice 8",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 51.0, 188.0, 112.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 2,
									"id" : "obj-11",
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b b",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 219.0, 96.0, 34.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 2,
									"id" : "obj-12",
									"outlettype" : [ "bang", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend setdomain",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 432.0, 69.0, 115.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-13",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"patching_rect" : [ 419.0, 12.0, 21.0, 21.0 ],
									"numoutlets" : 1,
									"id" : "obj-14",
									"outlettype" : [ "" ],
									"comment" : "duration"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"patching_rect" : [ 15.0, 12.0, 21.0, 21.0 ],
									"numoutlets" : 1,
									"id" : "obj-15",
									"outlettype" : [ "" ],
									"comment" : "sustain (1/0 = on/off)"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"patching_rect" : [ 322.0, 79.0, 21.0, 21.0 ],
									"numoutlets" : 1,
									"id" : "obj-16",
									"outlettype" : [ "int" ],
									"comment" : "sustain index"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"patching_rect" : [ 219.0, 73.0, 21.0, 21.0 ],
									"numoutlets" : 1,
									"id" : "obj-17",
									"outlettype" : [ "bang" ],
									"comment" : "onchange"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"patching_rect" : [ 51.0, 60.0, 21.0, 21.0 ],
									"numoutlets" : 1,
									"id" : "obj-18",
									"outlettype" : [ "" ],
									"comment" : "function line output (2nd outlet)"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"patching_rect" : [ 51.0, 213.0, 21.0, 21.0 ],
									"numoutlets" : 0,
									"id" : "obj-19",
									"comment" : "attack"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"patching_rect" : [ 12.0, 264.0, 21.0, 21.0 ],
									"numoutlets" : 0,
									"id" : "obj-20",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"patching_rect" : [ 144.0, 212.0, 21.0, 21.0 ],
									"numoutlets" : 0,
									"id" : "obj-21",
									"comment" : "release"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Send \"next\" when sustaining",
									"linecount" : 3,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 174.0, 195.0, 79.0, 47.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-22"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "to function (bang/next to get points)",
									"linecount" : 3,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 35.0, 254.0, 89.0, 47.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-23"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Split into attack and release",
									"linecount" : 5,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 13.0, 151.0, 53.0, 73.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-24"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "get points here",
									"linecount" : 3,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 18.0, 71.0, 46.0, 47.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-25"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "sustain on/off",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 39.0, 10.0, 96.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-26"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "onchange",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 238.0, 76.0, 62.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-27"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "duration",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 442.0, 21.0, 59.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-28"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "sustain point index",
									"linecount" : 3,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 348.0, 83.0, 52.0, 47.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-29"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "the first point (0, 0) is index 0 and is always part of the attack",
									"linecount" : 4,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 338.0, 190.0, 107.0, 60.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-30"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-6", 1 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 1 ],
									"destination" : [ "obj-7", 2 ],
									"hidden" : 0,
									"midpoints" : [ 114.5, 68.0, 421.5, 68.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 1 ],
									"destination" : [ "obj-7", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 1 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 1 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [ 243.5, 121.0, 291.5, 121.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 1 ],
									"destination" : [ "obj-9", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 1 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
									"midpoints" : [ 428.5, 60.0, 213.0, 60.0, 188.0, 86.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
									"midpoints" : [ 228.5, 123.0, 171.5, 123.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
									"midpoints" : [ 101.5, 123.0, 171.5, 123.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 1 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-11", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [ 24.5, 38.0, 101.5, 38.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [ 171.5, 153.0, 60.5, 153.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [ 169.5, 241.0, 21.5, 241.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 2 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [ 257.5, 241.0, 21.5, 241.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [ 291.5, 241.0, 21.5, 241.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [ 441.5, 241.0, 21.5, 241.0 ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontsize" : 11.1,
						"fontname" : "Verdana",
						"fontface" : 0,
						"fontsize" : 11.1,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p multislider-adapter",
					"fontname" : "Verdana",
					"numinlets" : 3,
					"patching_rect" : [ 334.0, 252.0, 128.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 3,
					"id" : "obj-14",
					"outlettype" : [ "", "", "bang" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 443.0, 103.0, 404.0, 362.0 ],
						"bglocked" : 0,
						"defrect" : [ 443.0, 103.0, 404.0, 362.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b i",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 236.0, 94.0, 32.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 2,
									"id" : "obj-1",
									"outlettype" : [ "bang", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "speedlim 80",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 17.0, 125.0, 78.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-2",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b i",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 17.0, 151.0, 32.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 2,
									"id" : "obj-3",
									"outlettype" : [ "bang", "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "* 2",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 30.0, 187.0, 31.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-4",
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl slice",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 76.0, 239.0, 49.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 2,
									"id" : "obj-5",
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b l",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 106.0, 115.0, 32.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 2,
									"id" : "obj-6",
									"outlettype" : [ "bang", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "/ 64.",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 236.0, 125.0, 40.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-7",
									"outlettype" : [ "float" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "append 0",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 123.0, 136.0, 60.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-8",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 236.0, 148.0, 74.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-9",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "append 1",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 123.0, 185.0, 60.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-10",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "iter",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 123.0, 159.0, 29.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 1,
									"id" : "obj-11",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "zl group",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 123.0, 209.0, 55.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 2,
									"id" : "obj-12",
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "append 0 ensures the envelope will end",
									"linecount" : 4,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 139.0, 80.0, 77.0, 60.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-13"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "This needs to be the number of sliders+1",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 270.0, 86.0, 125.0, 33.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-14"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"patching_rect" : [ 9.0, 10.0, 20.0, 20.0 ],
									"numoutlets" : 1,
									"id" : "obj-15",
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"patching_rect" : [ 111.0, 43.0, 20.0, 20.0 ],
									"numoutlets" : 1,
									"id" : "obj-16",
									"outlettype" : [ "" ],
									"comment" : "sustain index"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"patching_rect" : [ 46.0, 66.0, 20.0, 20.0 ],
									"numoutlets" : 1,
									"id" : "obj-17",
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"patching_rect" : [ 76.0, 263.0, 20.0, 20.0 ],
									"numoutlets" : 0,
									"id" : "obj-18",
									"comment" : "attack"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"patching_rect" : [ 106.0, 264.0, 20.0, 20.0 ],
									"numoutlets" : 0,
									"id" : "obj-19",
									"comment" : "release"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"patching_rect" : [ 174.0, 302.0, 20.0, 20.0 ],
									"numoutlets" : 0,
									"id" : "obj-20",
									"comment" : "to multislider"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "to multislider",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 196.0, 301.0, 74.0, 33.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-21"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "duration",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 32.0, 7.0, 61.0, 20.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-22"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "sustain index",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 130.0, 36.0, 73.0, 33.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-23"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "multislider list of values",
									"linecount" : 3,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 3.0, 48.0, 77.0, 47.0 ],
									"fontsize" : 11.0,
									"numoutlets" : 0,
									"id" : "obj-24"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 1 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [ 18.5, 33.0, 245.5, 33.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [ 26.5, 289.0, 183.5, 289.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [ 245.5, 116.0, 314.0, 116.0, 314.0, 289.0, 183.5, 289.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [ 115.5, 205.0, 132.5, 205.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [ 245.5, 182.0, 132.5, 182.0 ]
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
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 1 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 1 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-5", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 1 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontsize" : 11.1,
						"fontname" : "Verdana",
						"fontface" : 0,
						"fontsize" : 11.1,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"globalpatchername" : ""
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "type",
					"fontname" : "Verdana",
					"presentation_rect" : [ 144.0, 2.0, 75.0, 17.0 ],
					"items" : [ "breakpoint", ",", "draw" ],
					"types" : [  ],
					"numinlets" : 1,
					"patching_rect" : [ 297.0, 21.0, 100.0, 17.0 ],
					"fontsize" : 9.0,
					"presentation" : 1,
					"numoutlets" : 3,
					"id" : "obj-15",
					"outlettype" : [ "int", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "function",
					"text" : "pattr function @bindto env::function",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 489.0, 269.0, 208.0, 33.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 3,
					"id" : "obj-16",
					"outlettype" : [ "", "", "" ],
					"restore" : [ 1000.0, 0.0, 1.0, 0.0, 0.0, 1, 237.287994, 0.103448, 0, 381.355988, 0.545455, 0, 491.524994, 0.896552, 0, 720.338989, 0.509091, 0, 864.407043, 0.137931, 0, 1000.0, 0.0, 1 ],
					"saved_object_attributes" : 					{

					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"hint" : "attack (line format)",
					"annotation" : "attack (line format)",
					"numinlets" : 1,
					"patching_rect" : [ 189.0, 341.0, 23.0, 23.0 ],
					"numoutlets" : 0,
					"id" : "obj-17",
					"comment" : "attack (line format)"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "speedlim 80",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 270.0, 215.0, 78.0, 20.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 1,
					"id" : "obj-18",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "duration",
					"text" : "pattr duration @bindto ui.envdur",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 270.0, 180.0, 111.0, 33.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 3,
					"id" : "obj-19",
					"outlettype" : [ "", "", "" ],
					"restore" : [ 1000 ],
					"saved_object_attributes" : 					{

					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "sustain",
					"text" : "pattr sustain @bindto ui.sustain",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 20.0, 167.0, 111.0, 33.0 ],
					"fontsize" : 11.0,
					"numoutlets" : 3,
					"id" : "obj-20",
					"outlettype" : [ "", "", "" ],
					"restore" : [ 0 ],
					"saved_object_attributes" : 					{

					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"varname" : "ui.sustain",
					"presentation_rect" : [ 145.0, 79.0, 18.0, 18.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 31.0, 145.0, 15.0, 15.0 ],
					"presentation" : 1,
					"numoutlets" : 1,
					"id" : "obj-21",
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Duration",
					"fontname" : "Verdana",
					"presentation_rect" : [ 145.0, 27.0, 63.0, 20.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 258.0, 159.0, 63.0, 20.0 ],
					"fontsize" : 11.0,
					"presentation" : 1,
					"numoutlets" : 0,
					"id" : "obj-23"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Sustain",
					"fontname" : "Verdana",
					"presentation_rect" : [ 160.0, 78.0, 50.0, 20.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 46.0, 142.0, 50.0, 20.0 ],
					"fontsize" : 11.0,
					"presentation" : 1,
					"numoutlets" : 0,
					"id" : "obj-24"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "env",
					"presentation_rect" : [ 5.0, 4.0, 130.0, 94.0 ],
					"lockeddragscroll" : 1,
					"numinlets" : 3,
					"args" : [  ],
					"patching_rect" : [ 186.0, 41.0, 130.0, 94.0 ],
					"presentation" : 1,
					"numoutlets" : 5,
					"id" : "obj-25",
					"name" : "ajm.envui-helper.maxpat",
					"outlettype" : [ "", "bang", "int", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"presentation_rect" : [ 0.0, 0.0, 140.0, 101.0 ],
					"shadow" : 2,
					"numinlets" : 1,
					"patching_rect" : [ 150.0, 53.0, 27.0, 34.0 ],
					"presentation" : 1,
					"border" : 1,
					"rounded" : 10,
					"numoutlets" : 0,
					"id" : "obj-26",
					"bgcolor" : [ 0.486275, 0.486275, 0.486275, 1.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [ 326.5, 178.0, 318.0, 178.0, 318.0, 42.0, 351.5, 42.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 1 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [ 29.5, 370.0, 381.5, 370.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 1 ],
					"destination" : [ "obj-3", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 2 ],
					"destination" : [ "obj-3", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [ 279.5, 239.0, 343.5, 239.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"color" : [ 0.678431, 0.819608, 0.819608, 1.0 ],
					"midpoints" : [ 515.5, 114.0, 478.0, 114.0, 478.0, 306.0, 348.5, 306.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-13", 4 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-4", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 1 ],
					"destination" : [ "obj-4", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"color" : [ 0.678431, 0.819608, 0.819608, 1.0 ],
					"midpoints" : [ 515.5, 114.0, 478.0, 114.0, 478.0, 306.0, 198.5, 306.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-13", 2 ],
					"hidden" : 0,
					"color" : [ 0.678431, 0.819608, 0.819608, 1.0 ],
					"midpoints" : [ 502.5, 245.0, 225.0, 245.0, 225.0, 243.0, 223.5, 243.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [ 167.5, 275.0, 139.0, 275.0, 139.0, 29.0, 195.5, 29.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-13", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 1 ],
					"destination" : [ "obj-13", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 1 ],
					"destination" : [ "obj-25", 1 ],
					"hidden" : 0,
					"midpoints" : [ 526.0, 153.0, 659.0, 153.0, 659.0, 10.0, 251.0, 10.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 2 ],
					"destination" : [ "obj-25", 1 ],
					"hidden" : 0,
					"midpoints" : [ 452.5, 281.0, 468.0, 281.0, 468.0, 10.0, 251.0, 10.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 2 ],
					"destination" : [ "obj-13", 3 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-25", 2 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 3 ],
					"destination" : [ "obj-14", 1 ],
					"hidden" : 0,
					"midpoints" : [ 278.75, 147.0, 398.0, 147.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 4 ],
					"destination" : [ "obj-14", 2 ],
					"hidden" : 0,
					"midpoints" : [ 306.5, 141.0, 452.5, 141.0 ]
				}

			}
 ]
	}

}
