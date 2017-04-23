---
title: MediaWiki Template Get Hostname
categories:
- Techie
tags:
- MediaWiki
---

I was working on [a template](http://links.thingelstad.com/wiki/Template:Get_hostname) for one my personal wikis and needed to get the hostname for a given URL. Using the capabilities of the [Parser Functions extension](http://www.mediawiki.org/wiki/Extension:ParserFunctions) for [MediaWiki](http://www.mediawiki.org/wiki/MediaWiki) I whipped up this template. I figured others may find this useful so here it is. The first version has a bunch of spaces and newlines added to make it more readable.

    
    {% raw %}
    {{#vardefine: hoststart | {{#expr: {{#pos: {{{1|}}} | // }} + 2 }} }}
    {{#vardefine: hostend | {{#pos: {{{1|}}} | / | {{#expr: {{#pos: {{{1|}}} | // }} + 2 }} }} }}
    {{#vardefine: hostlen | {{#expr: {{#var: hostend }} - {{#var: hoststart }} }} }}
    {{#sub: {{{1|}}} | {{#var: hoststart}} | {{#var: hostlen}} }}
    {% endraw %}

To put it in your own MediaWiki, copy this version that removes the spaces and newlines.

To use this template put it on a page like `Template:Get hostname` and then call it in your pages as



    
    {% raw %}
    {{Get hostname|http://thingelstad.com/another-reason-you-need-to-use-a-password-manager/}}
    {% endraw %}

which will return `thingelstad.com`. You can also find [this template on MediaWiki Cookbook](http://mediawikicookbook.com/wiki/Get_hostname_from_URL).
