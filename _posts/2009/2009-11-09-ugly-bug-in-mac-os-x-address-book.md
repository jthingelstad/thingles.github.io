---
title: Ugly Bug in Mac OS X Address Book?
categories:
- Techie
tags:
- Apple
---

I don't have an official bug report for this but I'm seeing a very ugly bug in Mac OS X [Address Book](http://en.wikipedia.org/wiki/Address_Book_(application)) or some part of the applications that work with its data. In short, it seems that in some situations Address Book can duplicate all the images associated with contacts, multiple times.
I keep really important data in my Address Book and as a result I do a weekly manual backup in addition to [Time Machine](http://en.wikipedia.org/wiki/Time_Machine_(Apple_software)) backups. Look at the size of my weekly backups in this screenshot.

[![Address Book Backup File Sizes]({{ site.url }}{% link /assets/posts/2009/Address-Book-Backup-File-Sizes.png %})]({{ site.url }}{% link /assets/posts/2009/Address-Book-Backup-File-Sizes.png %})

In a two-week period the duplication happened multiple times. From October 24 to October 30 it happened twice increasing the size of all images from 17 to 34MB and then again from 34 to 64MB. It happened again doubling from 64M to 120MB! The culprit here are the images associated with contacts and stored in `~/Library/Application Support/AddressBook/Images`. This behavior is on my Mac Pro which is synchronized with MobileMe to my MacBook Pro and iPhone. However, the error isn't the same on all synchronized Macs. Looking in the images directory on my Mac Pro there is 130.5MB of data with 8,782 files.

<!-- more -->

[![images folder on mac pro]({{ site.url }}{% link /assets/posts/2009/images-folder-on-mac-pro.png %})]({{ site.url }}{% link /assets/posts/2009/images-folder-on-mac-pro.png %})

The same folder on my MacBook Pro is much smaller at 17.9MB with 1,222 items, however even that is too many.

[![images folder on macbook pro]({{ site.url }}{% link /assets/posts/2009/images-folder-on-macbook-pro.png %})]({{ site.url }}{% link /assets/posts/2009/images-folder-on-macbook-pro.png %})

To put this into context my address book has 979 cards in it and I tend to associate an image with most entries. Sadly when I look at the images directory manually even the one on my MacBook Pro has duplicated once.

It is very hard to figure out what is going on that directory since the file names are all just random [GUIDs](http://en.wikipedia.org/wiki/Guid). The best way I've found is to sort by file size which usually puts the duplicate files right next to each other. It seems likely that these extra files are just ignored, but they are taking up a lot of space and I worry will lead to eventual corruption.

If you use MobileMe I've found a way to fix this. Do a Reset Sync data and choose to replace your content on your computer with the data from MobileMe. After doing that my images directory is healthy at 11.9MB with 757 items in it.

[![fixed-images-directory]({{ site.url }}{% link /assets/posts/2009/fixed-images-directory.png %})]({{ site.url }}{% link /assets/posts/2009/fixed-images-directory.png %})

Strange and concerning behavior. Does anyone else see this behavior?
