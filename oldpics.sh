#!/bin/bash

cd /home/allison/images/

FILES=/home/allison/images/

for f in $FILES
do
    DISPLAY=:0 timeout 15s feh -F $i # displays the image for 15 seconds
done