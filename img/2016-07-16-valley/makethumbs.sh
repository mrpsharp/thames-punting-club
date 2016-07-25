#!/bin/sh

make_thumbnail() {
    pic=$1
    thumb=$(dirname "$1")/thumb-$(basename "$1")
    convert "$pic" -thumbnail 300 "$thumb"
}

# Now we need a way to call make_thumbnail on each file.
# The easiest robust way is to restrict on files at level 2, and glob those
# with */*.jpg
# (we could also glob levels 2 and 3 with two globs: */*.jpg */*/*.jpg)

for pic in *.jpg
do
    make_thumbnail "$pic"
done
