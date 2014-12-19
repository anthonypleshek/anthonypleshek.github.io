---
layout: post
title:  "Generate Snowflakes with Processing.js"
date:   2014-12-19 08:00:00
categories:
---

There have been multiple occasions in which I've searched the internet for basic snowflake generation code in javascript. Results generally ended up being things like
* the "falling snow" effect
* totally unrelated results related to generating unique IDs [via twitter](https://github.com/twitter/snowflake)
* some neat stuff related to generating snowflakes via cellular automaton such as [this](http://community.wolfram.com/groups/-/m/t/235291)
* a guide from instructables to make laser-cut snowflakes
* a few scientific papers
* some pretty neat snowflake generation on [OpenProcessing](http://www.openprocessing.org/search/?q=snowflake)

None of these things were quite what I wanted, which was a quick way to generate semi-realistic snowflakes for the web, so I made one. (You can click to generate new ones.)

<canvas height="400" width="400" data-processing-sources="/js/generate-snowflakes.pde" id="generate-snowflakes"></canvas>

It doesn't work exactly like [real-life snowflakes](http://www.its.caltech.edu/~atomic/snowcrystals/class/class.htm), but it's good enough for me for the time being. The code is up on github [here](https://github.com/anthonypleshek/processingjs-generate-snowflakes).
