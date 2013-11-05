El Camino Espectaculo (The Road Show)
===========

http://www.elcaminoespectaculo.com

This is a collaborative and interactive art project by Palmer Bradshaw and Allison Nelson. Users can submit photos via the website and have them displayed on "the big screen" where the installation is set up. The installation can be as mobile or as permanent as you choose, and the software involved is easy to set up.

Required:
------------------

1. A Linux machine. This has been tested on Ubuntu on a laptop and Raspbian on the Raspberry Pi.
2. Internet Access
3. A website and a host with support for PHP
4. The PHPFlickr Library (http://phpflickr.com/)

What the files do and how to use them:
--------------

`splash.sh` : shows the "default" screen. This file is optional. If you want a splash screen to inform your users how than can submit, insert the file path to your image here.

`feed.sh` : checks Flickr using their API to find out if there are any new submissions. You can modify the url to be whatever flickr account you want. When a new image is detected, it is downloaded and displayed for 15 seconds. This is easily configurable.

`oldpics.sh` : to prevent "dead time", this script goes through the already downloaded photos and shows them in a slideshow at random, 5 seconds per photo. If a new photo comes in at this time, it will be displayed on top of the old photos, giving it priority.

How to install this for your own use:
---------------

1. Download the scripts here
2. Download the phpflickr library and make sure you can access it on your webhost
3. Set up a Flickr api key so that you can send pictures from your web app to the Flickr account for storage (TODO: how to do this)
4. Include the code to upload to flickr on your website (TODO: add this code)
5. Create a cron job that will check for updates periodically using the `feed.sh` script.
6. Run the `splash.sh` script if you want it to continuously show a default image.
7. Run the `oldpics.sh` script if you want it to randomly loop through old photos.

If you have any questions please contact me through my website http://themusegarden.wordpress.com
