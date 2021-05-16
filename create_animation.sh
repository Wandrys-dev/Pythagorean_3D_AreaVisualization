octave create_screenshot.m
mogrify -resize 500×375 scatter*.png
convert -delay 10 -loop 0 scatter*.png animation.gif
