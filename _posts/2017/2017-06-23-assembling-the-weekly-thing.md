---
title: Assembling the Weekly Thing
date: 2017-06-23 21:38:14 -0500
description: Overview of how I use automation to easily create the weekly thing.
image: /assets/posts/2017/weekly-thing-workflows.jpg
tags: Workflow
---

I had been interested in creating a newsletter like the [Weekly Thing][thing] for a while but I was worried it would be difficult to do and quickly turn into a chore. I wasn't worried about the email part, I knew a service like [TinyLetter][] could deal with that. The daunting part was getting the content structured the right way, even when I the bits of the content were mostly in other systems already.

I knew the main item I wanted to build it around were links to other sites that I use [Pinboard][] to collect. But how to make that easy?

![]({{ site.url }}/assets/posts/2017/weekly-thing-workflows.jpg)

### Workflow to the Rescue

As I thought about this I tried a number of options. I tried making an [Automator][] workflow but that was weird, and even worse it meant I had to be on a Mac and I knew I would want to send this when I wasn't near a computer. I started to look at [Workflow][] and realized it might do the trick.

Workflow has a great feature to retrieve published metadata, such as description and date, from a URL (Get Article from Web Page). Sometimes when I stored URL's I didn't write a description so that would be nice. I pulled the data using Pinboard's RSS feed, put it in a loop getting a variety of data and assembling the draft content as I watched. Voila! 👏

The entire process that I use to create Weekly Thing is based on [RSS][] (mostly) and tied together with Workflow on iOS. I have a collection of workflows that I run, with one master workflow that kicks everything off. The master workflow is responsible for ordering the sections and setting the cutoff date for content, which in my case is midnight of the relevant Saturday. The master workflow spawns the other workflows for each content section, passing into it the cutoff date for content.

Each workflow is then free to do whatever it wants as long as it returns a valid block of HTML back to the main workflow. I can chain as many of these modules together in whatever way I wish. Some of them don't use RSS, like the photograph one. That prompts me to look at my photos and pick one, then fills in all the appropriate template text for me to finish off.

At the end the workflow combines all these blocks of HTML into one fully assembled newsletter and gives me the option to copy it, share it, generate a PDF or anything else I wish. I'm very happy with this. From here I put it in TinyLetter, do a final review and hit send!

### Extensions

Since this is extensible, I can easily add new modules by creating another workflow that is then stitched into the assembly process. And because I'm using Workflow in iOS, I can access a wide variety of data from different systems. RSS is a basic one that many services support, but Workflow can look at my Calendar, Address Book and many others. I've thought about weird things like calendar statistics for example. Or if I really wanted to overshare I could pull in recent data from the Health app.

I've found that it's easiest to understand Workflow when you see what other people do with it. Perhaps this will turn some lightbulbs on for others on how they could automate use Workflow effectively!


[thing]: {% link weekly-thing.html %}
[TinyLetter]: https://tinyletter.com
[Automator]: https://macosxautomation.com/automator/
[Workflow]: https://workflow.is
[RSS]: https://en.wikipedia.org/wiki/RSS
[Pinboard]: https://pinboard.in/
