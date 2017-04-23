---
title: I [Heart] Unix
categories:
- Techie
---

Maybe this should be titled "I [Heart] Shell", but it seems more fitting to lay praise at Unix. Sometimes you do something on the prompt and you just look and think "Wow, that would be crazy hard on any other platform!".

    
    jamie-mbp% while true;
    do (date; netstat -n | grep 1.2.3.4 | awk '{print $6}' | sort | uniq -c; sleep 300;);
    done

I was debugging a problem with leaking network connections to a host and needed to see what was going on, checking in every 5 minutes.
