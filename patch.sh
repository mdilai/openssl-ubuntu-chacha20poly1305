#!/bin/bash
for i in `cat series`
do
printf "Patching ${i} \n"
patch -p1 --dry-run < debian/patches/${i}
#read  -n 1 -p "Continue?: " mainmenuinput
echo \n
done
