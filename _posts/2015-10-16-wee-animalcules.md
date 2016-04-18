---
layout: post
title:  "\"Wee Animalcules\" with Processing.js"
date:   2015-10-16 08:00:00
categories:
---

<canvas height="300" width="800" data-processing-sources="/js/wee-animalcules.pde" id="scratch-art"></canvas>

In an effort to create a particle system which didn't rely on flocking or noise functions, I ended up finding another solution which produces an effect somewhere in between. The alternative I came up with works by having a separate, invisible set of particles (leaders) moving randomly around the screen, and the visible set of particles always move toward the nearest leader. The original idea came from a concept of a bunch of particles/bacteria/whatever moving around trying to find and eat smaller beings in their environment.

A note on the title: "Wee Animalcules" was inspired by Antoni van Leeuwenhoek's descriptions of what we now know of as bacteria and other tiny organisms when he first started looking at pond water, blood, and other fluids through a primitive microscope. The effect I get from watching the above particle system feels like looking through a microscope at tiny organisms; they're moving around and appear to have some sort of mission, but I don't understand what that mission is.

Below is an example with the leader particles shown to help illustrate what's happening and driving the particles. I have the code for the original on github [here](https://github.com/anthonypleshek/processingjs-wee-animalcules).

<canvas height="300" width="800" data-processing-sources="/js/wee-animalcules-leaders.pde" id="scratch-art"></canvas>
