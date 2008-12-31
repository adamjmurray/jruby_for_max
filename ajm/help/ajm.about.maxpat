{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 65.0, 78.0, 721.0, 596.0 ],
		"bgcolor" : [ 1.0, 0.988235, 0.8, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 65.0, 78.0, 721.0, 596.0 ],
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
					"text" : "ajm.bring-to-front ajm.overview",
					"fontname" : "Verdana",
					"patching_rect" : [ 482.0, 32.0, 192.0, 20.0 ],
					"hidden" : 1,
					"fontsize" : 11.1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-10"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "thispatcher",
					"fontname" : "Verdana",
					"patching_rect" : [ 437.0, 250.0, 73.0, 20.0 ],
					"hidden" : 1,
					"fontsize" : 11.1,
					"numinlets" : 1,
					"numoutlets" : 2,
					"id" : "obj-53",
					"outlettype" : [ "", "" ],
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "ajm.bring-to-front-listener ajm.about",
					"fontname" : "Verdana",
					"patching_rect" : [ 437.0, 227.0, 220.0, 20.0 ],
					"hidden" : 1,
					"fontsize" : 11.1,
					"numinlets" : 0,
					"numoutlets" : 1,
					"id" : "obj-21",
					"outlettype" : [ "front" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Nick Inhofe",
					"fontname" : "Verdana",
					"patching_rect" : [ 244.0, 194.0, 120.0, 20.0 ],
					"fontsize" : 11.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-20"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"texton" : "Stop",
					"fontname" : "Arial",
					"patching_rect" : [ 446.0, 167.0, 139.0, 20.0 ],
					"presentation" : 1,
					"bgovercolor" : [ 0.784314, 0.909804, 0.917647, 1.0 ],
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"rounded" : 20.0,
					"fontsize" : 12.0,
					"numinlets" : 1,
					"border" : 1,
					"text" : "Download from CNMAT",
					"bgcolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
					"presentation_rect" : [ 522.0, 191.0, 79.0, 17.0 ],
					"numoutlets" : 3,
					"id" : "obj-51",
					"outlettype" : [ "", "", "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"texton" : "Stop",
					"fontname" : "Arial",
					"patching_rect" : [ 441.0, 76.0, 134.0, 20.0 ],
					"presentation" : 1,
					"bgovercolor" : [ 0.784314, 0.909804, 0.917647, 1.0 ],
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"rounded" : 20.0,
					"fontsize" : 12.0,
					"numinlets" : 1,
					"border" : 1,
					"text" : "http://compusition.com",
					"bgcolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
					"presentation_rect" : [ 536.0, 88.0, 79.0, 17.0 ],
					"numoutlets" : 3,
					"id" : "obj-49",
					"outlettype" : [ "", "", "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"texton" : "Stop",
					"fontname" : "Arial",
					"patching_rect" : [ 482.0, 17.0, 124.0, 20.0 ],
					"presentation" : 1,
					"bgovercolor" : [ 0.784314, 0.909804, 0.917647, 1.0 ],
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"rounded" : 20.0,
					"fontsize" : 12.0,
					"numinlets" : 1,
					"border" : 1,
					"text" : "ajm objects overview",
					"bgcolor" : [ 0.827451, 0.827451, 0.827451, 1.0 ],
					"presentation_rect" : [ 54.0, 20.0, 79.0, 17.0 ],
					"numoutlets" : 3,
					"id" : "obj-9",
					"outlettype" : [ "", "", "int" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Tom Fuerstner ",
					"fontname" : "Verdana",
					"patching_rect" : [ 19.0, 195.0, 104.0, 20.0 ],
					"fontsize" : 11.1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-50"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Johsua Kit Clayton",
					"fontname" : "Verdana",
					"patching_rect" : [ 131.0, 194.0, 132.0, 20.0 ],
					"fontsize" : 11.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-1"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Jeremy Berstein",
					"fontname" : "Verdana",
					"patching_rect" : [ 244.0, 175.0, 120.0, 20.0 ],
					"fontsize" : 11.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-2"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Noah Thorpe",
					"fontname" : "Verdana",
					"patching_rect" : [ 131.0, 175.0, 90.0, 20.0 ],
					"fontsize" : 11.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-3"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "John Pitcairn",
					"fontname" : "Verdana",
					"patching_rect" : [ 20.0, 176.0, 90.0, 20.0 ],
					"fontsize" : 11.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-4"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Topher Lafata",
					"fontname" : "Verdana",
					"patching_rect" : [ 244.0, 157.0, 90.0, 20.0 ],
					"fontsize" : 11.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-5"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Peter Elsea",
					"fontname" : "Verdana",
					"patching_rect" : [ 244.0, 138.0, 119.0, 20.0 ],
					"fontsize" : 11.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-6"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "ubutton",
					"patching_rect" : [ 417.0, 78.0, 22.0, 20.0 ],
					"numinlets" : 1,
					"numoutlets" : 4,
					"id" : "obj-7",
					"outlettype" : [ "bang", "bang", "", "int" ],
					"handoff" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "fpic",
					"patching_rect" : [ 420.0, 79.0, 19.0, 20.0 ],
					"pic" : "compusition.gif",
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-8"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.",
					"linecount" : 2,
					"fontname" : "Verdana",
					"patching_rect" : [ 23.0, 400.0, 620.0, 33.0 ],
					"fontsize" : 11.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-13"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.",
					"linecount" : 2,
					"fontname" : "Verdana",
					"patching_rect" : [ 23.0, 358.0, 655.0, 33.0 ],
					"fontsize" : 11.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-14"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "bgcolor 255 252 204",
					"fontname" : "Verdana",
					"patching_rect" : [ 176.0, 553.0, 128.0, 20.0 ],
					"hidden" : 1,
					"fontsize" : 11.0,
					"numinlets" : 4,
					"numoutlets" : 0,
					"id" : "obj-15"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Redistribution and use of these patches and objects in source and binary forms, with or without modification, are permitted provided that the following conditions are met:",
					"linecount" : 2,
					"fontname" : "Verdana",
					"patching_rect" : [ 23.0, 324.0, 544.0, 33.0 ],
					"fontsize" : 11.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-16"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Copyright (c) 2008-2009, Adam Murray (adam@compusition.com). All rights reserved.",
					"fontname" : "Verdana",
					"patching_rect" : [ 23.0, 302.0, 518.0, 20.0 ],
					"fontsize" : 11.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-17"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Chris Muir",
					"fontname" : "Verdana",
					"patching_rect" : [ 130.0, 157.0, 119.0, 20.0 ],
					"fontsize" : 11.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-18"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Emmanuel Jourdan",
					"fontname" : "Verdana",
					"patching_rect" : [ 130.0, 139.0, 122.0, 20.0 ],
					"fontsize" : 11.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-19"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\rmax launchbrowser http://www.cnmat.berkeley.edu/downloads/",
					"linecount" : 2,
					"fontname" : "Verdana",
					"patching_rect" : [ 447.0, 188.0, 369.0, 31.0 ],
					"hidden" : 1,
					"fontsize" : 11.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"id" : "obj-22",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "OSC-route",
					"fontname" : "Verdana",
					"patching_rect" : [ 413.0, 144.0, 67.0, 20.0 ],
					"fontsize" : 11.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-23"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "And all the other helpful people in the Max/Computer Music Community (sorry, not enough space to mention everyone here!)",
					"linecount" : 2,
					"fontname" : "Verdana",
					"patching_rect" : [ 20.0, 232.0, 403.0, 33.0 ],
					"fontsize" : 11.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-24"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Mattijs Kneppers",
					"fontname" : "Verdana",
					"patching_rect" : [ 20.0, 157.0, 121.0, 20.0 ],
					"fontsize" : 11.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-25"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Stephen Tiedje",
					"fontname" : "Verdana",
					"patching_rect" : [ 19.0, 139.0, 120.0, 20.0 ],
					"fontsize" : 11.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-26"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Michael Zbyszynski, Ali Momeni, and CNMAT",
					"fontname" : "Verdana",
					"patching_rect" : [ 19.0, 213.0, 263.0, 20.0 ],
					"fontsize" : 11.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-27"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Special Thanks",
					"fontname" : "Verdana",
					"patching_rect" : [ 17.0, 113.0, 100.0, 20.0 ],
					"fontsize" : 11.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-28"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Legal",
					"fontname" : "Verdana",
					"patching_rect" : [ 30.0, 278.0, 44.0, 20.0 ],
					"fontsize" : 11.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-29"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Needed by ajm.polyroute",
					"fontname" : "Verdana",
					"patching_rect" : [ 484.0, 145.0, 151.0, 20.0 ],
					"fontsize" : 11.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-30"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Dependencies",
					"fontname" : "Verdana",
					"patching_rect" : [ 412.0, 114.0, 96.0, 20.0 ],
					"fontsize" : 11.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-31"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Developed by: Adam J. Murray",
					"fontname" : "Verdana",
					"patching_rect" : [ 106.0, 13.0, 256.0, 20.0 ],
					"fontsize" : 11.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-32"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b",
					"fontname" : "Verdana",
					"patching_rect" : [ 397.0, 20.0, 24.0, 20.0 ],
					"hidden" : 1,
					"fontsize" : 11.0,
					"numinlets" : 1,
					"numoutlets" : 1,
					"id" : "obj-34",
					"outlettype" : [ "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\rmax launchbrowser http://www.compusition.com",
					"linecount" : 2,
					"fontname" : "Verdana",
					"patching_rect" : [ 398.0, 41.0, 287.0, 31.0 ],
					"hidden" : 1,
					"fontsize" : 11.0,
					"numinlets" : 2,
					"numoutlets" : 1,
					"id" : "obj-35",
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Released: January 2009",
					"fontname" : "Verdana",
					"patching_rect" : [ 106.0, 56.0, 234.0, 20.0 ],
					"fontsize" : 11.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-36"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Version: 0.8.6",
					"fontname" : "Verdana",
					"patching_rect" : [ 106.0, 35.0, 231.0, 20.0 ],
					"fontsize" : 11.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-37"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "about ajm objects",
					"linecount" : 3,
					"fontname" : "Arial",
					"patching_rect" : [ 20.0, 23.0, 83.0, 69.0 ],
					"fontsize" : 18.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-38"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "The latest version and other computer music info is at:",
					"fontname" : "Verdana",
					"patching_rect" : [ 106.0, 78.0, 317.0, 20.0 ],
					"fontsize" : 11.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-39"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS \"AS IS\" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES, LOSS OF USE, DATA, OR PROFITS, OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.",
					"linecount" : 8,
					"fontname" : "Verdana",
					"patching_rect" : [ 23.0, 435.0, 658.0, 113.0 ],
					"fontsize" : 11.0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"id" : "obj-40"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 10.0, 10.0, 86.0, 92.0 ],
					"rounded" : 7,
					"numinlets" : 1,
					"border" : 1,
					"bgcolor" : [ 0.729412, 0.890196, 0.815686, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-41",
					"shadow" : 3,
					"background" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 11.0, 276.0, 683.0, 25.0 ],
					"rounded" : 7,
					"numinlets" : 1,
					"border" : 1,
					"bgcolor" : [ 0.729412, 0.811765, 0.890196, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-42",
					"shadow" : 3,
					"background" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 12.0, 111.0, 382.0, 24.0 ],
					"rounded" : 7,
					"numinlets" : 1,
					"border" : 1,
					"bgcolor" : [ 0.729412, 0.811765, 0.890196, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-43",
					"shadow" : 3,
					"background" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 12.0, 129.0, 382.0, 142.0 ],
					"rounded" : 12,
					"numinlets" : 1,
					"border" : 1,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-44",
					"shadow" : 3,
					"background" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 407.0, 111.0, 226.0, 23.0 ],
					"rounded" : 7,
					"numinlets" : 1,
					"border" : 1,
					"bgcolor" : [ 0.729412, 0.811765, 0.890196, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-45",
					"shadow" : 3,
					"background" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 407.0, 112.0, 226.0, 84.0 ],
					"rounded" : 12,
					"numinlets" : 1,
					"border" : 1,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-46",
					"shadow" : 3,
					"background" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 84.0, 10.0, 540.0, 92.0 ],
					"rounded" : 12,
					"numinlets" : 1,
					"border" : 1,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-47",
					"shadow" : 3,
					"background" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"patching_rect" : [ 11.0, 291.0, 683.0, 269.0 ],
					"rounded" : 12,
					"numinlets" : 1,
					"border" : 1,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-48",
					"shadow" : 3,
					"background" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-51", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-53", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
