---
layout: post
title:  "Interactive Audio + Visual Installation"
date:   2016-06-27 18:45:00
categories:
---

This is a very old project (April 2013) from when I was at a creative agency called Spreenkler in Milwaukee, which to my knowledge is no longer active. I can't by any means take full credit for this, as multiple coworkers contributed feedback and guidance, particularly in terms of the visual aesthetics.

<div class="row">
    <div class="column2 left">
        <div class="video-container">
            <video width="300" height="300" controls autoplay loop>
                <source src="/video/interactive-dots1.mp4" type="video/mp4">
                Video not supported
            </video>
            <span>This is a short clip of some early prototyping before video started being used for the colors of the circles and the circles all had their colors pre-defined.</span>
        </div>
    </div>

    <div class="column2 right">
        <div class="video-container">
            <video width="300" height="300" controls autoplay loop>
                <source src="/video/interactive-dots2.mp4" type="video/mp4">
                Video not supported
            </video>
            <span>This clip is (I think) the final version, or at least near it, during testing in the office. A camera is being used to set the colors of the circles.</span>
        </div>
    </div>
</div>

A couple things I learned from this project:

- DOCUMENT! It's an absolute embarrassment to myself that these two videos are basically the only things remaining of all the time I spent creating projects using audio and video together as input. I should have loads of video, pictures, and code documenting the various states of this work I did, even if it wasn't complete or pretty or anything else.
- Be ready for unknowns and be able to make changes as necessary. We had the fun of not having a good way to prepare for the dueling pianos that were the first performance of the night. After we got everything set up and tested before the event, we had to tweak a few things in the code once the dueling pianos started to make the visuals more exciting given the type of input while someone covered the projector with a notebook.

<script>
    var videos = document.getElementsByTagName("video");
    for(var i=0; i<videos.length; i++) {
        videos[i].volume = 0.0;
    }
</script>
