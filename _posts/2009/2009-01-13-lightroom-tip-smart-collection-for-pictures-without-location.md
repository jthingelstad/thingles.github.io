---
title: 'Lightroom Tip: Smart Collection for Pictures Without Location'
categories:
- Hobbies
tags:
- Lightroom
---

Lightroom 2 introduced a badly needed feature, Smart Collections. I was ecstatic about using Smart Collections to assist with workflow. One of those workflows I've been working on has been adding IPTC location data to my photos, essentially setting the Country, State, City and Location for photos. It would be great to create a Smart Collection that included all photos that do **not** have location details and then just work through it with photos automatically being removed after adding the information. You can try this by creating a Smart Collection like this:

![Null Location 1.png](/assets/posts/2009/null-location-1.png)

But, it won't work. Lightroom doesn't have an operator "is blank". The next best thing is to just do "is" and set the value to nothing, but Lightroom doesn't honor this and just assumes you made a mistake. I stopped here for a long time and just assumed what I wanted to do wasn't possible. However, then I came up with this workaround:

![Null Location 2.png](/assets/posts/2009/null-location-2.png)

And this works perfect! Create a smart collection using "doesn't contain" for each letter in the alphabet and you will get the desired result, all photos that do not have anything in their location. Great!
