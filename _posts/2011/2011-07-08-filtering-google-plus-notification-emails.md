---
title: Filtering Google Plus Notification emails
categories:
- Techie
tags:
- Google
---

It sure didn't take long for Google Plus to start filling my mailbox with email notifications of all sorts of actions. Luckily, its super simple to filter Google Plus notifications. Just capture any email matching…



    
    
    @plus.google.com
    

and send it to a folder.

If you use [Sieve](http://en.wikipedia.org/wiki/Sieve_(mail_filtering_language)) like I do, the rule to match is…



    
    
    header :contains "From" [
    	"@plus.google.com"
    ]
    

Much better.
