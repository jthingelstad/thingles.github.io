---
title: Lightroom 2 64-bit Printing
categories:
- Hobbies
- Techie
tags:
- Lightroom
---

I was doing some printing in Lightroom recently and was struggling. The prints were coming out really badly, and when looking for the quality controls for the Canon S900 I couldn't find any of the normal settings. This is what it should look like, with options for the type of printing.

![lr2-32bit-print-options.png]({{ site.url }}{% link /assets/posts/2008/lr2-32bit-print-options.png %})

But instead I was getting this, with a big crossed out option and an incompatibility over "architecture".

![lr2-64bit-print-options.png]({{ site.url }}{% link /assets/posts/2008/lr2-64bit-print-options.png %})

I was pretty confused why this wasn't working and figured I needed to reinstall my drivers, but didn't want to restart at that point so left it. I kept noodling this over and that word "architecture" was bugging me. Then it hit me!

I've posted before about how great [Lightroom is in 64-bit mode]({{site.url}}{% link _posts/2008/2008-07-29-lightroom-2-in-64-bit-glory.md %}). It dawned on me that I was running a "64-bit architecture" and the printer driver was probably only 32-bit. I checked the box for Lightroom to run in 32-bit mode and launched it again and the printer settings worked great! It sure would be nice if the error message just said "this doesn't work in 64-bit mode".

Lesson learned! Run Lightroom in 64-bit, unless you want to print, then restart in 32-bit. If anyone knows what printers have 64-bit driver support it would be great to have a list.
