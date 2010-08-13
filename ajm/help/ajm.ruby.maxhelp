{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 4.0, 51.0, 705.0, 340.0 ],
		"bglocked" : 0,
		"defrect" : [ 4.0, 51.0, 705.0, 340.0 ],
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
					"maxclass" : "textbutton",
					"fontsize" : 12.0,
					"outlettype" : [ "", "", "int" ],
					"patching_rect" : [ 541.0, 204.0, 132.0, 22.0 ],
					"texton" : "Stop",
					"border" : 3,
					"rounded" : 8.0,
					"borderoncolor" : [ 0.156863, 0.8, 0.54902, 1.0 ],
					"text" : "Advanced Topics",
					"bgovercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bordercolor" : [ 0.156863, 0.8, 0.54902, 1.0 ],
					"id" : "obj-12",
					"fontname" : "Arial",
					"numinlets" : 1,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "help ajm.ruby.advanced",
					"fontsize" : 11.1,
					"hidden" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 679.0, 270.0, 144.0, 18.0 ],
					"id" : "obj-9",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"fontsize" : 11.1,
					"hidden" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 679.0, 297.0, 56.0, 20.0 ],
					"id" : "obj-11",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "..or from Max messages.",
					"fontsize" : 11.0,
					"patching_rect" : [ 290.0, 66.0, 149.0, 20.0 ],
					"id" : "obj-4",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "(and Ruby 1.9.2dev)",
					"fontsize" : 11.0,
					"patching_rect" : [ 380.0, 309.0, 130.0, 20.0 ],
					"id" : "obj-3",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set (and Ruby $2)",
					"fontsize" : 11.0,
					"hidden" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 403.0, 374.0, 111.0, 18.0 ],
					"id" : "obj-2",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "mxj ajm.ruby @file ajm_version.rb @ruby_version 1.9",
					"linecount" : 2,
					"fontsize" : 11.1,
					"hidden" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 246.0, 332.0, 208.0, 33.0 ],
					"id" : "obj-1",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set Powered by JRuby $1\\, a pure-Java interpreter for Ruby $2",
					"fontsize" : 11.0,
					"hidden" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 19.0, 375.0, 379.0, 18.0 ],
					"id" : "obj-10",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "mxj ajm.ruby @file ajm_version.rb",
					"fontsize" : 11.1,
					"hidden" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 20.0, 333.0, 214.0, 20.0 ],
					"id" : "obj-6",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Powered by JRuby 1.5.1, a pure-Java interpreter for Ruby 1.8.7",
					"fontsize" : 11.0,
					"patching_rect" : [ 18.0, 309.0, 407.0, 20.0 ],
					"id" : "obj-34",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p \"learning resources\"",
					"fontsize" : 11.0,
					"patching_rect" : [ 541.0, 232.574722, 133.0, 20.0 ],
					"id" : "obj-52",
					"fontname" : "Verdana",
					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 650.0, 58.0, 649.0, 277.0 ],
						"bglocked" : 0,
						"defrect" : [ 650.0, 58.0, 649.0, 277.0 ],
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
									"text" : "http://www.ruby-doc.org/docs/ProgrammingRuby/",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 274.0, 152.0, 292.0, 18.0 ],
									"id" : "obj-12",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "which has a (somewhat outdated) first edition online for free:",
									"linecount" : 2,
									"fontsize" : 11.0,
									"patching_rect" : [ 80.0, 135.0, 217.0, 33.0 ],
									"id" : "obj-10",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "http://www.pragprog.com/titles/ruby/programming-ruby",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 274.0, 109.0, 335.0, 18.0 ],
									"id" : "obj-9",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "One of the best books for learning Ruby: ",
									"fontsize" : 11.0,
									"patching_rect" : [ 40.0, 107.0, 240.0, 20.0 ],
									"id" : "obj-4",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Combine the power of Java and Ruby:",
									"linecount" : 2,
									"fontsize" : 11.0,
									"patching_rect" : [ 75.0, 215.0, 123.0, 33.0 ],
									"id" : "obj-2",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "http://kenai.com/projects/jruby/pages/CallingJavaFromJRuby",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 196.0, 226.0, 353.0, 18.0 ],
									"id" : "obj-1",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "and JRuby:",
									"fontsize" : 11.0,
									"patching_rect" : [ 382.0, 35.0, 74.0, 20.0 ],
									"id" : "obj-5",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : ";\rmax launchbrowser $1",
									"linecount" : 2,
									"fontsize" : 11.0,
									"hidden" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 308.0, 246.0, 137.0, 31.0 ],
									"id" : "obj-7",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "http://www.ruby-lang.org",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 202.0, 35.0, 162.0, 18.0 ],
									"id" : "obj-8",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "http://jruby.codehaus.org",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 450.0, 35.0, 157.0, 18.0 ],
									"id" : "obj-11",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Click to learn more about Ruby:",
									"fontsize" : 11.0,
									"patching_rect" : [ 19.0, 35.0, 188.0, 20.0 ],
									"id" : "obj-35",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 1,
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
					"maxclass" : "comment",
					"text" : "The Basics",
					"fontsize" : 12.0,
					"patching_rect" : [ 519.0, 82.0, 127.0, 21.0 ],
					"id" : "obj-46",
					"fontname" : "Verdana Bold",
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "double click ajm.ruby to open the @file with whatever program your OS associates with .rb files",
					"linecount" : 3,
					"fontsize" : 11.0,
					"patching_rect" : [ 58.0, 185.0, 208.0, 47.0 ],
					"id" : "obj-63",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "eval custom_method()",
					"fontsize" : 11.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 13.0, 95.0, 136.0, 18.0 ],
					"id" : "obj-57",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "1 'a' \"some text\"",
					"fontsize" : 11.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 25.0, 120.0, 113.0, 18.0 ],
					"id" : "obj-55",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 43.0, 143.0, 26.0, 26.0 ],
					"id" : "obj-53",
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess set",
					"fontsize" : 11.0,
					"hidden" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 59.0, 208.0, 83.0, 20.0 ],
					"id" : "obj-49",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"fontsize" : 11.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 11.0, 260.0, 155.0, 18.0 ],
					"id" : "obj-51",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"bgcolor" : [ 1.0, 0.988235, 0.988235, 1.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "mxj ajm.ruby @file ajm_file_example.rb",
					"fontsize" : 11.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 13.0, 229.0, 235.0, 20.0 ],
					"id" : "obj-45",
					"fontname" : "Verdana",
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "mxj ajm.ruby",
					"fontsize" : 11.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 269.0, 230.0, 86.0, 20.0 ],
					"id" : "obj-38",
					"fontname" : "Verdana",
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess set",
					"fontsize" : 11.0,
					"hidden" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 364.0, 230.0, 83.0, 20.0 ],
					"id" : "obj-32",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"fontsize" : 11.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 268.0, 259.0, 209.0, 18.0 ],
					"id" : "obj-41",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"bgcolor" : [ 1.0, 0.988235, 0.988235, 1.0 ],
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"patching_rect" : [ 539.0, 274.0, 145.0, 55.0 ],
					"name" : "ajm.seealso.maxpat",
					"args" : [ "js", "mxj" ],
					"id" : "obj-60",
					"numinlets" : 1,
					"numoutlets" : 0,
					"lockeddragscroll" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "thispatcher",
					"fontsize" : 11.1,
					"hidden" : 1,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 517.0, 376.0, 73.0, 20.0 ],
					"id" : "obj-17",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 2,
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "ajm.bring-to-front-listener ajm.ruby",
					"fontsize" : 11.1,
					"hidden" : 1,
					"outlettype" : [ "front" ],
					"patching_rect" : [ 517.0, 350.0, 213.0, 20.0 ],
					"id" : "obj-36",
					"fontname" : "Verdana",
					"numinlets" : 0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"patching_rect" : [ 539.0, 6.0, 138.0, 55.0 ],
					"name" : "ajm.helplinks.maxpat",
					"args" : [  ],
					"id" : "obj-48",
					"numinlets" : 0,
					"numoutlets" : 0,
					"lockeddragscroll" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p \"using files\"",
					"fontsize" : 11.0,
					"patching_rect" : [ 520.252258, 105.0, 87.0, 20.0 ],
					"id" : "obj-14",
					"fontname" : "Verdana",
					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 365.0, 44.0, 717.0, 363.0 ],
						"bglocked" : 0,
						"defrect" : [ 365.0, 44.0, 717.0, 363.0 ],
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
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 314.0, 93.0, 209.0, 18.0 ],
									"id" : "obj-44",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"bgcolor" : [ 1.0, 0.988235, 0.988235, 1.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print",
									"fontsize" : 11.0,
									"patching_rect" : [ 459.0, 250.0, 36.0, 20.0 ],
									"id" : "obj-42",
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
									"patching_rect" : [ 144.0, 92.0, 83.0, 20.0 ],
									"id" : "obj-39",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "\"Hello from ajm_scriptfile.rb\"",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 11.0, 67.0, 209.0, 18.0 ],
									"id" : "obj-40",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"bgcolor" : [ 1.0, 0.988235, 0.988235, 1.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "An easy way to develop scripts is with @file and @autowatch. And double click ajm.ruby to edit the file!",
									"linecount" : 2,
									"fontsize" : 11.0,
									"patching_rect" : [ 314.0, 29.0, 314.0, 33.0 ],
									"id" : "obj-3",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.ruby @file ajm_autowatch.rb @autowatch 1",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 314.0, 62.0, 310.0, 20.0 ],
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
									"text" : "mxj ajm.ruby @file ajm_scriptfile.rb",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 13.0, 37.0, 211.0, 20.0 ],
									"id" : "obj-11",
									"fontname" : "Verdana",
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess set",
									"fontsize" : 11.0,
									"hidden" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 289.0, 361.0, 83.0, 20.0 ],
									"id" : "obj-38",
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
									"patching_rect" : [ 282.0, 335.0, 179.0, 18.0 ],
									"id" : "obj-41",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"bgcolor" : [ 1.0, 0.988235, 0.988235, 1.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "file ajm_argv.rb",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 472.0, 200.0, 98.0, 18.0 ],
									"id" : "obj-4",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "file ajm_argv.rb 99 'oneword' \"two words\"",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 459.0, 176.0, 244.0, 18.0 ],
									"id" : "obj-5",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.ruby @file ajm_argv.rb :mute",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 459.0, 225.0, 225.0, 20.0 ],
									"id" : "obj-6",
									"fontname" : "Verdana",
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "if it's on the Max file path (see Options -> File Preferences) ...",
									"fontsize" : 11.0,
									"patching_rect" : [ 13.0, 244.0, 369.0, 20.0 ],
									"id" : "obj-12",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : ".. or just a filename,",
									"fontsize" : 11.0,
									"patching_rect" : [ 15.0, 222.0, 139.0, 20.0 ],
									"id" : "obj-13",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Load a file with an absolute path...",
									"fontsize" : 11.0,
									"patching_rect" : [ 10.0, 134.0, 202.0, 20.0 ],
									"id" : "obj-14",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "file /Users/username/path/to/script.rb",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 150.0, 160.0, 223.0, 18.0 ],
									"id" : "obj-17",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "file ajm_scriptfile.rb",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 204.0, 221.0, 122.0, 18.0 ],
									"id" : "obj-18",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "file",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 314.0, 278.0, 32.0, 18.0 ],
									"id" : "obj-19",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "opendialog",
									"fontsize" : 11.0,
									"outlettype" : [ "", "bang" ],
									"patching_rect" : [ 54.0, 157.0, 69.0, 20.0 ],
									"id" : "obj-20",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 16.0, 164.0, 27.0, 27.0 ],
									"id" : "obj-21",
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend file",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 54.0, 181.0, 76.0, 20.0 ],
									"id" : "obj-22",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : ".. or just the file message to browse to a file.",
									"fontsize" : 11.0,
									"patching_rect" : [ 10.0, 278.0, 268.0, 20.0 ],
									"id" : "obj-23",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "The @file attribute and 'file' message runs Ruby code from a file.",
									"fontface" : 1,
									"fontsize" : 12.0,
									"patching_rect" : [ 12.0, 2.0, 475.0, 21.0 ],
									"id" : "obj-25",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "or",
									"fontsize" : 11.0,
									"patching_rect" : [ 125.0, 161.0, 24.0, 20.0 ],
									"id" : "obj-26",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "@verbose prints when a file loads (in the Max window)",
									"linecount" : 2,
									"fontsize" : 11.0,
									"patching_rect" : [ 489.0, 326.0, 166.0, 33.0 ],
									"id" : "obj-28",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.ruby @verbose 1",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 383.0, 304.0, 158.0, 20.0 ],
									"id" : "obj-29",
									"fontname" : "Verdana",
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"patching_rect" : [ 11.0, 134.0, 374.0, 75.0 ],
									"border" : 1,
									"id" : "obj-30",
									"numinlets" : 1,
									"bgcolor" : [ 0.913725, 0.964706, 0.952941, 1.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"patching_rect" : [ 10.0, 217.0, 374.0, 50.0 ],
									"border" : 1,
									"id" : "obj-31",
									"numinlets" : 1,
									"bgcolor" : [ 0.92549, 0.92549, 0.992157, 1.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"patching_rect" : [ 10.0, 275.0, 372.0, 27.0 ],
									"border" : 1,
									"id" : "obj-32",
									"numinlets" : 1,
									"bgcolor" : [ 0.87451, 0.898039, 0.784314, 1.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Arguments:",
									"fontsize" : 11.0,
									"patching_rect" : [ 458.0, 155.0, 132.0, 20.0 ],
									"id" : "obj-34",
									"fontname" : "Verdana Bold",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [ 159.5, 197.0, 392.5, 197.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-44", 1 ],
									"hidden" : 0,
									"midpoints" : [ 323.5, 87.5, 513.5, 87.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-38", 0 ],
									"destination" : [ "obj-41", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-21", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [ 25.5, 195.0, 47.5, 195.0, 47.5, 153.0, 63.5, 153.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-41", 1 ],
									"hidden" : 0,
									"midpoints" : [ 392.5, 329.0, 451.5, 329.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [ 63.5, 204.0, 392.5, 204.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [ 323.5, 297.0, 392.5, 297.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-39", 0 ],
									"destination" : [ "obj-40", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-40", 1 ],
									"hidden" : 0,
									"midpoints" : [ 22.5, 65.0, 210.5, 65.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [ 481.5, 220.5, 468.5, 220.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-42", 0 ],
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
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [ 213.5, 242.0, 392.5, 242.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-39", 0 ],
									"destination" : [ "obj-44", 0 ],
									"hidden" : 1,
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
					"text" : "p \"receiving input from Max\"",
					"fontsize" : 11.0,
					"patching_rect" : [ 520.252258, 133.287354, 169.0, 20.0 ],
					"id" : "obj-15",
					"fontname" : "Verdana",
					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 557.0, 44.0, 696.0, 581.0 ],
						"bglocked" : 0,
						"defrect" : [ 557.0, 44.0, 696.0, 581.0 ],
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
									"text" : "Ruby methods",
									"fontface" : 1,
									"fontsize" : 13.0,
									"patching_rect" : [ 17.0, 252.0, 184.0, 22.0 ],
									"id" : "obj-51",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"presentation_rect" : [ 37.0, 252.0, 0.0, 0.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Max messages",
									"fontface" : 1,
									"fontsize" : 13.0,
									"patching_rect" : [ 23.0, 6.0, 184.0, 22.0 ],
									"id" : "obj-50",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"presentation_rect" : [ 35.0, 3.0, 0.0, 0.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "PI*r^2",
									"fontsize" : 11.0,
									"patching_rect" : [ 102.0, 111.0, 50.0, 20.0 ],
									"id" : "obj-46",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontsize" : 11.0,
									"outlettype" : [ "float", "bang" ],
									"patching_rect" : [ 37.0, 109.0, 50.0, 20.0 ],
									"id" : "obj-39",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "eval Math::PI * $1**2",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 37.0, 134.0, 135.0, 18.0 ],
									"id" : "obj-24",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"patching_rect" : [ 3.0, 243.0, 670.0, 4.0 ],
									"border" : 1,
									"bordercolor" : [ 0.082353, 0.431373, 0.203922, 1.0 ],
									"id" : "obj-22",
									"numinlets" : 1,
									"bgcolor" : [ 0.082353, 0.431373, 0.203922, 0.403922 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "list()",
									"fontface" : 1,
									"fontsize" : 12.0,
									"patching_rect" : [ 123.0, 279.0, 58.0, 21.0 ],
									"id" : "obj-18",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"presentation_rect" : [ 528.0, 150.0, 0.0, 0.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "inlet()",
									"fontface" : 1,
									"fontsize" : 12.0,
									"patching_rect" : [ 407.0, 289.0, 122.0, 21.0 ],
									"id" : "obj-17",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"presentation_rect" : [ 39.0, 303.0, 0.0, 0.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "eval out0 inlet()",
									"fontsize" : 11.595187,
									"outlettype" : [ "" ],
									"patching_rect" : [ 545.0, 411.0, 90.0, 18.0 ],
									"id" : "obj-14",
									"fontname" : "Arial",
									"numinlets" : 2,
									"presentation_rect" : [ 224.0, 352.0, 0.0, 0.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "list(*args) and bang() are evaluated in Ruby when a bang or list is received by an inlet.",
									"linecount" : 4,
									"fontsize" : 11.0,
									"patching_rect" : [ 73.0, 390.0, 142.0, 60.0 ],
									"id" : "obj-9",
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
									"patching_rect" : [ 105.0, 569.0, 83.0, 20.0 ],
									"id" : "obj-2",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "nil",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 46.0, 550.0, 242.0, 18.0 ],
									"id" : "obj-5",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"bgcolor" : [ 1.0, 0.988235, 0.988235, 1.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "list :a :b :c",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 124.0, 354.0, 72.0, 18.0 ],
									"id" : "obj-10",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "1 :a :b :c",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 124.0, 327.0, 63.0, 18.0 ],
									"id" : "obj-11",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 219.0, 363.0, 24.0, 24.0 ],
									"id" : "obj-12",
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "textedit",
									"text" : "def bang \r  \"bang\".reverse\rend \r\rdef list(*array)    \r  array.reverse\rend",
									"linecount" : 7,
									"fontsize" : 11.0,
									"outlettype" : [ "", "int", "", "" ],
									"patching_rect" : [ 219.0, 394.0, 136.0, 113.0 ],
									"tabmode" : 0,
									"readonly" : 1,
									"id" : "obj-13",
									"fontname" : "Geneva",
									"numinlets" : 1,
									"outputmode" : 1,
									"numoutlets" : 4
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "1 2 3 4 5",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 123.0, 300.0, 62.0, 18.0 ],
									"id" : "obj-15",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 12.0, 297.0, 34.0, 34.0 ],
									"id" : "obj-16",
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.ruby @evalout 0",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 46.0, 520.0, 152.0, 20.0 ],
									"id" : "obj-7",
									"fontname" : "Verdana",
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "bang()",
									"fontface" : 1,
									"fontsize" : 12.0,
									"patching_rect" : [ 12.0, 279.0, 63.0, 21.0 ],
									"id" : "obj-8",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "The default behavior passes through the bang or list",
									"linecount" : 3,
									"fontsize" : 11.0,
									"patching_rect" : [ 81.0, 452.0, 126.0, 47.0 ],
									"id" : "obj-19",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Max lists are messages that start with a number or the special list symbol",
									"linecount" : 3,
									"fontsize" : 11.0,
									"patching_rect" : [ 199.0, 307.0, 152.0, 47.0 ],
									"id" : "obj-20",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Redefine the methods like this:",
									"linecount" : 2,
									"fontsize" : 11.0,
									"patching_rect" : [ 243.0, 363.0, 108.0, 33.0 ],
									"id" : "obj-21",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "turns into:\n $object.method('blah')",
									"linecount" : 2,
									"fontsize" : 11.0,
									"patching_rect" : [ 503.0, 133.0, 156.0, 33.0 ],
									"id" : "obj-52",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "send $object method 'blah'",
									"fontsize" : 11.595187,
									"outlettype" : [ "" ],
									"patching_rect" : [ 489.0, 113.0, 148.0, 18.0 ],
									"id" : "obj-49",
									"fontname" : "Arial",
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Call a method on an object. The syntax is:\nsend object method [args]",
									"linecount" : 3,
									"fontsize" : 11.0,
									"patching_rect" : [ 488.0, 64.0, 168.0, 47.0 ],
									"id" : "obj-47",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "send",
									"fontface" : 1,
									"fontsize" : 12.0,
									"patching_rect" : [ 488.0, 41.0, 41.0, 21.0 ],
									"id" : "obj-48",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "this turns into the Ruby code:\nmy_method(123, another_method, 'text')",
									"linecount" : 2,
									"fontsize" : 11.0,
									"patching_rect" : [ 201.0, 118.0, 260.0, 33.0 ],
									"id" : "obj-44",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "call my_method 123 another_method 'text'",
									"fontsize" : 11.595187,
									"outlettype" : [ "" ],
									"patching_rect" : [ 190.0, 100.0, 228.0, 18.0 ],
									"id" : "obj-43",
									"fontname" : "Arial",
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "calls a method with the provided arguments, without the need to use commas",
									"linecount" : 2,
									"fontsize" : 11.0,
									"patching_rect" : [ 190.0, 64.0, 264.0, 33.0 ],
									"id" : "obj-40",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "call",
									"fontface" : 1,
									"fontsize" : 12.0,
									"patching_rect" : [ 190.0, 40.0, 41.0, 21.0 ],
									"id" : "obj-42",
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
									"patching_rect" : [ 301.0, 171.0, 83.0, 20.0 ],
									"id" : "obj-37",
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
									"patching_rect" : [ 62.0, 204.0, 358.0, 18.0 ],
									"id" : "obj-38",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"bgcolor" : [ 1.0, 0.988235, 0.988235, 1.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.ruby 2 @file ajm_call_send.rb @evalout 0",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 62.0, 170.0, 293.0, 20.0 ],
									"id" : "obj-35",
									"fontname" : "Verdana",
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "eval 'Hello World'",
									"fontsize" : 11.595187,
									"outlettype" : [ "" ],
									"patching_rect" : [ 22.0, 84.0, 99.0, 18.0 ],
									"id" : "obj-36",
									"fontname" : "Arial",
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "evaluates Ruby code",
									"fontsize" : 11.0,
									"patching_rect" : [ 22.0, 64.0, 125.0, 20.0 ],
									"id" : "obj-33",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "eval",
									"fontface" : 1,
									"fontsize" : 12.0,
									"patching_rect" : [ 22.0, 41.0, 41.0, 21.0 ],
									"id" : "obj-34",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "eval out0 inlet",
									"fontsize" : 11.595187,
									"outlettype" : [ "" ],
									"patching_rect" : [ 482.0, 376.0, 82.0, 18.0 ],
									"id" : "obj-31",
									"fontname" : "Arial",
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "the inlet() method returns the current inlet index",
									"linecount" : 2,
									"fontsize" : 11.0,
									"patching_rect" : [ 398.0, 313.0, 172.0, 33.0 ],
									"id" : "obj-26",
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
									"patching_rect" : [ 490.0, 492.0, 83.0, 20.0 ],
									"id" : "obj-32",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "2",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 399.0, 494.0, 85.0, 18.0 ],
									"id" : "obj-41",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"bgcolor" : [ 1.0, 0.988235, 0.988235, 1.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "The first argument to ajm.ruby (3 in this case) determines the number of inlets.",
									"linecount" : 3,
									"fontsize" : 11.0,
									"patching_rect" : [ 505.0, 475.0, 187.0, 47.0 ],
									"id" : "obj-6",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.ruby 3",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 404.0, 461.0, 96.0, 20.0 ],
									"id" : "obj-4",
									"fontname" : "Verdana",
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"numinlets" : 3,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "eval out0 inlet",
									"fontsize" : 11.595187,
									"outlettype" : [ "" ],
									"patching_rect" : [ 404.0, 346.0, 82.0, 18.0 ],
									"id" : "obj-3",
									"fontname" : "Arial",
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Multiple Inlets",
									"fontface" : 1,
									"fontsize" : 12.0,
									"patching_rect" : [ 508.0, 456.0, 122.0, 21.0 ],
									"id" : "obj-1",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-39", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [ 46.5, 160.0, 71.5, 160.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [ 21.5, 351.0, 55.5, 351.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-4", 2 ],
									"hidden" : 0,
									"midpoints" : [ 554.5, 438.0, 490.5, 438.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-41", 1 ],
									"hidden" : 0,
									"midpoints" : [ 413.5, 488.0, 474.5, 488.0 ]
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
									"source" : [ "obj-31", 0 ],
									"destination" : [ "obj-4", 1 ],
									"hidden" : 0,
									"midpoints" : [ 491.5, 416.0, 452.0, 416.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-49", 0 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [ 498.5, 160.0, 71.5, 160.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-43", 0 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [ 199.5, 160.5, 71.5, 160.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 0 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [ 31.5, 160.0, 71.5, 160.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-35", 0 ],
									"destination" : [ "obj-38", 1 ],
									"hidden" : 0,
									"midpoints" : [ 71.5, 197.0, 410.5, 197.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 0 ],
									"destination" : [ "obj-38", 0 ],
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
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-5", 1 ],
									"hidden" : 0,
									"midpoints" : [ 55.5, 544.0, 278.5, 544.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [ 228.5, 514.0, 55.5, 514.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [ 133.5, 348.0, 55.5, 348.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [ 132.5, 323.0, 55.5, 323.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [ 133.5, 375.0, 55.5, 375.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-13", 0 ],
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
					"maxclass" : "comment",
					"text" : "evaluate Ruby code",
					"fontsize" : 13.0,
					"patching_rect" : [ 130.0, 20.0, 137.0, 22.0 ],
					"id" : "obj-20",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "ajm.ruby",
					"fontsize" : 18.0,
					"patching_rect" : [ 17.0, 10.0, 78.0, 27.0 ],
					"id" : "obj-21",
					"fontname" : "Arial",
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Java External",
					"fontsize" : 11.0,
					"patching_rect" : [ 17.0, 34.0, 122.0, 20.0 ],
					"id" : "obj-22",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p \"sending output to Max\"",
					"fontsize" : 11.0,
					"patching_rect" : [ 520.252258, 159.574722, 155.0, 20.0 ],
					"id" : "obj-23",
					"fontname" : "Verdana",
					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 529.0, 53.0, 526.0, 457.0 ],
						"bglocked" : 0,
						"defrect" : [ 529.0, 53.0, 526.0, 457.0 ],
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
									"patching_rect" : [ 377.0, 422.0, 83.0, 20.0 ],
									"id" : "obj-37",
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
									"patching_rect" : [ 323.0, 429.0, 54.0, 18.0 ],
									"id" : "obj-36",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"bgcolor" : [ 1.0, 0.988235, 0.988235, 1.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "@evalout",
									"fontface" : 1,
									"fontsize" : 12.0,
									"patching_rect" : [ 320.0, 283.0, 131.0, 21.0 ],
									"id" : "obj-34",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"presentation_rect" : [ 456.0, 243.0, 0.0, 0.0 ],
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 454.0, 431.0, 50.0, 18.0 ],
									"id" : "obj-33",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"bgcolor" : [ 1.0, 0.988235, 0.988235, 1.0 ],
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "eval 3.times { out0 'not 3' }",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 317.0, 362.0, 167.0, 18.0 ],
									"id" : "obj-27",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.ruby 2 2 @evaloutlet 1",
									"fontsize" : 11.0,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 317.0, 393.0, 187.0, 20.0 ],
									"id" : "obj-30",
									"fontname" : "Verdana",
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"numinlets" : 2,
									"numoutlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "The final value of each evaluation is sent to the @evalout \n(which is disabled, -1, by default)",
									"linecount" : 3,
									"fontsize" : 11.0,
									"patching_rect" : [ 316.0, 308.0, 201.0, 47.0 ],
									"id" : "obj-31",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "the Max Window",
									"fontface" : 1,
									"fontsize" : 12.0,
									"patching_rect" : [ 9.0, 215.0, 131.0, 21.0 ],
									"id" : "obj-22",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "out0(), out1(), out2(), ... ",
									"fontface" : 1,
									"fontsize" : 12.0,
									"patching_rect" : [ 323.0, 15.0, 192.0, 21.0 ],
									"id" : "obj-29",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend eval",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 184.0, 125.0, 82.0, 20.0 ],
									"id" : "obj-26",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "outlet()",
									"fontface" : 1,
									"fontsize" : 12.0,
									"patching_rect" : [ 14.0, 11.0, 62.0, 21.0 ],
									"id" : "obj-25",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Send output to an outlet with outlet(outlexIndex, data, ...) ",
									"linecount" : 2,
									"fontsize" : 11.0,
									"patching_rect" : [ 13.0, 33.0, 220.0, 33.0 ],
									"id" : "obj-21",
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
									"patching_rect" : [ 7.0, 422.0, 86.0, 20.0 ],
									"id" : "obj-3",
									"fontname" : "Verdana",
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "5.times{puts 123}",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 19.0, 271.0, 115.0, 18.0 ],
									"id" : "obj-4",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "error() outputs error message to the Max Window.",
									"linecount" : 3,
									"fontsize" : 11.0,
									"patching_rect" : [ 123.0, 360.0, 121.0, 47.0 ],
									"id" : "obj-5",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "print() outputs text without the newline",
									"linecount" : 2,
									"fontsize" : 11.0,
									"patching_rect" : [ 139.0, 311.0, 133.0, 33.0 ],
									"id" : "obj-6",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "error 'ka-boom'",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 19.0, 359.0, 99.0, 18.0 ],
									"id" : "obj-8",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "5.times{print 123}",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 18.0, 313.0, 117.0, 18.0 ],
									"id" : "obj-11",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "puts 'Hello Max'",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 19.0, 245.0, 99.0, 18.0 ],
									"id" : "obj-12",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "puts() outputs text and a newline to the Max Window.",
									"linecount" : 3,
									"fontsize" : 11.0,
									"patching_rect" : [ 137.0, 246.0, 116.0, 47.0 ],
									"id" : "obj-19",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend eval",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 7.0, 390.0, 82.0, 20.0 ],
									"id" : "obj-23",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Shortcuts methods out0(), out1(), ..., out9() send their arguments to outlets 0 - 9:",
									"linecount" : 3,
									"fontsize" : 11.0,
									"patching_rect" : [ 320.0, 37.0, 169.0, 47.0 ],
									"id" : "obj-2",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print out2",
									"fontsize" : 11.0,
									"patching_rect" : [ 422.0, 216.0, 65.0, 20.0 ],
									"id" : "obj-7",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "eval out1 'here I am'",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 323.0, 87.0, 127.0, 18.0 ],
									"id" : "obj-9",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "for n in 0..2 do outlet(n\\,'where am I?') end",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 32.0, 95.0, 255.0, 18.0 ],
									"id" : "obj-13",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "outlet 1\\, 'something'",
									"fontsize" : 11.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 12.0, 70.0, 132.0, 18.0 ],
									"id" : "obj-14",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print out1",
									"fontsize" : 11.0,
									"patching_rect" : [ 353.0, 216.0, 65.0, 20.0 ],
									"id" : "obj-15",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print out0",
									"fontsize" : 11.0,
									"patching_rect" : [ 284.0, 216.0, 65.0, 20.0 ],
									"id" : "obj-16",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Multiple Outlets",
									"fontface" : 1,
									"fontsize" : 12.0,
									"patching_rect" : [ 299.0, 132.0, 134.0, 21.0 ],
									"id" : "obj-17",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "the second argument (3 in this case) specifices the number of outlets",
									"linecount" : 2,
									"fontsize" : 11.0,
									"patching_rect" : [ 298.0, 154.0, 223.0, 33.0 ],
									"id" : "obj-18",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj ajm.ruby 1 3",
									"fontsize" : 11.0,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 284.0, 190.0, 157.0, 20.0 ],
									"id" : "obj-20",
									"fontname" : "Verdana",
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"numinlets" : 1,
									"numoutlets" : 3
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-37", 0 ],
									"destination" : [ "obj-36", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 0 ],
									"destination" : [ "obj-33", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 1 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 2 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 0 ],
									"destination" : [ "obj-36", 1 ],
									"hidden" : 0,
									"midpoints" : [ 326.5, 420.0, 367.5, 420.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-30", 1 ],
									"destination" : [ "obj-33", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"midpoints" : [ 332.5, 119.5, 193.5, 119.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [ 193.5, 152.0, 293.5, 152.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"midpoints" : [ 41.5, 119.0, 193.5, 119.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"midpoints" : [ 21.5, 119.5, 193.5, 119.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [ 28.5, 291.0, 16.5, 291.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [ 28.5, 264.0, 16.5, 264.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [ 27.5, 337.0, 16.5, 337.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [ 28.5, 379.0, 16.5, 379.0 ]
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
					"maxclass" : "message",
					"text" : "/R.*R/.match 'Regular expRessions'",
					"fontsize" : 11.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 281.0, 173.0, 209.0, 18.0 ],
					"id" : "obj-27",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "5 - 6/4.0",
					"fontsize" : 11.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 391.0, 91.0, 60.0, 18.0 ],
					"id" : "obj-28",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "'Hello'.reverse * 5",
					"fontsize" : 11.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 282.0, 146.0, 115.0, 18.0 ],
					"id" : "obj-29",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "(1..10).map{|i| i*i }",
					"fontsize" : 11.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 282.0, 120.0, 123.0, 18.0 ],
					"id" : "obj-30",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "5 + 2*3",
					"fontsize" : 11.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 319.0, 91.0, 63.0, 18.0 ],
					"id" : "obj-31",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Run code from files...",
					"fontsize" : 11.0,
					"patching_rect" : [ 15.0, 66.0, 138.0, 20.0 ],
					"id" : "obj-33",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend eval out0",
					"fontsize" : 11.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 269.0, 205.0, 112.0, 20.0 ],
					"id" : "obj-37",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"angle" : 270.0,
					"patching_rect" : [ 10.0, 11.0, 267.0, 42.0 ],
					"mode" : 1,
					"rounded" : 12,
					"grad1" : [ 0.835294, 1.0, 0.960784, 1.0 ],
					"id" : "obj-69",
					"grad2" : [ 0.270588, 0.658824, 0.541176, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"angle" : 270.0,
					"patching_rect" : [ 9.0, 10.0, 271.0, 46.0 ],
					"mode" : 1,
					"rounded" : 16,
					"grad1" : [ 0.482353, 0.482353, 0.482353, 1.0 ],
					"id" : "obj-70",
					"grad2" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 513.0, 76.0, 182.0, 111.0 ],
					"border" : 1,
					"id" : "obj-50",
					"numinlets" : 1,
					"bgcolor" : [ 0.913725, 0.964706, 0.952941, 1.0 ],
					"numoutlets" : 0
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 1,
					"midpoints" : [ 412.5, 401.0, 514.0, 401.0, 514.0, 286.0, 389.5, 286.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 1,
					"midpoints" : [ 255.5, 369.0, 412.5, 369.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 0 ],
					"destination" : [ "obj-51", 1 ],
					"hidden" : 0,
					"midpoints" : [ 22.5, 255.0, 156.5, 255.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 0 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 0 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 0,
					"midpoints" : [ 34.5, 178.5, 22.5, 178.5 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-53", 0 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 0,
					"midpoints" : [ 52.5, 190.0, 22.5, 190.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 1,
					"midpoints" : [ 28.5, 399.0, 14.0, 399.0, 14.0, 298.0, 27.5, 298.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-41", 1 ],
					"hidden" : 0,
					"midpoints" : [ 278.5, 253.0, 467.5, 253.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [ 291.5, 167.0, 278.5, 167.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [ 291.5, 141.0, 278.5, 141.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [ 328.5, 114.0, 278.5, 114.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [ 290.5, 197.0, 278.5, 197.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [ 400.5, 114.0, 278.5, 114.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 0 ],
					"destination" : [ "obj-51", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 1,
					"midpoints" : [ 550.5, 227.0, 688.5, 227.0 ]
				}

			}
 ]
	}

}
