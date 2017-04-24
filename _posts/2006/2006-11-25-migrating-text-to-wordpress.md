---
title: Migrating .Text to WordPress
categories:
- Techie
tags:
- WordPress
---

I recently bit the bullet and migrated my ancient [DotText](http://workspaces.gotdotnet.com/dottext) (.Text) blog to [WordPress](http://wordpress.org/). It wasn't painless, and involved writing some code, but I'm exceedingly happy with WordPress and finally feel like I'm on a modern blogging platform again.
I considered for months and months (years?) going to [Community Server](http://communityserver.org/) (CS), which is the natural descendant of DotText, but it just didn't make sense. CS really serves a different purpose, and WordPress is so well designed for the task at hand.

Before starting on this adventure, you may want to take a moment to increase your script timeout value for PHP to something exceedingly long. Some of the import PHP scripts will run for a couple of minutes (if you have hundreds of posts) and you don't want them killed in the middle. Change this in your php.ini.

**Migrating Posts**

This is actually pretty easy. There is no DotText importer for WordPress, so you have to resort to the lowest common denominator, RSS. WordPress has an importer that will take an RSS feed in a file and import the posts. The first step though is getting all of your posts in an RSS formatted XML file.

<!-- more -->DotText obviously supports RSS, however it only outputs the last 10 or 20 posts in the RSS feed. You can get around this by altering DotText to output all posts in the RSS feed. You can find [how to do this](http://www.pinkjoint.com/archives/software/exporting-all-posts-from-a-text-dottext-blog-via-rss/), along with some [pre-compiled DLLs](http://www.pinkjoint.com/Shifty/Pinkjoint.Dottext.RSS.Export.zip) to alter the behavior at [PinkJoint](http://www.pinkjoint.com/archives/software/exporting-all-posts-from-a-text-dottext-blog-via-rss/). Once you've dropped these DLL's in when you hit your RSS feed it will return all posts. After that, save it to a file and you are ready to import using the RSS importer in WordPress.

I found it helpful to open the RSS/XML file up in a [text editor](http://www.textpad.com/) and do some [regular expression](http://en.wikipedia.org/wiki/Regular_expression) work to change the URL's for referenced images to something more WordPress friendly. In my case, the path to images referenced in posts were all changing. It's perfect to do this to the XML file before doing the import.

Now for an unfortunate item. RSS doesn't have a means (in a standard way at least) to include things like categories. Importing your content via RSS means you lose all existing category associations. This didn't bother me that much since I wasn't happy with the existing comments. You can also get WordPress plug-ins that will allow you to assign categories in bulk mode making it easier to fix this after migrating.

**Migrating Comments**

Now that the posts are moved over, we need to deal with comments. At first I considered just starting fresh with no comments, but I have over 400 comments and that seemed like a lot of content to just throw away. The method below worked great for me. I purposefully focused on tools that I was comfortable with, this could be done many different ways. The basic approach is to export all the comments into a simple CSV file, then import them using a [custom PHP import script](/assets/posts/2006/commentscsv.txt) for WordPress. The connection between the comment and the post is the post title, so it is critical that you _do not edit the titles on any posts_ until you've imported your comments.

The simplest way to get the comments into a CSV file is to use the SQL Server DTS tool. I selected a CSV file as a destination and used this SQL query to get the relevant content.

`SELECT     posts.ID AS PostID, posts.Title, posts.DateAdded, comment.ID AS CommentID, comment.Title AS CommentTitle, comment.DateAdded AS CommentDate, comment.Author, comment.Email, comment.TitleUrl, comment.Text
FROM         blog_Content comment
INNER JOIN blog_Content posts ON comment.ParentID = posts.ID
WHERE     (comment.PostType = 3) `

This will get us a simple file with all of our comments dumped into it. With this file in hand, we can now do the import. To do this, [download the CommentsCSV importer](/assets/posts/2006/commentscsv.txt) and replace the TXT extension with PHP, then place it in the importer directory. Go to the import tab and you will see CommentsCSV listed. Upload the file and watch it do it's magic.

Note that CommentsCSV does a minimal effort to make things XHTML compliant, but don't expect pretty XHTML at the end.

**What's Left?**

So we now have all of our posts (without their categories) and they have all the relevant comments attached to them. We are sitting pretty at this point, but, there are some gotchas.

Articles don't get sent in the RSS feed for DotText so you will not have those imported. There really isn't an equivalent of an article in WordPress, and most DotText users have a small number of articles. I'm just moving mine by hand doing a copy/paste of the HTML into WordPress.

I hope that others find this helpful in their migration to WordPress. Feel free to contribute your own experience in the comments.
