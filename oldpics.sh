#!/bin/bash

cd /home/allison/images/
FILES=/home/allison/images/

for f in $FILES # goes through the old pics
do
    DISPLAY=:0 feh -F --hide-pointer --slideshow-delay 5 --auto-zoom --randomize $f # display each old pic for 5 sec continuously
done