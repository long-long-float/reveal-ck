# reveal-ck: a [reveal.js][reveal-js] construction kit

[![Build Status][travis-reveal-ck-badge]](https://travis-ci.org/jedcn/reveal-ck)

## Overview

This project is the home of a gem named `reveal-ck` that lets you
quickly author [reveal.js](http://lab.hakim.se/reveal-js/)
presentations.

Here's a
[high level description of what reveal-ck is about][jedcn-reveal-ck]
and how to get up and running with it.

The hope is that you will be able to leverage all of the power,
beauty, and functionality that comes from reveal.js while focusing
entirely on the actual content and ideas you are trying to get across.

To get started, take a look at
[this project that's got everything you need][github-jedcn-reveal-ck-template].

## Why not just clone reveal.js?

Or why not use http://slid.es/ which offers a WYSIWYG experience?

You can! For sure.

The whole reveal.js offering is great.

If reveal-ck's approach is too contrived or doesn't warrant the setup
time, skip it!

## Then.. why would anyone use reveal-ck?

The thought behind this project to help you focus on what *you* want
to say.

For me, focusing becomes easier and my thoughts clearer when I reduce
the list of slides to a single file (```slides.haml```). It only
contains the slide content I am presenting and there's minimal markup.

HAML isn't the most readable thing (say, compared to markdown), but it
is decent, and sharing or reviewing something like ```slides.haml```
is easier than reviewing the final presentation:

* If you look at the presentation in a browser, you can't scan all of
  the slides at once. You need to visit them. If you're looking at
  ```slides.haml``` you can quickly scan through 30+ slides.

* If you look at the html behind the presentation (say, view source),
  there's a bunch of stuff that is about making the magic happen:
  styles, javascript, etc, and that distracts from your content.

* If you track your slides in a system like git, you can get
  meaningful diffs between versions of ```slides.haml```. This is
  slightly easier than if you track the generated presentation.

In the end, [reveal.js][reveal-js], can make things pretty, but only
you can make a presentation that is worthwhile.

[jedcn-reveal-ck]: http://jedcn.com/posts/reveal-ck
[github-jedcn-reveal-ck-template]: http://github.com/jedcn/reveal-ck-template
[reveal-js]: http://lab.hakim.se/reveal-js
[travis-reveal-ck-badge]: https://travis-ci.org/jedcn/reveal-ck.png
