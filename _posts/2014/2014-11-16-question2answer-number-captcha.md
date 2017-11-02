---
title: Question2Answer Number Captcha
categories:
- Techie
tags:
- Question2Answer
- Spam
---

I've been using [Question2Answer](http://www.question2answer.org) for a number of years now to power [Ask Planet Kubb](http://ask.planetkubb.com). I like Question2Answer because it is simple to run, uses a standard PHP + MySQL setup and can even be used in a multi-site farm configuration easy enough. However, I've been frustrated by it’s ability to manage spam registrations.

Question2Answer has built in support for [ReCaptcha](http://www.google.com/recaptcha/intro/index.html) and it has a plugin method to use other anti-spam measures. I've used ReCaptcha for a while, but it results in 4 to 10 spam registrations a day. I tried switching to the [Q2A Logical Captcha](https://github.com/amiyasahu/q2a-logical-captcha) by [amiyasahu](https://github.com/amiyasahu/) which uses [Text Captcha](http://textcaptcha.com). I even submitted a [pull request to properly salt the captchas](https://github.com/amiyasahu/q2a-logical-captcha/pull/2). But this resulted in 3-4 times the spam registrations as ReCaptcha! **Ouch!**

I decided to apply the same type of [spam defense I've successfully used for MediaWiki]({{site.url}}{% link _posts/2014/2014-10-28-updated-dynamic-questy-captchas.md %}) and early results are great. It uses the [Numbers_Words](http://pear.php.net/package-info.php?package=Numbers_Words) PHP package to spell out a number of nine digits and then ask the user to identify the number in a specific position. The question looks like this:

![screenshot]({{ site.url }}{% link /assets/posts/2014/screenshot.png %})

This works really well. You can grab [q2a-number-captcha](https://github.com/thingles/q2a-number-captcha) and `git clone` it for your own use.
