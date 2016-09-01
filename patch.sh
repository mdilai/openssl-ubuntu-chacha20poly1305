#!/bin/sh
for i in `cat debian/patches/series`
do
echo Patching {i} \n
patch -p1 < debian/patches/$i
echo \n
done
