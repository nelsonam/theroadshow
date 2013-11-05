#!/bin/bash

cd /home/allison/images/

# go get the files
urls=`wget -q -O- "http://api.flickr.com/services/feeds/photos_public.gne?id=73033005@N05&lang=en-us&format=rss_200" | grep -o '<media:content url="[^"]*' | grep -o '[^"]*$'`

for u in $urls
  do
    i=`echo $u | grep -o '[^/]*$'`
    if [ -f $i ]
    then
	echo ""
    else
	wget -c $u
	DISPLAY=:0 timeout 15s feh -F --hide-pointer --auto-zoom $i # displays the image for 15 seconds
    fi
  done
