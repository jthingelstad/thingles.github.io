---
title: OmniFocus Templates with Workflow
tags:
- Workflow
- OmniFocus
- GTD
desc: Automating Taskpaper templates with Workflow and Github.
date: 2018-02-04 03:59:36 +0000
slug: ''
weather: ''
location: ''
categories: []
description: ''
redirect_from: []
author: ''
image: ''
tag: []
layout: post
---

A while ago I dove into using [Taskpaper][] templates with [OmniFocus][] and [Editorial][] on iOS. This thread on [automation in OmniFocus][omni forum] caught my attention when OmniFocus 2.14 shipped. Automation was a big push for that release. I really liked the use of Taskpaper and the real magic here for me was using variables inside the Taskpaper files so that you could drop in different dates or names as needed. The Editorial solution that Ken Case posted on that forum post worked well so I started using it.

After using this approach for a while I found the Editorial solution a little awkward. In my head when I think of this type of activity I think of [Workflow][] and it was odd for me to go to [Editorial][]. I also didn’t like how Editorial depended on Dropbox. I've slowly moved nearly things away from Dropbox and Editorial was the only thing on my iPad still needing Dropbox. I also felt like the templates themselves should be versioned.

About a month ago a new version of Workflow came out that [added support for Web API's][workflow api]. This got me thinking and I was betting that I could get templates for OmniFocus the way I wanted them. My hope was to get the templates stored in [Github][] so they would be versioned and the execution entirely in Workflow. The addition of the API support made that possible!



[Editorial]: http://omz-software.com/editorial/
[OmniFocus]:https://www.omnigroup.com/omnifocus/
[Workflow]: https://workflow.is/
[omni forum]: https://discourse.omnigroup.com/t/automation-in-omnifocus-2-14-released-2016-04-26/23985
[TaskPaper]: https://www.taskpaper.com
[workflow api]: https://www.macstories.net/ios/workflow-update-brings-ability-to-interact-with-any-web-api/
[Github]: http://github.com/