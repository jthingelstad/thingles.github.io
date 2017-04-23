---
title: Versioned Backup of Typerighter Account
categories:
- Techie
---

My friend [Garrick](http://garrickvanburen.com/) has been working on a really cool project called Typerighter. [Typerighter](https://typerighter.com/) is a notepad for your browser. It has almost no interface and just lets you focus on writing. He's done some really cool things with it, like making it easy to keep notes for each day and make a document public and share it with the world (by default everything is private).
I suggested to Garrick that I really wanted a way to backup my account. I trust he's got my data backed up well, but it's even better if I don't have to trust at all because I have my data. He added a private RSS feed that dumps all of your documents out and I quickly put a script together so I now have nightly, versioned backups of all my information in Typerighter.

Here is the script:



    
    #!/bin/bash
    #
    # This script is run by cron and downloads all of my material from http://typerighter.com/
    # It uses Git to keep track of changes in the archive
    
    URL=https://your-username.typerighter.com/archive/my-secret-token
    GIT=/usr/local/bin/git
    CURL=/usr/bin/curl
    
    # Get my documents
    $CURL --silent --output typerighter.rss "$URL"
    
    # Detect if there is an existing repo, if not, make one
    if [ ! -d .git ]; then
    	echo "Creating the git repo..."
    	$GIT init
    	$GIT add *
    fi
    
    $GIT commit --quiet --all --message='Automatic commit of archive.' > /dev/null

This script does want to be in the right directory when you run it. I put this in my crontab for it.



    
    0 2 * * * (cd /home/thingles/autobackups/typerighter; ./backup-typerighter.sh)

Using Git is the part that I really like. Not only do I have a current backup, but I can use standard Git tools to get old versions of documents at any time.
