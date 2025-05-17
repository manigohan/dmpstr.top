<!--
// SPDX-License-Identifier: CC-BY-NC-SA-1.0
// TITLE: The stupidest static site ever -- and how I made it
// DATE: 2025-05-17
// AUTHOR: manigohan
-->
<link rel="stylesheet" href="https://matcha.mizu.sh/matcha.css">
<link rel="stylesheet" href="../style.css">
<link rel="preconnect" href="https://rsms.me/">
<link rel="stylesheet" href="https://rsms.me/inter/inter.css">

## manigohan's blog site

- [home](../index.html)
- [blog](index.html)
- [my gpg key](../gpg-key-manigohan-at-national-dot-shitposting-dot-agency-2025-07-16.txt)

<br>

<blockquote>
    <p>
        Use like Astro or something[.]
    </p>
    <cite>May from <a href="https://split.pet">split.pet</a></cite>
</blockquote>

# Prologue
Why? *Why not!* 

# Why I wrote a whole system instead of just... using Astro
Honestly, *I* don't really know why I chose to wrote which is almost a web framework. Although this **does** bring me more customization (which I will never use since I don't really write front-end. ¯\_(ツ)_/¯) 

# *dun dun* The inner-workings that make this website work
<div style="text-align: center;">
    <img src="https://i.imgflip.com/2/2qpumc.jpg" alt="Homer Simpson front and back"/>
</div>
This meme represents the entire project. Yes, it ***IS VERY*** messsy.

For the Markdown to HTML part, I used [*marked*](https://github.com/markedjs/marked) because it has an easy-to-use CLI tool that I can integrate with *coming* build script for this whole project. marked does have one caveat which is *very inconvient* which is, hyperlinks in markdown don't get converted that link to markdown files also don't change to `.html` which *suuuuuuuuucks*. I had to [make a issue about this in the repo](https://github.com/markedjs/marked/issues/3686) too from how annoying it is, genuinely.

For hosting it, I use Github Pages which deploy with a custom action I wrote specifically for the **BEST STATIC SITE IN THE WORLD!!!111*** (took me 10 action runs before I got it up and running which is a PR for me!)

# Denouement
~~Did I enjoy writing it? ***No.*** Did I prove to everyone I know that I'm stupid? ***Yes!***~~
May and Jack just told me to "use a SSG", which my stupid ass, declined. (well obvious if you read this, lol)
In all honestly, writing this was a rollercoaster of fun and dread (from debugging). This also happens to be one of the most "proper" websites I've built, which is actually nice to know for me as I never wrote anything like this. Although, if you do plan on doing something like this, *please don't.* You'll be better off using [Astro](https://astro.build/) or [Jekyll](https://jekyllrb.com/) (which is what GitHub uses.)

And that sums up the development of this [explicitive]! Hopefully this did inform or entertain you a bit, since I certainly don't know how to write that well... I still have to maintain and refactor a bunch of the code but aside from that, I am done *for now...*

 
