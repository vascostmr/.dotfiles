#!/bin/sh

cd /home/vascostmr/.config/i3

current=$(ls config*current)
other=$(ls config*other)
echo "$current"
echo "$other"

mv config bckp/config.$(date +"%Mh%Hm%F")
cp ${other} config

mv $current ${current%.*}.other
mv $other ${other%.*}.current

i3-msg restart
