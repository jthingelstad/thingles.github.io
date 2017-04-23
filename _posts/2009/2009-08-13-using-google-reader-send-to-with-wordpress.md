---
excerpt: '<p>I was pretty excited to read about recent <a href="http://googlereader.blogspot.com/2009/08/flurry-of-features-for-feed-readers.html">enhancments
  to Google Reader, particularly the "Send to..."</a> feature that allows you to post
  items from Google Reader into Facebook, Twitter, Delicious and many other sites.

  However, where I wanted to send things was to WordPress and that isn''t in the list.
  I was excited that the Reader team though smartly left a way for you to manually
  add your own "Send to..." destinations. I considered this and thought it may match
  well with WordPress built-in "Press this" function. And it does!</p>'
title: Using Google Reader "Send To" with WordPress
categories:
- Techie
tags:
- Facebook
- Google
- Twitter
- WordPress
---

I was pretty excited to read about recent [enhancements to Google Reader, particularly the "Send to..."](http://googlereader.blogspot.com/2009/08/flurry-of-features-for-feed-readers.html) feature that allows you to post items from [Google Reader](http://www.google.com/reader/) into [Facebook](http://www.facebook.com/), [Twitter](http://twitter.com/), [Delicious](http://www.delicious.com/) and many other sites.
But, I wanted to send things to [WordPress](http://www.wordpress.org/) and that isn't in the list. However, the Reader team smartly left a way for you to manually add your own "Send to..." destinations. I considered this and thought it may match well with WordPress built-in "Press this" function. And it does!

You cannot use the "Press this..." function directly in Reader as it is Javascript and Reader wants a URL. But, you can just post directly to press-this.php. The URL is (make sure to replace with your own domain name!)

`http://www.YOURDOMAINHERE.com/wp-admin/press-this.php?u=${url}&t;=${title}&s;=${source}&v;=2`

Google Reader will substitute the items in braces. Now you have an easy "Send to..." option from Google Reader.

To create this go to Google Reader and open Settings. Select the "Send To" tab and click on the "Create a custom link" button. Then fill it in similar to this picture:

![google-reader-send-to-for-wordpress2](/assets/posts/{{ page.date | date: "%Y" }}/google-reader-send-to-for-wordpress2.png)

Also, if you want the nice WordPress icon next to the link put the Icon URL in as

`http://s.wordpress.org/favicon.ico?3`

Have fun blogging!
