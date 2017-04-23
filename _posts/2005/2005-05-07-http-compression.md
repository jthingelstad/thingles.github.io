---
title: HTTP Compression
categories:
- Techie
---

I finally got HTTP compression working on content that matters -- like ASPX pages. It looks like pages are compressing about 4:1 or more. This should mean much faster download times since my broadband connection is my most limiting issue. I found some excellent instructions for doing this at [http://www.wwwcoder.com/main/parentid/170/site/3669/68/default.aspx](http://www.wwwcoder.com/main/parentid/170/site/3669/68/default.aspx). You need to edit the IIS6 metabase for compression to work as you would want and this article explains it will.

I also moved [Road Sign Math](http://www.roadsignmath.com/) to it's own web server now so it is isolated and I also enabled compression on it.

Let me know if you notice faster responses when you are browsing our site.
