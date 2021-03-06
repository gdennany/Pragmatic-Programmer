#!/bin/sh
#---
# Excerpted from "The Pragmatic Programmer, 20th Anniversary Edition",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit http://www.pragmaticprogrammer.com/titles/tpp20 for more book information.
#---
#
# From "Shell Games",
# Example shell script that finds the unique package names
# in a set of Java files
#

(cd ../java
grep '^import ' *.java |
  sed -e's/^import  *//' -e's/;.*$//' |
  sort -u >list
)

cat ../java/list
rm ../java/list
