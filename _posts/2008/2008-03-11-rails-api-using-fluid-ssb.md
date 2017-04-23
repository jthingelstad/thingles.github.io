---
title: Rails API using Fluid SSB
categories:
- Techie
tags:
- Rails
- Ruby
---

I've been diving big into Ruby on Rails this week with this class I'm taking. One of the things I found right away is you need to have the Rails API documentation very handy. The main site is [api.rubyonrails.com](http://api.rubyonrails.com/), and frankly it's horrible. Luckily there is a great alternative at [RailsBrain](http://www.railsbrain.com/) that uses AJAX and all sorts of spiffy fun to make the API so much more usable. Today though I was getting frustrated because I had a slow internet connection and things were taking forever. Enter the solution, a [site-specific browser](http://www.slashthing.com/fluid-and-site-specific-browsers/).
My friend [Kent](http://www.thetangens.net/) came up with this idea, so credit to him for it, but I know he'll never blog about it and I want to share the love. RailsBrain allows you to download the API documentation as a zip file. It is simply a collection of files and can be served without a web server.

Unzip the files to a location of your liking and then launch fluid. Here is the setup window. For extra fun, I took the [logo image off of RailsBrain](http://www.railsbrain.com/rails_brain.png) to use as the application icon.

![Fluid-Setup-Screen-For-RailsAPI.png](/assets/posts/{{ page.date | date: "%Y" }}/fluid-setup-screen-for-railsapi1.png)

<!-- more -->
After doing this hit create and you've got a brand new shiny application that runs local, will work offline, is never going to be slow, and can be launched easily via your launcher of choice.

![Quicksilver-Launching-Fluid-RailsAPI.png](/assets/posts/{{ page.date | date: "%Y" }}/quicksilver-launching-fluid-railsapi1.png)

Plus, you can now alt-tab to it easily. Wow! Great idea Kent! This is really great, and it is blistering fast!
