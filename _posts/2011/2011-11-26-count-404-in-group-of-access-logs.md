---
title: Count 404's in group of access logs
categories:
- Techie
tags:
- Geek
redirect_from: /count-404-in-group-of-access-logs/
---

I found myself needing to see all of the 404 errors in the access logs for all virtual hosts on my web server. I put all of my logs for a given application (in this case WordPress) in one place (`/srv/www/wordpress/logs/$host-access.log`). Logrotate kicks in to keep them segmented and compress them by day.

A bunch of Unix magic later...
    
    zgrep " 404 " *-access.log* | \
    cut -d " " -f 1,7 | \
    sed s/\:.*\ /\ / | \
    sed s/\-access.*\ /\ / | \
    sort | \
    uniq -c | \
    sort -n -r | \
    head -20
    

zgrep is just grep that handles both normal and gzipped files. Pipe that into cut to pull out just the data we want. The two sed commands pull out data that would mess up the aggregation (the IP address of the requester and part of the filename). Sort puts prepares the stream for uniq to do the counting. Then do a numeric sort in reverse and show the top 20 404's in all log files.

Output looks like

        380 thingelstad.com /wp-content/uploads/2011/09/cropped-20090816-101826-0200.jpg
        301 thingelstad.com /wp-content/uploads/2009/06/Peppa-Pig-Cold-Winter-Day-DVD-Cover.jpg
        300 thingelstad.com /wp-content/thingelstad/uploads/2011/10/Halloween-2011-1000x750.jpg
        264 thingelstad.com /wp-content/uploads/2007/12/guitar-hero-iii-cover-image.jpg
        130 thingelstad.com /apple-touch-icon.png
        129 thingelstad.com /apple-touch-icon-precomposed.png
        121 thingelstad.com /wp-content/uploads/import/o_nintendo-ds-lite.jpg
        114 thingelstad.com /wp-content/thingelstad/uploads/2011/10/Crusty-Tofu-1000x750.jpg
    

Of course the next step would be to further the pipe into a `curl --head` command to see which 404's are still problematic. That just makes me smile. :-)

As an aside, sort combined with uniq -c has to be one of the most deceptively powerful yet simple set of commands out there. I'm amazed at how often they give me exactly what I'm looking for.
