{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 4.0, 51.0, 726.0, 356.0 ],
		"bglocked" : 0,
		"defrect" : [ 4.0, 51.0, 726.0, 356.0 ],
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
					"text" : "p \"about JRuby for Max\"",
					"id" : "obj-5",
					"fontname" : "Verdana",
					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
					"fontsize" : 11.0,
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 541.0, 8.574722, 146.0, 20.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 381.0, 57.0, 734.0, 431.0 ],
						"bgcolor" : [ 0.45098, 0.556863, 0.607843, 1.0 ],
						"bglocked" : 0,
						"defrect" : [ 381.0, 57.0, 734.0, 431.0 ],
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
									"maxclass" : "textbutton",
									"presentation" : 1,
									"texton" : "Stop",
									"id" : "obj-49",
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"fontname" : "Arial",
									"outlettype" : [ "", "", "int" ],
									"rounded" : 20.0,
									"fontsize" : 12.0,
									"presentation_rect" : [ 551.0, 103.0, 79.0, 17.0 ],
									"numinlets" : 1,
									"bgovercolor" : [ 0.784314, 0.909804, 0.917647, 1.0 ],
									"border" : 1,
									"numoutlets" : 3,
									"text" : "http://compusition.com",
									"bgcolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
									"patching_rect" : [ 433.0, 85.0, 134.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.",
									"linecount" : 2,
									"id" : "obj-13",
									"fontname" : "Verdana",
									"fontsize" : 11.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 37.0, 248.0, 620.0, 33.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.",
									"linecount" : 2,
									"id" : "obj-14",
									"fontname" : "Verdana",
									"fontsize" : 11.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 37.0, 206.0, 655.0, 33.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "bgcolor 115 142 155",
									"id" : "obj-15",
									"fontname" : "Verdana",
									"fontsize" : 11.0,
									"hidden" : 1,
									"numinlets" : 4,
									"numoutlets" : 0,
									"patching_rect" : [ 192.0, 401.0, 126.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Redistribution and use of these patches and objects in source and binary forms, with or without modification, are permitted provided that the following conditions are met:",
									"linecount" : 2,
									"id" : "obj-16",
									"fontname" : "Verdana",
									"fontsize" : 11.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 37.0, 172.0, 544.0, 33.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Copyright (c) 2008-2011, Adam Murray (adam@compusition.com). All rights reserved.",
									"id" : "obj-17",
									"fontname" : "Verdana",
									"fontsize" : 11.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 37.0, 150.0, 518.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Legal",
									"id" : "obj-29",
									"fontname" : "Verdana",
									"fontsize" : 11.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 44.0, 126.0, 44.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Developed by: Adam J. Murray",
									"id" : "obj-32",
									"fontname" : "Verdana",
									"fontsize" : 11.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 121.0, 22.0, 256.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b",
									"id" : "obj-34",
									"fontname" : "Verdana",
									"outlettype" : [ "bang" ],
									"fontsize" : 11.0,
									"hidden" : 1,
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 412.0, 29.0, 24.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : ";\rmax launchbrowser http://www.compusition.com",
									"linecount" : 2,
									"id" : "obj-35",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 11.0,
									"hidden" : 1,
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 413.0, 50.0, 287.0, 31.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Built: @@BUILD_DATE",
									"id" : "obj-36",
									"fontname" : "Verdana",
									"fontsize" : 11.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 121.0, 65.0, 234.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Version: @@VERSION",
									"id" : "obj-37",
									"fontname" : "Verdana",
									"fontsize" : 11.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 121.0, 44.0, 231.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "about JRuby for Max",
									"linecount" : 3,
									"id" : "obj-38",
									"fontname" : "Arial",
									"fontsize" : 18.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 35.0, 32.0, 83.0, 69.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "The latest version and other computer music info is at:",
									"id" : "obj-39",
									"fontname" : "Verdana",
									"fontsize" : 11.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 121.0, 87.0, 317.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS \"AS IS\" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES, LOSS OF USE, DATA, OR PROFITS, OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.",
									"linecount" : 8,
									"id" : "obj-40",
									"fontname" : "Verdana",
									"fontsize" : 11.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 37.0, 283.0, 658.0, 113.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"id" : "obj-41",
									"background" : 1,
									"rounded" : 7,
									"shadow" : 3,
									"numinlets" : 1,
									"border" : 1,
									"numoutlets" : 0,
									"bgcolor" : [ 0.729412, 0.890196, 0.815686, 1.0 ],
									"patching_rect" : [ 25.0, 19.0, 86.0, 92.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"id" : "obj-42",
									"background" : 1,
									"rounded" : 7,
									"shadow" : 3,
									"numinlets" : 1,
									"border" : 1,
									"numoutlets" : 0,
									"bgcolor" : [ 0.729412, 0.811765, 0.890196, 1.0 ],
									"patching_rect" : [ 25.0, 124.0, 683.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"id" : "obj-47",
									"background" : 1,
									"rounded" : 12,
									"shadow" : 3,
									"numinlets" : 1,
									"border" : 1,
									"numoutlets" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"patching_rect" : [ 99.0, 19.0, 608.0, 92.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"id" : "obj-48",
									"background" : 1,
									"rounded" : 12,
									"shadow" : 3,
									"numinlets" : 1,
									"border" : 1,
									"numoutlets" : 0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"patching_rect" : [ 25.0, 139.0, 683.0, 269.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-49", 0 ],
									"destination" : [ "obj-34", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-34", 0 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Verdana",
						"default_fontsize" : 11.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 11.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"texton" : "Stop",
					"id" : "obj-12",
					"bordercolor" : [ 0.156863, 0.8, 0.54902, 1.0 ],
					"fontname" : "Arial",
					"outlettype" : [ "", "", "int" ],
					"rounded" : 8.0,
					"fontsize" : 12.0,
					"numinlets" : 1,
					"bgovercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"borderoncolor" : [ 0.156863, 0.8, 0.54902, 1.0 ],
					"border" : 3,
					"numoutlets" : 3,
					"text" : "Advanced Topics",
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 541.0, 204.0, 132.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "help jruby.advanced",
					"id" : "obj-9",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 11.1,
					"hidden" : 1,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 679.0, 270.0, 123.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"id" : "obj-11",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 11.1,
					"hidden" : 1,
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 679.0, 297.0, 56.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "..or from Max messages.",
					"id" : "obj-4",
					"fontname" : "Verdana",
					"fontsize" : 11.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 290.0, 66.0, 149.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "(and Ruby 1.9.2dev)",
					"id" : "obj-3",
					"fontname" : "Verdana",
					"fontsize" : 11.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 380.0, 309.0, 130.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set (and Ruby $2)",
					"id" : "obj-2",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 11.0,
					"hidden" : 1,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 403.0, 374.0, 111.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "mxj jruby @file jruby_version.rb @ruby_version 1.9",
					"linecount" : 2,
					"id" : "obj-1",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 11.1,
					"hidden" : 1,
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 246.0, 332.0, 208.0, 33.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set Powered by JRuby $1\\, a pure-Java interpreter for Ruby $2",
					"id" : "obj-10",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 11.0,
					"hidden" : 1,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 19.0, 375.0, 379.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "mxj jruby @file jruby_version.rb",
					"id" : "obj-6",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 11.1,
					"hidden" : 1,
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 20.0, 333.0, 214.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Powered by JRuby 1.5.5, a pure-Java interpreter for Ruby 1.8.7",
					"id" : "obj-34",
					"fontname" : "Verdana",
					"fontsize" : 11.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 18.0, 309.0, 407.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p \"learning resources\"",
					"id" : "obj-52",
					"fontname" : "Verdana",
					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
					"fontsize" : 11.0,
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 541.0, 232.574722, 133.0, 20.0 ],
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
									"id" : "obj-12",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 11.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 274.0, 152.0, 292.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "which has a (somewhat outdated) first edition online for free:",
									"linecount" : 2,
									"id" : "obj-10",
									"fontname" : "Verdana",
									"fontsize" : 11.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 80.0, 135.0, 217.0, 33.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "http://www.pragprog.com/titles/ruby/programming-ruby",
									"id" : "obj-9",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 11.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 274.0, 109.0, 335.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "One of the best books for learning Ruby: ",
									"id" : "obj-4",
									"fontname" : "Verdana",
									"fontsize" : 11.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 40.0, 107.0, 240.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Combine the power of Java and Ruby:",
									"linecount" : 2,
									"id" : "obj-2",
									"fontname" : "Verdana",
									"fontsize" : 11.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 75.0, 215.0, 123.0, 33.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "http://kenai.com/projects/jruby/pages/CallingJavaFromJRuby",
									"id" : "obj-1",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 11.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 196.0, 226.0, 353.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "and JRuby:",
									"id" : "obj-5",
									"fontname" : "Verdana",
									"fontsize" : 11.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 382.0, 35.0, 74.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : ";\rmax launchbrowser $1",
									"linecount" : 2,
									"id" : "obj-7",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 11.0,
									"hidden" : 1,
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 308.0, 246.0, 137.0, 31.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "http://www.ruby-lang.org",
									"id" : "obj-8",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 11.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 202.0, 35.0, 162.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "http://jruby.codehaus.org",
									"id" : "obj-11",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 11.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 450.0, 35.0, 157.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Click to learn more about Ruby:",
									"id" : "obj-35",
									"fontname" : "Verdana",
									"fontsize" : 11.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 19.0, 35.0, 188.0, 20.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
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
									"source" : [ "obj-1", 0 ],
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
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Verdana",
						"default_fontsize" : 11.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 11.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "The Basics",
					"id" : "obj-46",
					"fontname" : "Verdana Bold",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 519.0, 82.0, 127.0, 21.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "double click ajm.ruby to open the @file in the default editor for .rb files",
					"linecount" : 2,
					"id" : "obj-63",
					"fontname" : "Verdana",
					"fontsize" : 11.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 40.0, 198.0, 215.0, 33.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "eval custom_method()",
					"id" : "obj-57",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 11.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 13.0, 95.0, 136.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "1 'a' \"some text\"",
					"id" : "obj-55",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 11.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 25.0, 120.0, 113.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"id" : "obj-53",
					"outlettype" : [ "bang" ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 43.0, 143.0, 26.0, 26.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess set",
					"id" : "obj-49",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 11.0,
					"hidden" : 1,
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 0.0, 207.0, 83.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\"check the Max window\"",
					"id" : "obj-51",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 11.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"bgcolor" : [ 1.0, 0.988235, 0.988235, 1.0 ],
					"patching_rect" : [ 11.0, 260.0, 155.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "mxj jruby @file jruby_file_example.rb",
					"id" : "obj-45",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"fontsize" : 11.0,
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 13.0, 229.0, 235.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "mxj jruby",
					"id" : "obj-38",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
					"fontsize" : 11.0,
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 269.0, 230.0, 86.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess set",
					"id" : "obj-32",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 11.0,
					"hidden" : 1,
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 364.0, 230.0, 83.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "\"Regular expR\"",
					"id" : "obj-41",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 11.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"bgcolor" : [ 1.0, 0.988235, 0.988235, 1.0 ],
					"patching_rect" : [ 268.0, 259.0, 209.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"id" : "obj-60",
					"name" : "jruby.seealso.maxpat",
					"args" : [ "js", "mxj" ],
					"numinlets" : 1,
					"lockeddragscroll" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 539.0, 274.0, 145.0, 55.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p \"using files\"",
					"id" : "obj-14",
					"fontname" : "Verdana",
					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
					"fontsize" : 11.0,
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 520.252258, 105.0, 87.0, 20.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 365.0, 44.0, 720.0, 393.0 ],
						"bglocked" : 0,
						"defrect" : [ 365.0, 44.0, 720.0, 393.0 ],
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
									"id" : "obj-44",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 11.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"bgcolor" : [ 1.0, 0.988235, 0.988235, 1.0 ],
									"patching_rect" : [ 314.0, 93.0, 209.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print",
									"id" : "obj-42",
									"fontname" : "Verdana",
									"fontsize" : 11.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 459.0, 250.0, 36.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess set",
									"id" : "obj-39",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 11.0,
									"hidden" : 1,
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 144.0, 92.0, 83.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "\"Hello from ajm_scriptfile.rb\"",
									"id" : "obj-40",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 11.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"bgcolor" : [ 1.0, 0.988235, 0.988235, 1.0 ],
									"patching_rect" : [ 11.0, 67.0, 209.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "An easy way to develop scripts is with @file and @autowatch. And double click ajm.ruby to edit the file!",
									"linecount" : 2,
									"id" : "obj-3",
									"fontname" : "Verdana",
									"fontsize" : 11.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 314.0, 29.0, 314.0, 33.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj jruby @file jruby_autowatch.rb @autowatch 1",
									"id" : "obj-8",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"fontsize" : 11.0,
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 314.0, 62.0, 310.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj jruby @file jruby_scriptfile.rb",
									"id" : "obj-11",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"fontsize" : 11.0,
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 13.0, 37.0, 211.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess set",
									"id" : "obj-38",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 11.0,
									"hidden" : 1,
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 289.0, 377.0, 83.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"id" : "obj-41",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 11.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"bgcolor" : [ 1.0, 0.988235, 0.988235, 1.0 ],
									"patching_rect" : [ 282.0, 351.0, 179.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "file jruby_argv.rb",
									"id" : "obj-4",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 11.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 472.0, 200.0, 106.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "file jruby_argv.rb 99 'oneword' \"two words\"",
									"id" : "obj-5",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 11.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 459.0, 176.0, 252.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj jruby @file jruby_argv.rb :mute",
									"id" : "obj-6",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"fontsize" : 11.0,
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 459.0, 225.0, 225.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "if it's in the same folder as the patch or \non the Max file path (see Options -> File Preferences) ...",
									"linecount" : 2,
									"id" : "obj-12",
									"fontname" : "Verdana",
									"fontsize" : 11.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 13.0, 244.0, 463.0, 33.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : ".. or just a filename,",
									"id" : "obj-13",
									"fontname" : "Verdana",
									"fontsize" : 11.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 15.0, 222.0, 139.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Load a file with an absolute path...",
									"id" : "obj-14",
									"fontname" : "Verdana",
									"fontsize" : 11.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 10.0, 134.0, 202.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "file /Users/username/path/to/script.rb",
									"id" : "obj-17",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 11.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 150.0, 160.0, 223.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "file jruby_scriptfile.rb",
									"id" : "obj-18",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 11.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 204.0, 221.0, 129.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "file",
									"id" : "obj-19",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 11.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 314.0, 294.0, 32.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "opendialog",
									"id" : "obj-20",
									"fontname" : "Verdana",
									"outlettype" : [ "", "bang" ],
									"fontsize" : 11.0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"patching_rect" : [ 54.0, 157.0, 69.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"id" : "obj-21",
									"outlettype" : [ "bang" ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 16.0, 164.0, 27.0, 27.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend file",
									"id" : "obj-22",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 11.0,
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 54.0, 181.0, 76.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : ".. or just the file message to browse to a file.",
									"id" : "obj-23",
									"fontname" : "Verdana",
									"fontsize" : 11.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 10.0, 294.0, 268.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "The @file attribute and 'file' message runs Ruby code from a file.",
									"id" : "obj-25",
									"fontname" : "Verdana",
									"fontface" : 1,
									"fontsize" : 12.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 12.0, 2.0, 475.0, 21.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "or",
									"id" : "obj-26",
									"fontname" : "Verdana",
									"fontsize" : 11.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 125.0, 161.0, 24.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "@verbose prints when a file loads (in the Max window)",
									"linecount" : 2,
									"id" : "obj-28",
									"fontname" : "Verdana",
									"fontsize" : 11.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 489.0, 342.0, 166.0, 33.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj jruby @verbose 1",
									"id" : "obj-29",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"fontsize" : 11.0,
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 383.0, 320.0, 158.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"id" : "obj-30",
									"numinlets" : 1,
									"border" : 1,
									"numoutlets" : 0,
									"bgcolor" : [ 0.913725, 0.964706, 0.952941, 1.0 ],
									"patching_rect" : [ 11.0, 134.0, 374.0, 75.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"id" : "obj-31",
									"numinlets" : 1,
									"border" : 1,
									"numoutlets" : 0,
									"bgcolor" : [ 0.92549, 0.92549, 0.992157, 1.0 ],
									"patching_rect" : [ 10.0, 217.0, 374.0, 67.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"id" : "obj-32",
									"numinlets" : 1,
									"border" : 1,
									"numoutlets" : 0,
									"bgcolor" : [ 0.87451, 0.898039, 0.784314, 1.0 ],
									"patching_rect" : [ 10.0, 291.0, 372.0, 27.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Arguments:",
									"id" : "obj-34",
									"fontname" : "Verdana Bold",
									"fontsize" : 11.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 458.0, 155.0, 132.0, 20.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-39", 0 ],
									"destination" : [ "obj-44", 0 ],
									"hidden" : 1,
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
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-22", 0 ],
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
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
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
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-40", 1 ],
									"hidden" : 0,
									"midpoints" : [ 22.5, 65.0, 210.5, 65.0 ]
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
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [ 323.5, 313.0, 392.5, 313.0 ]
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
									"source" : [ "obj-29", 0 ],
									"destination" : [ "obj-41", 1 ],
									"hidden" : 0,
									"midpoints" : [ 392.5, 345.0, 451.5, 345.0 ]
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
									"source" : [ "obj-38", 0 ],
									"destination" : [ "obj-41", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
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
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [ 159.5, 197.0, 392.5, 197.0 ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Verdana",
						"default_fontsize" : 11.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 11.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p \"receiving input from Max\"",
					"id" : "obj-15",
					"fontname" : "Verdana",
					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
					"fontsize" : 11.0,
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 520.252258, 133.287354, 169.0, 20.0 ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 252.0, 54.0, 680.0, 590.0 ],
						"bglocked" : 0,
						"defrect" : [ 252.0, 54.0, 680.0, 590.0 ],
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
									"text" : "(double click to view the file)",
									"linecount" : 2,
									"id" : "obj-30",
									"fontname" : "Verdana",
									"fontsize" : 11.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 554.0, 454.0, 97.0, 33.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "2 3 4 5",
									"id" : "obj-27",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 11.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 540.0, 423.0, 50.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "2 3 4 5",
									"id" : "obj-26",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 11.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 484.0, 423.0, 50.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "2 3 4 5",
									"id" : "obj-25",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 11.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 427.0, 423.0, 50.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "in0(), in1(), ..., in9()",
									"id" : "obj-29",
									"fontname" : "Verdana",
									"fontface" : 1,
									"fontsize" : 12.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 391.0, 365.0, 169.0, 21.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "in0(*params), in1(*params), ..., in9(*params) handle input for a single inlet",
									"linecount" : 2,
									"id" : "obj-20",
									"fontname" : "Verdana",
									"fontsize" : 11.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 391.0, 387.0, 272.0, 33.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Ruby methods",
									"id" : "obj-51",
									"fontname" : "Verdana",
									"fontface" : 1,
									"fontsize" : 13.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 17.0, 252.0, 184.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Max messages",
									"id" : "obj-50",
									"fontname" : "Verdana",
									"fontface" : 1,
									"fontsize" : 13.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 23.0, 6.0, 184.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "PI*r^2",
									"id" : "obj-46",
									"fontname" : "Verdana",
									"fontsize" : 11.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 102.0, 111.0, 50.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"id" : "obj-39",
									"fontname" : "Verdana",
									"outlettype" : [ "float", "bang" ],
									"fontsize" : 11.0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"patching_rect" : [ 37.0, 109.0, 50.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "eval Math::PI * $1**2",
									"id" : "obj-24",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 11.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 37.0, 134.0, 135.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"id" : "obj-22",
									"bordercolor" : [ 0.082353, 0.431373, 0.203922, 1.0 ],
									"numinlets" : 1,
									"border" : 1,
									"numoutlets" : 0,
									"bgcolor" : [ 0.082353, 0.431373, 0.203922, 0.403922 ],
									"patching_rect" : [ 3.0, 243.0, 669.0, 4.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "inlet(index, *params)",
									"id" : "obj-18",
									"fontname" : "Verdana",
									"fontface" : 1,
									"fontsize" : 12.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 82.0, 279.0, 162.0, 21.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "bang() and inlet(inlet_index, *params) are evaluated in Ruby when a bang or list is received by an inlet.",
									"linecount" : 5,
									"id" : "obj-9",
									"fontname" : "Verdana",
									"fontsize" : 11.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 29.0, 381.0, 167.0, 73.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess set",
									"id" : "obj-2",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 11.0,
									"hidden" : 1,
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 77.0, 569.0, 83.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"id" : "obj-5",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 11.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"bgcolor" : [ 1.0, 0.988235, 0.988235, 1.0 ],
									"patching_rect" : [ 18.0, 550.0, 242.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "list :a :b :c",
									"id" : "obj-10",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 11.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 86.0, 354.0, 72.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "1 :a :b :c",
									"id" : "obj-11",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 11.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 86.0, 327.0, 63.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"id" : "obj-12",
									"outlettype" : [ "bang" ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 199.0, 314.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "textedit",
									"text" : "def bang \r  \"bang\".reverse\rend \r\rdef inlet(inlet_index, *params)    \r  params.reverse\rend",
									"linecount" : 7,
									"id" : "obj-13",
									"fontname" : "Geneva",
									"outlettype" : [ "", "int", "", "" ],
									"readonly" : 1,
									"fontsize" : 11.0,
									"tabmode" : 0,
									"outputmode" : 1,
									"numinlets" : 1,
									"numoutlets" : 4,
									"patching_rect" : [ 199.0, 345.0, 173.0, 113.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "1 2 3 4 5",
									"id" : "obj-15",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 11.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 85.0, 300.0, 62.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"id" : "obj-16",
									"outlettype" : [ "bang" ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 12.0, 297.0, 34.0, 34.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj jruby @evalout 0",
									"id" : "obj-7",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"fontsize" : 11.0,
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 18.0, 520.0, 152.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "bang()",
									"id" : "obj-8",
									"fontname" : "Verdana",
									"fontface" : 1,
									"fontsize" : 12.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 12.0, 279.0, 63.0, 21.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "The default behavior passes through the bang or list",
									"linecount" : 3,
									"id" : "obj-19",
									"fontname" : "Verdana",
									"fontsize" : 11.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 30.0, 462.0, 126.0, 47.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Redefine the methods like this:",
									"linecount" : 2,
									"id" : "obj-21",
									"fontname" : "Verdana",
									"fontsize" : 11.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 223.0, 314.0, 108.0, 33.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "turns into:\n $object.method('blah')",
									"linecount" : 2,
									"id" : "obj-52",
									"fontname" : "Verdana",
									"fontsize" : 11.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 514.0, 133.0, 156.0, 33.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "send $object method 'blah'",
									"id" : "obj-49",
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"fontsize" : 11.595187,
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 500.0, 113.0, 148.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Call a method on an object. The syntax is:\nsend object method [args]",
									"linecount" : 3,
									"id" : "obj-47",
									"fontname" : "Verdana",
									"fontsize" : 11.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 499.0, 64.0, 168.0, 47.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "send",
									"id" : "obj-48",
									"fontname" : "Verdana",
									"fontface" : 1,
									"fontsize" : 12.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 499.0, 41.0, 41.0, 21.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "this turns into the Ruby code:\nmy_method(123, another_method, 'text')",
									"linecount" : 2,
									"id" : "obj-44",
									"fontname" : "Verdana",
									"fontsize" : 11.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 212.0, 118.0, 260.0, 33.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "call my_method 123 another_method 'text'",
									"id" : "obj-43",
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"fontsize" : 11.595187,
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 201.0, 100.0, 228.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "calls a method with the provided arguments, without the need to use commas",
									"linecount" : 2,
									"id" : "obj-40",
									"fontname" : "Verdana",
									"fontsize" : 11.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 201.0, 64.0, 264.0, 33.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "call",
									"id" : "obj-42",
									"fontname" : "Verdana",
									"fontface" : 1,
									"fontsize" : 12.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 201.0, 40.0, 41.0, 21.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess set",
									"id" : "obj-37",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 11.0,
									"hidden" : 1,
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 301.0, 171.0, 83.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"id" : "obj-38",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 11.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"bgcolor" : [ 1.0, 0.988235, 0.988235, 1.0 ],
									"patching_rect" : [ 62.0, 204.0, 358.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj jruby 2 @file jruby_call_send.rb @evalout 0",
									"id" : "obj-35",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"fontsize" : 11.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 62.0, 170.0, 293.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "eval 'Hello World'",
									"id" : "obj-36",
									"fontname" : "Arial",
									"outlettype" : [ "" ],
									"fontsize" : 11.595187,
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 22.0, 84.0, 99.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "evaluates Ruby code",
									"id" : "obj-33",
									"fontname" : "Verdana",
									"fontsize" : 11.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 22.0, 64.0, 125.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "eval",
									"id" : "obj-34",
									"fontname" : "Verdana",
									"fontface" : 1,
									"fontsize" : 12.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 22.0, 41.0, 41.0, 21.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess set",
									"id" : "obj-32",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 11.0,
									"hidden" : 1,
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 356.0, 471.0, 83.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"id" : "obj-41",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 11.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"bgcolor" : [ 1.0, 0.988235, 0.988235, 1.0 ],
									"patching_rect" : [ 368.0, 496.0, 85.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "The first argument to ajm.ruby (3 in this case) determines the number of inlets.",
									"linecount" : 3,
									"id" : "obj-6",
									"fontname" : "Verdana",
									"fontsize" : 11.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 459.0, 511.0, 187.0, 47.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj jruby 3 @file jruby_inlets.rb",
									"linecount" : 2,
									"id" : "obj-4",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"fontsize" : 11.0,
									"numinlets" : 3,
									"numoutlets" : 1,
									"patching_rect" : [ 434.0, 453.0, 119.0, 33.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Multiple Inlets",
									"id" : "obj-1",
									"fontname" : "Verdana",
									"fontface" : 1,
									"fontsize" : 12.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 458.0, 493.0, 122.0, 21.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
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
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-4", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-27", 0 ],
									"destination" : [ "obj-4", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [ 94.5, 322.0, 63.0, 322.0, 63.0, 339.0, 27.5, 339.0 ]
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
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [ 95.5, 375.0, 27.5, 375.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [ 95.5, 348.0, 27.5, 348.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [ 208.5, 514.0, 27.5, 514.0 ]
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
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-5", 1 ],
									"hidden" : 0,
									"midpoints" : [ 27.5, 544.0, 250.5, 544.0 ]
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
									"source" : [ "obj-37", 0 ],
									"destination" : [ "obj-38", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
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
									"source" : [ "obj-36", 0 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [ 31.5, 160.0, 71.5, 160.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-43", 0 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [ 210.5, 160.5, 71.5, 160.5 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-49", 0 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [ 509.5, 160.0, 71.5, 160.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [ 21.5, 351.0, 27.5, 351.0 ]
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
									"source" : [ "obj-39", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Verdana",
						"default_fontsize" : 11.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 11.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "evaluate Ruby code",
					"id" : "obj-20",
					"fontname" : "Verdana",
					"fontsize" : 13.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 130.0, 20.0, 137.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jruby",
					"id" : "obj-21",
					"fontname" : "Arial",
					"fontsize" : 18.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 17.0, 10.0, 78.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Java External",
					"id" : "obj-22",
					"fontname" : "Verdana",
					"fontsize" : 11.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 17.0, 34.0, 122.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p \"sending output to Max\"",
					"id" : "obj-23",
					"fontname" : "Verdana",
					"color" : [ 0.156863, 0.8, 0.54902, 1.0 ],
					"fontsize" : 11.0,
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 520.252258, 159.574722, 155.0, 20.0 ],
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
									"id" : "obj-37",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 11.0,
									"hidden" : 1,
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 377.0, 422.0, 83.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"id" : "obj-36",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 11.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"bgcolor" : [ 1.0, 0.988235, 0.988235, 1.0 ],
									"patching_rect" : [ 323.0, 429.0, 54.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "@evalout",
									"id" : "obj-34",
									"fontname" : "Verdana",
									"fontface" : 1,
									"fontsize" : 12.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 320.0, 283.0, 131.0, 21.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"id" : "obj-33",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 11.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"bgcolor" : [ 1.0, 0.988235, 0.988235, 1.0 ],
									"patching_rect" : [ 454.0, 431.0, 50.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "eval 3.times { out0 'not 3' }",
									"id" : "obj-27",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 11.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 317.0, 362.0, 167.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj jruby 2 2 @evaloutlet 1",
									"id" : "obj-30",
									"fontname" : "Verdana",
									"outlettype" : [ "", "" ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"fontsize" : 11.0,
									"numinlets" : 2,
									"numoutlets" : 2,
									"patching_rect" : [ 317.0, 393.0, 187.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "The final value of each evaluation is sent to the @evalout \n(which is -1 (disabled) by default)",
									"linecount" : 3,
									"id" : "obj-31",
									"fontname" : "Verdana",
									"fontsize" : 11.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 316.0, 308.0, 201.0, 47.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "the Max Window",
									"id" : "obj-22",
									"fontname" : "Verdana",
									"fontface" : 1,
									"fontsize" : 12.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 9.0, 215.0, 131.0, 21.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "out0(), out1(), ..., out9()",
									"id" : "obj-29",
									"fontname" : "Verdana",
									"fontface" : 1,
									"fontsize" : 12.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 323.0, 15.0, 182.0, 21.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend eval",
									"id" : "obj-26",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 11.0,
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 184.0, 125.0, 82.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "outlet()",
									"id" : "obj-25",
									"fontname" : "Verdana",
									"fontface" : 1,
									"fontsize" : 12.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 14.0, 11.0, 62.0, 21.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Send output to an outlet with outlet(outlexIndex, data, ...) ",
									"linecount" : 2,
									"id" : "obj-21",
									"fontname" : "Verdana",
									"fontsize" : 11.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 13.0, 33.0, 220.0, 33.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj jruby",
									"id" : "obj-3",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"fontsize" : 11.0,
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 7.0, 422.0, 86.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "5.times{puts 123}",
									"id" : "obj-4",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 11.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 19.0, 271.0, 115.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "error() outputs error message to the Max Window.",
									"linecount" : 3,
									"id" : "obj-5",
									"fontname" : "Verdana",
									"fontsize" : 11.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 123.0, 360.0, 121.0, 47.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "print() outputs text without the newline",
									"linecount" : 2,
									"id" : "obj-6",
									"fontname" : "Verdana",
									"fontsize" : 11.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 139.0, 311.0, 133.0, 33.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "error 'ka-boom'",
									"id" : "obj-8",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 11.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 19.0, 359.0, 99.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "5.times{print 123}",
									"id" : "obj-11",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 11.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 18.0, 313.0, 117.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "puts 'Hello Max'",
									"id" : "obj-12",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 11.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 19.0, 245.0, 99.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "puts() outputs text and a newline to the Max Window.",
									"linecount" : 3,
									"id" : "obj-19",
									"fontname" : "Verdana",
									"fontsize" : 11.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 137.0, 246.0, 118.0, 47.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend eval",
									"id" : "obj-23",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 11.0,
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 7.0, 390.0, 82.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Shortcuts methods out0(), out1(), ..., out9() send their arguments to outlets 0 - 9:",
									"linecount" : 3,
									"id" : "obj-2",
									"fontname" : "Verdana",
									"fontsize" : 11.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 320.0, 37.0, 169.0, 47.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print out2",
									"id" : "obj-7",
									"fontname" : "Verdana",
									"fontsize" : 11.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 422.0, 216.0, 65.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "out1 'here I am'",
									"id" : "obj-9",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 11.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 323.0, 87.0, 110.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "for n in 0..2 do outlet(n\\,'where am I?') end",
									"id" : "obj-13",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 11.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 32.0, 95.0, 255.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "outlet 1\\, 'something'",
									"id" : "obj-14",
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 11.0,
									"numinlets" : 2,
									"numoutlets" : 1,
									"patching_rect" : [ 12.0, 70.0, 132.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print out1",
									"id" : "obj-15",
									"fontname" : "Verdana",
									"fontsize" : 11.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 353.0, 216.0, 65.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "print out0",
									"id" : "obj-16",
									"fontname" : "Verdana",
									"fontsize" : 11.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 284.0, 216.0, 65.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Multiple Outlets",
									"id" : "obj-17",
									"fontname" : "Verdana",
									"fontface" : 1,
									"fontsize" : 12.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 299.0, 132.0, 134.0, 21.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "the second argument (3 in this case) specifices the number of outlets",
									"linecount" : 2,
									"id" : "obj-18",
									"fontname" : "Verdana",
									"fontsize" : 11.0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 298.0, 154.0, 223.0, 33.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mxj jruby 1 3",
									"id" : "obj-20",
									"fontname" : "Verdana",
									"outlettype" : [ "", "", "" ],
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"fontsize" : 11.0,
									"numinlets" : 1,
									"numoutlets" : 3,
									"patching_rect" : [ 284.0, 190.0, 157.0, 20.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [ 28.5, 379.0, 16.5, 379.0 ]
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
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [ 28.5, 264.0, 16.5, 264.0 ]
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
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"midpoints" : [ 21.5, 119.5, 193.5, 119.5 ]
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
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
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
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [ 193.5, 152.0, 293.5, 152.0 ]
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
									"source" : [ "obj-30", 1 ],
									"destination" : [ "obj-33", 1 ],
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
									"source" : [ "obj-20", 2 ],
									"destination" : [ "obj-7", 0 ],
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
									"source" : [ "obj-20", 1 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
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
									"source" : [ "obj-37", 0 ],
									"destination" : [ "obj-36", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Verdana",
						"default_fontsize" : 11.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 11.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/R.*R/.match 'Regular expRessions'",
					"id" : "obj-27",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 11.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 281.0, 173.0, 209.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "5 - 6/4.0",
					"id" : "obj-28",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 11.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 391.0, 91.0, 60.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "'Hello'.reverse * 5",
					"id" : "obj-29",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 11.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 282.0, 146.0, 115.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "(1..10).map{|i| i*i }",
					"id" : "obj-30",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 11.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 282.0, 120.0, 123.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "5 + 2*3",
					"id" : "obj-31",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 11.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 319.0, 91.0, 63.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Run code from files...",
					"id" : "obj-33",
					"fontname" : "Verdana",
					"fontsize" : 11.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 66.0, 138.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend eval out0",
					"id" : "obj-37",
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 11.0,
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 269.0, 205.0, 112.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"id" : "obj-69",
					"rounded" : 12,
					"numinlets" : 1,
					"mode" : 1,
					"grad1" : [ 0.835294, 1.0, 0.960784, 1.0 ],
					"angle" : 270.0,
					"numoutlets" : 0,
					"grad2" : [ 0.270588, 0.658824, 0.541176, 1.0 ],
					"patching_rect" : [ 10.0, 11.0, 267.0, 42.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"id" : "obj-70",
					"rounded" : 16,
					"numinlets" : 1,
					"mode" : 1,
					"grad1" : [ 0.482353, 0.482353, 0.482353, 1.0 ],
					"angle" : 270.0,
					"numoutlets" : 0,
					"grad2" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 9.0, 10.0, 271.0, 46.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"id" : "obj-50",
					"numinlets" : 1,
					"border" : 1,
					"numoutlets" : 0,
					"bgcolor" : [ 0.913725, 0.964706, 0.952941, 1.0 ],
					"patching_rect" : [ 513.0, 76.0, 182.0, 111.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 1,
					"midpoints" : [ 550.5, 227.0, 688.5, 227.0 ]
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
					"source" : [ "obj-49", 0 ],
					"destination" : [ "obj-51", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
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
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [ 290.5, 197.0, 278.5, 197.0 ]
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
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [ 291.5, 141.0, 278.5, 141.0 ]
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
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
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
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-41", 1 ],
					"hidden" : 0,
					"midpoints" : [ 278.5, 253.0, 467.5, 253.0 ]
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
					"source" : [ "obj-53", 0 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 0,
					"midpoints" : [ 52.5, 190.0, 22.5, 190.0 ]
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
					"source" : [ "obj-57", 0 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 0,
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
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
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
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 1,
					"midpoints" : [ 412.5, 401.0, 514.0, 401.0, 514.0, 286.0, 389.5, 286.0 ]
				}

			}
 ]
	}

}
