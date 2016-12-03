# Investigation on Elm's Core Array issues

[![Build Status](https://travis-ci.org/turboMaCk/elm-array-tests.svg?branch=master)](https://travis-ci.org/turboMaCk/elm-array-tests)

This repository attempts to make issues with current implementation of `Array` easier to reproduce and describe.

![](http://public.media.smithsonianmag.com/legacy_blog/sherlock-holmes-glass_550.jpg)

## Background

There are [many issues](https://github.com/elm-lang/core/issues/649) with current implementation of Array from core Library.
Nice folks are already working on the [ultimate solution for all of this](https://github.com/Skinney/elm-array-exploration).
Meanwhile we should try to describe and reproduce or even try to fix some of the biggest issues with current implementation.

## Obstacles

**Currently tests in [elm-lang/core](https://github.com/elm-lang/core) are failing.** This makes our detective work hard. This is where this repository comes to play.
This repository uses core lib as git submodule and introduce brand new test suit for core libraries.

## How To Use This:

Please make sure you have this repository cloned **with all submodules**!

You'll need to install **elm-test via npm first**.

within project directory:

```shell
$ npm install
```

There is shell script in place for building and running tests:

```shell
$ tests/run-tests/sh
```

That's it!

## Some Background

`Array` is persistent [data-structure](https://en.wikipedia.org/wiki/Hash_array_mapped_trie) with near linear time operations.
Implementation is based on [papers](http://infoscience.epfl.ch/record/64398/files/idealhashtrees.pdf) by Phil Bagwell and is fairly similar to Clojure script Vector.

**For general description I highly recommend watch these talks by Rich Hickey (author of Clojure).**

Expert to Expert: Rich Hickey and Brian Beckman - Inside Clojure
https://www.youtube.com/watch?v=wASCH_gPnDw&t=29m51s

Rich Hickey: Clojure Concurrency
https://www.youtube.com/watch?v=dGVqrGmwOAw&t=36m10s
