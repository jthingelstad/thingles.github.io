---
title: Fluid and Site-Specific Browsers
categories:
- Techie
---

[![Fluid-Logo.png]({{ site.url }}{% link /assets/posts/2008/fluid-logo1.png %})](http://fluidapp.com/)So, you may be wondering what a site-specific browser is. In a nutshell, it is just a web browser that is packaged with some specific functionality or extensions to work with a specific website. I think this is going to be an interesting area over the coming years. If you think about how both Quicken and Money mesh the web into their applications, that is a very tiny sliver of a SSB.
If you are a Mac user, you can have your very own SSB's to your hearts content. [Fluid](http://fluidapp.com/) is a program for your Mac that creates SSB's. You launch Fluid and with a couple of commands it creates another application that becomes that SSB. Why do this? Well, there are a number of reasons.

<!-- more -->

#### Long Lived Web Applications

If you are a web application user for GMail or Yahoo! Mail you've probably had multiple tabs open and had a page on another tab cause the browser to crash. With a poof your mail dissapears.

If you are using an SSB the SSB is in another process space and is protected.

#### Keep Focus

The SSB is locked down to the domain you specify. If anything in that domain links you out to another domain, that will launch out in your default browser.

#### Integration With Your Desktop

The reasons above are why I created SSB's for both Basecamp and Backpack. Another benefit? I can now quickly launch them via Quicksilver and they appear in my alt-tab sequence just like they were a real application. There is a good [write-up on the 37 Signals blog about how to set this up](http://www.37signals.com/svn/posts/797-fluid-wrap-your-favorite-web-apps-in-their-own-browser), with nice graphics to use for icons.

![leopard-dock-with-fluid-apps.png]({{ site.url }}{% link /assets/posts/2008/leopard-dock-with-fluid-apps1.png %})

I find this user experience really changes how you work with these web applications.
