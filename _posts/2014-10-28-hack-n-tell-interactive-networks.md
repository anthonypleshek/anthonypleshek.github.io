---
layout: post
title:  "Hack 'n Tell - Interactive Networks"
date:   2014-10-28 22:00:00
categories:
---

<script type="text/javascript" src="/js/p5js-interactive-networks.js"></script>

I participated in a hack-n-tell on October 25th, and it was the best hackathon-like experience I think I've ever had. The entire focus was centered around actually producing something; there was no worrying about whether or not projects had viable business models, markets, or anything else, and it was great. Huge thanks to [Rokkincat](http://www.rokkincat.com), [PKWARE](https://www.pkware.com), and [MSOE FIRST Collegiate Robotics Organization](https://www.facebook.com/FCRO.MSOE?fref=ts) for putting on a great event.

For my project, I wanted to do something interactive since I had a pretty big buzz still going from attending [INST-INT](http://www.inst-int.com) at the end of September. I decided on a project where you could create a network with distinct start and end points for each node, and add different types of interactions to move the nodes from their start points to their ending points. Originally, the entire project was built with [processing](https://processing.org/), but I've since ported it over to [p5.js](http://p5js.org/) for sharing it on the  web in a reasonable manner. The code for each version is on github: [processing-interactive-networks](https://github.com/anthonypleshek/processing-interactive-networks) and [p5js-interactive-networks](https://github.com/anthonypleshek/p5js-interactive-networks).

Here's an example of the p5.js version that changes the locations of the nodes based on the mouse position.

<div id="p5js-interactive-networks-container"></div>

The original version, built in processing, only has a few different types of interaction, as well as a function which moves the nodes based on processing's noise() function instead of user interaction. I used basic mouse location and a Kinect for the actual user interaction types. The Kinect interaction would need a lot of work before being useful in any sort of real user scenarios, but basic interaction based on the Kinect's depth map worked well as a proof of concept. The number of different interaction types that could be added are nearly endless; I was hoping to also get to the point of integrating an audio library for an interaction type but ran out of time.

Overall, I really enjoyed implementing this project, as well as the concept of interactive discovery. There's a lot of neat stuff that could be done as far as users interacting with the system to change the network from being totally unordered into something recognizable, back, and everything in between.
