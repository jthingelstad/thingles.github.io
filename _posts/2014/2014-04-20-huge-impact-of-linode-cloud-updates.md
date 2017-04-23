---
title: Huge Impact of Linode Cloud Updates
categories:
- Techie
tags:
- Linode
---

I host all of my personal projects on two servers at Linode. Last week [Linode announced new "cloud servers" with SSD's, double RAM and a new chip architecture](https://blog.linode.com/2014/04/17/linode-cloud-ssds-double-ram-much-more/). I migrated both of my hosts over to the new servers that evening and the performance impact was immediately noticeable. WikiApiary is the most taxing project I run, and it was clearly much faster. This graph though of the WikiApiary API response time is the most telling. So much better!
![response-time](/assets/posts/{{ page.date | date: "%Y" }}/response-time.png)
