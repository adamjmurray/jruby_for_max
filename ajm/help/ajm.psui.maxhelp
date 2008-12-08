{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 9.0, 44.0, 750.0, 488.0 ],
		"bglocked" : 0,
		"defrect" : [ 9.0, 44.0, 750.0, 488.0 ],
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
					"patching_rect" : [ 130.0, 465.0, 73.0, 20.0 ],
					"fontsize" : 11.1,
					"numoutlets" : 2,
					"id" : "obj-75",
					"outlettype" : [ "", "" ],
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "ajm.bring-to-front-listener ajm.psui",
					"fontname" : "Verdana",
					"hidden" : 1,
					"numinlets" : 0,
					"patching_rect" : [ 130.0, 439.0, 211.0, 20.0 ],
					"fontsize" : 11.1,
					"numoutlets" : 1,
					"id" : "obj-76",
					"outlettype" : [ "front" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess set",
					"fontname" : "Verdana",
					"hidden" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 247.0, 271.0, 68.0, 17.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"id" : "obj-1",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Queue Color (blends to inactive color)",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 406.0, 230.0, 104.0, 28.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"id" : "obj-2"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "saturation $1",
					"fontname" : "Verdana",
					"hidden" : 1,
					"numinlets" : 2,
					"patching_rect" : [ 401.0, 235.0, 71.0, 15.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"id" : "obj-3",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "slider",
					"numinlets" : 1,
					"patching_rect" : [ 389.0, 254.0, 13.0, 37.0 ],
					"numoutlets" : 1,
					"id" : "obj-4",
					"orientation" : 2,
					"outlettype" : [ "" ],
					"size" : 256.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "swatch",
					"numinlets" : 3,
					"patching_rect" : [ 401.0, 254.0, 129.0, 37.0 ],
					"compatibility" : 1,
					"numoutlets" : 2,
					"id" : "obj-5",
					"outlettype" : [ "", "float" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend queuergb",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 401.0, 298.0, 92.0, 17.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"id" : "obj-6",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 224.0, 320.0, 120.0, 15.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"id" : "obj-7",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 224.0, 300.0, 62.0, 17.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"id" : "obj-8",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "decoupling-example",
					"text" : "p ajm.psui: decoupling the queuing system",
					"fontname" : "Verdana",
					"numinlets" : 0,
					"patching_rect" : [ 364.0, 373.0, 205.0, 17.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"id" : "obj-9",
					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 10.0, 96.0, 432.0, 384.0 ],
						"bglocked" : 0,
						"defrect" : [ 10.0, 96.0, 432.0, 384.0 ],
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
									"text" : "loadbang",
									"linecount" : 2,
									"fontname" : "Verdana",
									"hidden" : 1,
									"numinlets" : 1,
									"patching_rect" : [ 100.0, 60.0, 48.0, 28.0 ],
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"id" : "obj-1",
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "setq",
									"fontname" : "Verdana",
									"hidden" : 1,
									"numinlets" : 2,
									"patching_rect" : [ 105.0, 309.0, 29.0, 15.0 ],
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"id" : "obj-2",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set",
									"fontname" : "Verdana",
									"hidden" : 1,
									"numinlets" : 1,
									"patching_rect" : [ 113.0, 208.0, 62.0, 17.0 ],
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"id" : "obj-3",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numinlets" : 1,
									"patching_rect" : [ 320.0, 105.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"id" : "obj-4",
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "metro 1000",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 320.0, 133.0, 64.0, 17.0 ],
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"id" : "obj-5",
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numinlets" : 1,
									"patching_rect" : [ 269.0, 107.0, 36.0, 36.0 ],
									"numoutlets" : 1,
									"id" : "obj-6",
									"outlettype" : [ "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "subpatch",
									"text" : "p subpatch",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 269.0, 176.0, 58.0, 17.0 ],
									"fontsize" : 9.0,
									"numoutlets" : 0,
									"id" : "obj-7",
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 461.0, 97.0, 548.0, 378.0 ],
										"bglocked" : 0,
										"defrect" : [ 461.0, 97.0, 548.0, 378.0 ],
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
													"text" : "You only need to do this once. Active state is saved with the patch. So you could copy and past this patch and not worry about it.",
													"linecount" : 5,
													"fontname" : "Verdana",
													"numinlets" : 1,
													"patching_rect" : [ 351.0, 199.0, 151.0, 61.0 ],
													"fontsize" : 9.0,
													"numoutlets" : 0,
													"id" : "obj-1"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "active preset 0",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"patching_rect" : [ 338.0, 175.0, 79.0, 15.0 ],
													"fontsize" : 9.0,
													"numoutlets" : 1,
													"id" : "obj-2",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Send these messages to prevent pattrstorage from recalling these pattrs:",
													"linecount" : 2,
													"fontname" : "Verdana",
													"numinlets" : 1,
													"patching_rect" : [ 279.0, 123.0, 200.0, 28.0 ],
													"fontsize" : 9.0,
													"numoutlets" : 0,
													"id" : "obj-3"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "active presetqueue 0",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"patching_rect" : [ 320.0, 156.0, 104.0, 15.0 ],
													"fontsize" : 9.0,
													"numoutlets" : 1,
													"id" : "obj-4",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"numinlets" : 0,
													"patching_rect" : [ 26.0, 91.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"id" : "obj-5",
													"outlettype" : [ "bang" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "zlclear",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"patching_rect" : [ 54.0, 93.0, 41.0, 15.0 ],
													"fontsize" : 9.0,
													"numoutlets" : 1,
													"id" : "obj-6",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route \" \"",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"patching_rect" : [ 54.0, 71.0, 50.0, 17.0 ],
													"fontsize" : 9.0,
													"numoutlets" : 2,
													"id" : "obj-7",
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"varname" : "presetqueue",
													"text" : "pattr presetqueue @autorestore 0",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"patching_rect" : [ 54.0, 50.0, 163.0, 17.0 ],
													"fontsize" : 9.0,
													"numoutlets" : 3,
													"id" : "obj-8",
													"outlettype" : [ "", "", "" ],
													"restore" : [ " " ],
													"saved_object_attributes" : 													{

													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "if $i1 <= 1 then \" \"",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"patching_rect" : [ 61.0, 170.0, 96.0, 17.0 ],
													"fontsize" : 9.0,
													"numoutlets" : 1,
													"id" : "obj-9",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl len",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"patching_rect" : [ 61.0, 148.0, 34.0, 17.0 ],
													"fontsize" : 9.0,
													"numoutlets" : 2,
													"id" : "obj-10",
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl reg",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"patching_rect" : [ 50.0, 120.0, 36.0, 17.0 ],
													"fontsize" : 9.0,
													"numoutlets" : 2,
													"id" : "obj-11",
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl slice 1",
													"fontname" : "Verdana",
													"numinlets" : 2,
													"patching_rect" : [ 50.0, 202.0, 51.0, 17.0 ],
													"fontsize" : 9.0,
													"numoutlets" : 2,
													"id" : "obj-12",
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route recall",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"patching_rect" : [ 50.0, 302.0, 63.0, 17.0 ],
													"fontsize" : 9.0,
													"numoutlets" : 2,
													"id" : "obj-13",
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"varname" : "preset",
													"text" : "pattr preset @autorestore 0",
													"fontname" : "Verdana",
													"numinlets" : 1,
													"patching_rect" : [ 50.0, 241.0, 138.0, 17.0 ],
													"fontsize" : 9.0,
													"numoutlets" : 3,
													"id" : "obj-14",
													"outlettype" : [ "", "", "" ],
													"restore" : [ 1 ],
													"saved_object_attributes" : 													{

													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"varname" : "storage[1]",
													"text" : "pattrstorage @name storage @autorestore 0 @savemode 0 @dirty 0",
													"linecount" : 2,
													"fontname" : "Verdana",
													"numinlets" : 1,
													"patching_rect" : [ 50.0, 268.0, 215.0, 28.0 ],
													"fontsize" : 9.0,
													"numoutlets" : 1,
													"id" : "obj-15",
													"outlettype" : [ "" ],
													"saved_object_attributes" : 													{
														"storage_rect" : [ 0, 0, 640, 240 ],
														"client_rect" : [ 0, 0, 640, 240 ]
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "These pattrs (presetqueue and preset) are only for communication purposes and shouldn't be recalled by the pattrstorage.",
													"linecount" : 3,
													"fontname" : "Verdana",
													"numinlets" : 1,
													"patching_rect" : [ 277.0, 69.0, 243.0, 39.0 ],
													"fontsize" : 9.0,
													"numoutlets" : 0,
													"id" : "obj-16"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "pattr needs to store something, so \" \" is used to represent nothing",
													"linecount" : 4,
													"fontname" : "Verdana",
													"numinlets" : 1,
													"patching_rect" : [ 108.0, 72.0, 120.0, 50.0 ],
													"fontsize" : 9.0,
													"numoutlets" : 0,
													"id" : "obj-17"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [ 59.5, 325.0, 44.0, 325.0, 44.0, 234.0, 59.5, 234.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [ 329.5, 262.0, 59.5, 262.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [ 347.5, 262.0, 59.5, 262.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [ 70.5, 191.0, 233.0, 191.0, 233.0, 40.0, 63.5, 40.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 1 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [ 91.5, 225.0, 233.0, 225.0, 233.0, 40.0, 63.5, 40.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-11", 1 ],
													"hidden" : 0,
													"midpoints" : [ 63.5, 114.0, 76.5, 114.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 1 ],
													"destination" : [ "obj-11", 1 ],
													"hidden" : 0,
													"midpoints" : [ 94.5, 114.0, 76.5, 114.0 ]
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
									"text" : "route \" \"",
									"fontname" : "Verdana",
									"hidden" : 1,
									"numinlets" : 1,
									"patching_rect" : [ 105.0, 274.0, 50.0, 17.0 ],
									"fontsize" : 9.0,
									"numoutlets" : 2,
									"id" : "obj-8",
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend setq",
									"fontname" : "Verdana",
									"hidden" : 1,
									"numinlets" : 1,
									"patching_rect" : [ 145.0, 309.0, 68.0, 17.0 ],
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"id" : "obj-9",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "u965005122",
									"text" : "pattr @bindto subpatch::presetqueue",
									"linecount" : 2,
									"fontname" : "Verdana",
									"hidden" : 1,
									"numinlets" : 1,
									"patching_rect" : [ 105.0, 237.0, 114.0, 28.0 ],
									"fontsize" : 9.0,
									"numoutlets" : 3,
									"id" : "obj-10",
									"outlettype" : [ "", "", "" ],
									"restore" : [ " " ],
									"saved_object_attributes" : 									{

									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route store",
									"fontname" : "Verdana",
									"hidden" : 1,
									"numinlets" : 1,
									"patching_rect" : [ 15.0, 272.0, 61.0, 17.0 ],
									"fontsize" : 9.0,
									"numoutlets" : 2,
									"id" : "obj-11",
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend set",
									"fontname" : "Verdana",
									"hidden" : 1,
									"numinlets" : 1,
									"patching_rect" : [ 15.0, 302.0, 62.0, 17.0 ],
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"id" : "obj-12",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "queue $1",
									"fontname" : "Verdana",
									"hidden" : 1,
									"numinlets" : 2,
									"patching_rect" : [ 114.0, 85.0, 51.0, 15.0 ],
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"id" : "obj-13",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "toggle",
									"numinlets" : 1,
									"patching_rect" : [ 100.0, 85.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"id" : "obj-14",
									"outlettype" : [ "int" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "store $1",
									"fontname" : "Verdana",
									"hidden" : 1,
									"numinlets" : 2,
									"patching_rect" : [ 28.0, 208.0, 49.0, 15.0 ],
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"id" : "obj-15",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "u576005124",
									"text" : "pattr @bindto subpatch::preset",
									"linecount" : 2,
									"fontname" : "Verdana",
									"hidden" : 1,
									"numinlets" : 1,
									"patching_rect" : [ 15.0, 235.0, 89.0, 28.0 ],
									"fontsize" : 9.0,
									"numoutlets" : 3,
									"id" : "obj-16",
									"outlettype" : [ "", "", "" ],
									"restore" : [ 1 ],
									"saved_object_attributes" : 									{

									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Queued Recall:",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 19.0, 87.0, 77.0, 17.0 ],
									"fontsize" : 9.0,
									"numoutlets" : 0,
									"id" : "obj-17"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "jsui",
									"numinlets" : 1,
									"patching_rect" : [ 15.0, 101.0, 100.0, 100.0 ],
									"jsarguments" : [  ],
									"numoutlets" : 4,
									"filename" : "ajm.psui.js",
									"id" : "obj-18",
									"outlettype" : [ "", "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Sometimes you will want the queueing system to be controlled elsewhere in your patch, instead of banging the psui object. Here's one way to do it.",
									"linecount" : 3,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 10.0, 8.0, 336.0, 50.0 ],
									"fontsize" : 12.0,
									"numoutlets" : 0,
									"id" : "obj-19"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Elsewhere in the patch, a bang comes in to advance the queue:",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 254.0, 69.0, 159.0, 28.0 ],
									"fontsize" : 9.0,
									"numoutlets" : 0,
									"id" : "obj-20"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Change the pattr bindto paths as needed for your patch.",
									"linecount" : 3,
									"fontname" : "Verdana",
									"hidden" : 1,
									"numinlets" : 1,
									"patching_rect" : [ 226.0, 253.0, 141.0, 39.0 ],
									"fontsize" : 9.0,
									"numoutlets" : 0,
									"id" : "obj-21"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "A space means no queue",
									"linecount" : 3,
									"fontname" : "Verdana",
									"hidden" : 1,
									"numinlets" : 1,
									"patching_rect" : [ 158.0, 269.0, 51.0, 39.0 ],
									"fontsize" : 9.0,
									"numoutlets" : 0,
									"id" : "obj-22"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "unlock the patch",
									"linecount" : 3,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 140.0, 147.0, 46.0, 39.0 ],
									"fontsize" : 9.0,
									"numoutlets" : 0,
									"id" : "obj-23"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 1,
									"midpoints" : [ 24.5, 327.0, 7.0, 327.0, 7.0, 90.0, 24.5, 90.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 1,
									"midpoints" : [ 154.5, 332.0, 217.0, 332.0, 217.0, 72.0, 24.5, 72.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 1,
									"midpoints" : [ 114.5, 332.0, 217.0, 332.0, 217.0, 72.0, 24.5, 72.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 1,
									"midpoints" : [ 37.5, 228.0, 24.5, 228.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 1 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 1,
									"midpoints" : [ 66.5, 294.0, 24.5, 294.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 1 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 1,
									"midpoints" : [ 122.5, 230.0, 188.0, 230.0, 188.0, 80.0, 109.0, 80.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 2 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 3 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 1 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 1,
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
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-5", 0 ],
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
					"maxclass" : "newobj",
					"text" : "p ajm.psui: number of rows & columns",
					"fontname" : "Verdana",
					"numinlets" : 0,
					"patching_rect" : [ 364.0, 347.0, 185.0, 17.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"id" : "obj-10",
					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 90.0, 113.0, 600.0, 426.0 ],
						"bglocked" : 0,
						"defrect" : [ 90.0, 113.0, 600.0, 426.0 ],
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
									"maxclass" : "message",
									"text" : "cols $1",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 383.0, 105.0, 43.0, 15.0 ],
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"id" : "obj-1",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"fontname" : "Verdana",
									"triscale" : 0.9,
									"numinlets" : 1,
									"patching_rect" : [ 383.0, 84.0, 35.0, 17.0 ],
									"fontsize" : 9.0,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"numoutlets" : 2,
									"id" : "obj-2",
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"minimum" : 1,
									"outlettype" : [ "int", "bang" ],
									"maximum" : 8
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"fontname" : "Verdana",
									"triscale" : 0.9,
									"numinlets" : 1,
									"patching_rect" : [ 322.0, 82.0, 35.0, 17.0 ],
									"fontsize" : 9.0,
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"numoutlets" : 2,
									"id" : "obj-3",
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"minimum" : 1,
									"outlettype" : [ "int", "bang" ],
									"maximum" : 8
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "jsui",
									"numinlets" : 1,
									"patching_rect" : [ 322.0, 141.0, 193.0, 197.0 ],
									"jsarguments" : [  ],
									"numoutlets" : 4,
									"filename" : "ajm.psui.js",
									"id" : "obj-4",
									"outlettype" : [ "", "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "rows $1",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"patching_rect" : [ 322.0, 105.0, 48.0, 15.0 ],
									"fontsize" : 9.0,
									"numoutlets" : 1,
									"id" : "obj-5",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "jsui",
									"numinlets" : 1,
									"patching_rect" : [ 65.0, 110.0, 166.0, 164.0 ],
									"jsarguments" : [ 6, 5 ],
									"numoutlets" : 4,
									"filename" : "ajm.psui.js",
									"id" : "obj-6",
									"outlettype" : [ "", "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Accepts two optional arguments: number of columns and number of rows",
									"linecount" : 3,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 67.0, 42.0, 181.0, 39.0 ],
									"fontsize" : 9.0,
									"numoutlets" : 0,
									"id" : "obj-7"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Or change the number of rows and columns with messages:",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 328.0, 52.0, 155.0, 28.0 ],
									"fontsize" : 9.0,
									"numoutlets" : 0,
									"id" : "obj-8"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "this has arguments: 6 5",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"patching_rect" : [ 74.0, 92.0, 137.0, 17.0 ],
									"fontsize" : 9.0,
									"numoutlets" : 0,
									"id" : "obj-9"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-5", 0 ],
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
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [ 392.5, 130.0, 331.5, 130.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-1", 0 ],
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
					"maxclass" : "bpatcher",
					"lockeddragscroll" : 1,
					"numinlets" : 0,
					"args" : [  ],
					"patching_rect" : [ 592.0, 387.0, 127.0, 49.0 ],
					"numoutlets" : 0,
					"id" : "obj-11",
					"name" : "ajm.helplinks.maxpat"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "recall 6",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 56.0, 139.0, 45.0, 15.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"id" : "obj-12",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "store 9",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 37.0, 165.0, 43.0, 15.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"id" : "obj-13",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "jsui",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 518.0, 418.0, 25.0, 15.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"id" : "obj-14",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "see also:",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 358.0, 419.0, 49.0, 17.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"id" : "obj-15"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "pattrstorage",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 405.0, 418.0, 67.0, 15.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"id" : "obj-16",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "pattr",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 479.0, 418.0, 33.0, 15.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"id" : "obj-17",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend help",
					"fontname" : "Verdana",
					"hidden" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 398.0, 445.0, 68.0, 17.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"id" : "obj-18",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"fontname" : "Verdana",
					"hidden" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 398.0, 468.0, 45.0, 17.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"id" : "obj-19",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "5",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 35.0, 140.0, 16.0, 15.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"id" : "obj-20",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "delay 500",
					"fontname" : "Verdana",
					"hidden" : 1,
					"numinlets" : 2,
					"patching_rect" : [ 296.0, 127.0, 55.0, 17.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"id" : "obj-21",
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"fontname" : "Verdana",
					"hidden" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 296.0, 103.0, 50.0, 17.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"id" : "obj-22",
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Click a number to recall a preset. Shift+click to store a preset.",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 37.0, 119.0, 292.0, 17.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"id" : "obj-23"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t i i",
					"fontname" : "Verdana",
					"hidden" : 1,
					"numinlets" : 1,
					"patching_rect" : [ 326.0, 175.0, 27.0, 17.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 2,
					"id" : "obj-24",
					"outlettype" : [ "int", "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "uzi 16",
					"fontname" : "Verdana",
					"hidden" : 1,
					"numinlets" : 2,
					"patching_rect" : [ 296.0, 150.0, 40.0, 17.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"id" : "obj-25",
					"outlettype" : [ "bang", "bang", "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "number",
					"text" : "pattr number @bindto thenumber @autorestore 0",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 30.0, 88.0, 235.0, 17.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 3,
					"id" : "obj-26",
					"outlettype" : [ "", "", "" ],
					"restore" : [ 16 ],
					"saved_object_attributes" : 					{

					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "thenumber",
					"fontname" : "Verdana",
					"triscale" : 0.9,
					"numinlets" : 1,
					"patching_rect" : [ 89.0, 70.0, 35.0, 17.0 ],
					"fontsize" : 9.0,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"numoutlets" : 2,
					"id" : "obj-27",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"outlettype" : [ "int", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Recalled",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 69.0, 318.0, 48.0, 17.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"id" : "obj-28"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Stored",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 149.0, 316.0, 40.0, 17.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"id" : "obj-29"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend store",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 137.0, 331.0, 72.0, 17.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"id" : "obj-30",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Text Color",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 427.0, 143.0, 94.0, 17.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"id" : "obj-31"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "saturation $1",
					"fontname" : "Verdana",
					"hidden" : 1,
					"numinlets" : 2,
					"patching_rect" : [ 397.0, 137.0, 71.0, 15.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"id" : "obj-32",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "slider",
					"numinlets" : 1,
					"patching_rect" : [ 385.0, 156.0, 13.0, 37.0 ],
					"numoutlets" : 1,
					"id" : "obj-33",
					"orientation" : 2,
					"outlettype" : [ "" ],
					"size" : 256.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "swatch",
					"numinlets" : 3,
					"patching_rect" : [ 397.0, 156.0, 129.0, 37.0 ],
					"compatibility" : 1,
					"numoutlets" : 2,
					"id" : "obj-34",
					"outlettype" : [ "", "float" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend textrgb",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 397.0, 200.0, 82.0, 17.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"id" : "obj-35",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "psui-help[1]",
					"text" : "pattrstorage @name psui-help @savemode 0 @dirty 0",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 107.0, 355.0, 209.0, 28.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"id" : "obj-36",
					"outlettype" : [ "" ],
					"saved_object_attributes" : 					{
						"storage_rect" : [ 0, 0, 640, 240 ],
						"client_rect" : [ 0, 0, 640, 240 ]
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Saving Preset Color (appears momentarily when shift clicking)",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 548.0, 228.0, 157.0, 28.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"id" : "obj-37"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Active Preset Color",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 572.0, 142.0, 100.0, 17.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"id" : "obj-38"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Inactive Preset Color",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 565.0, 55.0, 109.0, 17.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"id" : "obj-39"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "pattrstorage preset management UI with queued recall",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 145.0, 23.0, 162.0, 28.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"id" : "obj-40"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "ajm.psui",
					"fontname" : "Arial",
					"numinlets" : 1,
					"patching_rect" : [ 21.0, 18.0, 102.0, 27.0 ],
					"fontsize" : 18.0,
					"numoutlets" : 0,
					"id" : "obj-41"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "JSUI",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 22.0, 43.0, 100.0, 17.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"id" : "obj-42"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "queue $1",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"patching_rect" : [ 151.0, 166.0, 51.0, 15.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"id" : "obj-43",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "toggle",
					"numinlets" : 1,
					"patching_rect" : [ 151.0, 145.0, 15.0, 15.0 ],
					"numoutlets" : 1,
					"id" : "obj-44",
					"outlettype" : [ "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numinlets" : 1,
					"patching_rect" : [ 107.0, 148.0, 32.0, 32.0 ],
					"numoutlets" : 1,
					"id" : "obj-45",
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"fontname" : "Verdana",
					"triscale" : 0.9,
					"numinlets" : 1,
					"patching_rect" : [ 148.0, 300.0, 35.0, 17.0 ],
					"fontsize" : 9.0,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"numoutlets" : 2,
					"id" : "obj-46",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"outlettype" : [ "int", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "saturation $1",
					"fontname" : "Verdana",
					"hidden" : 1,
					"numinlets" : 2,
					"patching_rect" : [ 550.0, 234.0, 71.0, 15.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"id" : "obj-47",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "slider",
					"numinlets" : 1,
					"patching_rect" : [ 538.0, 253.0, 13.0, 37.0 ],
					"numoutlets" : 1,
					"id" : "obj-48",
					"orientation" : 2,
					"outlettype" : [ "" ],
					"size" : 256.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "swatch",
					"numinlets" : 3,
					"patching_rect" : [ 550.0, 253.0, 129.0, 37.0 ],
					"compatibility" : 1,
					"numoutlets" : 2,
					"id" : "obj-49",
					"outlettype" : [ "", "float" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend storergb",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 550.0, 296.0, 87.0, 17.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"id" : "obj-50",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"fontname" : "Verdana",
					"triscale" : 0.9,
					"numinlets" : 1,
					"patching_rect" : [ 72.0, 302.0, 35.0, 17.0 ],
					"fontsize" : 9.0,
					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
					"numoutlets" : 2,
					"id" : "obj-51",
					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
					"outlettype" : [ "int", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "saturation $1",
					"fontname" : "Verdana",
					"hidden" : 1,
					"numinlets" : 2,
					"patching_rect" : [ 555.0, 137.0, 71.0, 15.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"id" : "obj-52",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "slider",
					"numinlets" : 1,
					"patching_rect" : [ 543.0, 156.0, 13.0, 37.0 ],
					"numoutlets" : 1,
					"id" : "obj-53",
					"orientation" : 2,
					"outlettype" : [ "" ],
					"size" : 256.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "swatch",
					"numinlets" : 3,
					"patching_rect" : [ 555.0, 156.0, 129.0, 37.0 ],
					"compatibility" : 1,
					"numoutlets" : 2,
					"id" : "obj-54",
					"outlettype" : [ "", "float" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "saturation $1",
					"fontname" : "Verdana",
					"hidden" : 1,
					"numinlets" : 2,
					"patching_rect" : [ 553.0, 48.0, 71.0, 15.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"id" : "obj-55",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "slider",
					"numinlets" : 1,
					"patching_rect" : [ 541.0, 68.0, 13.0, 37.0 ],
					"numoutlets" : 1,
					"id" : "obj-56",
					"orientation" : 2,
					"outlettype" : [ "" ],
					"size" : 256.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "swatch",
					"numinlets" : 3,
					"patching_rect" : [ 553.0, 68.0, 129.0, 37.0 ],
					"compatibility" : 1,
					"numoutlets" : 2,
					"id" : "obj-57",
					"outlettype" : [ "", "float" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "saturation $1",
					"fontname" : "Verdana",
					"hidden" : 1,
					"numinlets" : 2,
					"patching_rect" : [ 403.0, 47.0, 71.0, 15.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"id" : "obj-58",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "slider",
					"numinlets" : 1,
					"patching_rect" : [ 391.0, 67.0, 13.0, 37.0 ],
					"numoutlets" : 1,
					"id" : "obj-59",
					"orientation" : 2,
					"outlettype" : [ "" ],
					"size" : 256.0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend onrgb",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 555.0, 199.0, 75.0, 17.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"id" : "obj-60",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend offrgb",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 553.0, 109.0, 76.0, 17.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"id" : "obj-61",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend brgb",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 403.0, 108.0, 69.0, 17.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 1,
					"id" : "obj-62",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "swatch",
					"numinlets" : 3,
					"patching_rect" : [ 403.0, 67.0, 129.0, 37.0 ],
					"compatibility" : 1,
					"numoutlets" : 2,
					"id" : "obj-63",
					"outlettype" : [ "", "float" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jsui",
					"numinlets" : 1,
					"patching_rect" : [ 107.0, 189.0, 100.0, 100.0 ],
					"jsarguments" : [  ],
					"numoutlets" : 4,
					"filename" : "ajm.psui.js",
					"id" : "obj-64",
					"outlettype" : [ "", "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Background Color",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 416.0, 55.0, 100.0, 17.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"id" : "obj-65"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "thenumber:",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 31.0, 72.0, 62.0, 17.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"id" : "obj-66"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Customizable colors",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 473.0, 21.0, 161.0, 21.0 ],
					"fontsize" : 12.0,
					"numoutlets" : 0,
					"id" : "obj-67"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"shadow" : 3,
					"numinlets" : 1,
					"patching_rect" : [ 377.0, 13.0, 341.0, 309.0 ],
					"border" : 1,
					"rounded" : 6,
					"numoutlets" : 0,
					"id" : "obj-68",
					"bgcolor" : [ 0.721569, 0.870588, 0.898039, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "When the queue is turned on, recalls will not occur until a bang is recieved. Multiple recalls can be queued up.",
					"linecount" : 4,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 211.0, 151.0, 145.0, 50.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"id" : "obj-69"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Messages work too (\"recall\" is optional)",
					"linecount" : 3,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 16.0, 187.0, 80.0, 39.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"id" : "obj-70"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "This object is based on a script from the Max tutorials",
					"linecount" : 2,
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 5.0, 408.0, 139.0, 28.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"id" : "obj-71"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Double click for more info:",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 362.0, 334.0, 133.0, 17.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"id" : "obj-72"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "the queue",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"patching_rect" : [ 223.0, 336.0, 54.0, 17.0 ],
					"fontsize" : 9.0,
					"numoutlets" : 0,
					"id" : "obj-73"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"shadow" : 3,
					"numinlets" : 1,
					"patching_rect" : [ 10.0, 12.0, 299.0, 46.0 ],
					"border" : 1,
					"rounded" : 10,
					"numoutlets" : 0,
					"id" : "obj-74",
					"bgcolor" : [ 0.729412, 0.890196, 0.815686, 1.0 ],
					"background" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-76", 0 ],
					"destination" : [ "obj-75", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-64", 0 ],
					"destination" : [ "obj-51", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 1 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 1,
					"midpoints" : [ 343.5, 196.0, 356.0, 196.0, 356.0, 66.0, 98.5, 66.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-64", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-64", 0 ],
					"hidden" : 0,
					"midpoints" : [ 65.5, 160.0, 88.0, 160.0, 88.0, 183.0, 116.5, 183.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-64", 0 ],
					"hidden" : 0,
					"midpoints" : [ 44.5, 160.0, 88.0, 160.0, 88.0, 183.0, 116.5, 183.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-64", 0 ],
					"hidden" : 0,
					"midpoints" : [ 46.5, 183.0, 116.5, 183.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-64", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-50", 0 ],
					"destination" : [ "obj-64", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-64", 0 ],
					"hidden" : 0,
					"midpoints" : [ 160.5, 183.0, 116.5, 183.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 0 ],
					"destination" : [ "obj-64", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-60", 0 ],
					"destination" : [ "obj-64", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-61", 0 ],
					"destination" : [ "obj-64", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-62", 0 ],
					"destination" : [ "obj-64", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-64", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [ 146.5, 350.0, 116.5, 350.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-64", 1 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 1,
					"midpoints" : [ 335.5, 325.0, 146.5, 325.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-64", 1 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-64", 2 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 1,
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
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 2 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 1,
					"midpoints" : [ 392.0, 196.0, 379.0, 196.0, 379.0, 132.0, 406.5, 132.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 1,
					"midpoints" : [ 527.5, 437.0, 407.5, 437.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 1,
					"midpoints" : [ 414.5, 437.0, 407.5, 437.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 1,
					"midpoints" : [ 488.5, 437.0, 407.5, 437.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 1,
					"midpoints" : [ 396.0, 294.0, 383.0, 294.0, 383.0, 230.0, 410.5, 230.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-59", 0 ],
					"destination" : [ "obj-58", 0 ],
					"hidden" : 1,
					"midpoints" : [ 398.0, 110.0, 386.0, 110.0, 386.0, 43.0, 412.5, 43.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-58", 0 ],
					"destination" : [ "obj-63", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-63", 0 ],
					"destination" : [ "obj-62", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-48", 0 ],
					"destination" : [ "obj-47", 0 ],
					"hidden" : 1,
					"midpoints" : [ 545.0, 296.0, 532.0, 296.0, 532.0, 229.0, 559.5, 229.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-47", 0 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 0 ],
					"destination" : [ "obj-50", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-56", 0 ],
					"destination" : [ "obj-55", 0 ],
					"hidden" : 1,
					"midpoints" : [ 548.0, 110.0, 536.0, 110.0, 536.0, 44.0, 562.5, 44.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 0 ],
					"destination" : [ "obj-57", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 0 ],
					"destination" : [ "obj-61", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-53", 0 ],
					"destination" : [ "obj-52", 0 ],
					"hidden" : 1,
					"midpoints" : [ 550.0, 199.0, 537.0, 199.0, 537.0, 132.0, 564.5, 132.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-52", 0 ],
					"destination" : [ "obj-54", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-54", 0 ],
					"destination" : [ "obj-60", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
