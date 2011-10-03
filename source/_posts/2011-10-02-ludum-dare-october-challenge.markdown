---
layout: post
title: "October Challenge"
date: 2011-10-02 23:59
comments: true
categories: [Ludum Dare, Android]
---

So I've decided to do the Ludum Dare
[October Challange](http://www.ludumdare.com/compo/2011/09/28/announcing-october-challenge-2011/).
It seems like a good kick in the pants to actually write a mobile app of
my own, so here goes.
<!--more-->
As far as ideas, I recently rediscovered Warcraft II, and liked how
simple the graphics and gameplay were while allowing a lot of depth. To
that end, I'm going to try to create a simple
~~~RTS~~~ [RTT](http://en.wikipedia.org/wiki/Real-time_tactics)
game for touch devices. Some ideas I've had so far:

* Go for quick games, people do not usually have a lot of time to play.

* To keep it quick, simplify out a lot of the mechanics that make
traditional RTS games hard to pick up.

* Use time as the main resource, instead of a combination of time and
two or more things (population, minerals, vespene, wood, gold).

* I'm going to try to target a younger audience, so killing is out of
the question. Even light 'kills' is off putting.

* The one thing I want to keep from more complicated RTS games is the
use of complicated terrain. Terrain is an easy concept to grasp, and
allows more serious players room to excel.

To combine all of these together, I'm going to create a game focusing on
a snow ball fight. By having different kids make different snowballs at
different speeds, it requires advanced players to plan which characters
make which snowballs. Like standard RTS/RTT games, there's going to be
the fog of war, but hopefully I'll have it be directionally based.
Ideally the maps will be procedurally generated, probably with a
tile-based mechanism to make it simpler for me. The game will be over
when a team has no more characters. It will be top-down, to try to
simplify character design.

I'm now working on finding a nice set of tools to build on top of, as
I'm not too keen on building a whole game engine for this. Right now I'm
thinking of using [libGDX](http://libgdx.badlogicgames.com/), but I'm
also thinking of possibly using
[AndEngine](http://www.andengine.org/blog/). The main benefit I'm seeing
with going with libGDX is that I can test more easilt on my netbook and
then move onto Android when I have the basics of the gameplay down.
