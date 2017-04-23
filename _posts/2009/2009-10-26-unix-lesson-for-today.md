---
title: Unix Lesson for Today
categories:
- Techie
tags:
- Unix
---

Learned after much difficulty today that find(1) doesn't actually spawn a shell, and as a result trying to use backticks doesn't work in a find exec parameter. However, you can tell find to invoke a shell to get around it. This works.



    
    
    find . -name "*.DBF" -print -exec sh -c 'dbf2mysql -h localhost -d mydatabase -t $(basename "$1" ".DBF") -c -v -P password -U username $1' {} {} \;
    
