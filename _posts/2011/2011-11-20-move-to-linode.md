---
title: Move to Linode
categories:
- Techie
---

This website (and all the other websites I run) should all be running **much** faster now. This weekend I flipped everything from my previous VPS at [Slicehost](http://www.slicehost.com/) to a new instance at [Linode](http://www.linode.com/).

There is a ridiculous amount I could write about the move, and I'll try to share what I think is most helpful to others. In general I can say that the Linode hosts are a lot faster than the Slicehost instance I had. Doing basic Linux stuff was 2-3 times faster on Linode than on Slicehost.

![]({{ site.url }}{% link /assets/posts/2011/php-apc-hit-ratio.png %})

My new setup is also a lot faster due to how I deployed [WordPress](http://wordpress.org/) and [MediaWiki](http://www.mediawiki.org/). I'm now running everything on [nginx](http://nginx.com/) instead of [Apache](http://www.apache.org/). I'm also serving all my PHP out of php5-cgi instead of mod_php. Perhaps even more importantly I got all of my wiki and blog instances running under one PHP install for MediaWiki and WordPress. As a result, the [APC](http://php.net/manual/en/book.apc.php) module for PHP can do it's job right. I'm now getting 99.9% PHP cache hits.

With all that said I fully expect I may have a thing or two not working right now. If you see anything broken a comment or email would be great.
