#!/bin/sh
for i in `cat debian/patches/series`
do
printf "Patching {$i} \n"
patch -p1 < debian/patches/$i
read  -n 1 -p "Continue?: " mainmenuinput
echo \n
done
