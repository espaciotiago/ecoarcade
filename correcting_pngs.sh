#!/bin/sh
# usage sh correcting_pngs.sh <path>
# example:
# usage sh correcting_pngs.sh assets/sprites

# Correcting images linpng warning
# curl -X POST -s --form "input=@namefile.png;type=image/png" https://pngcrush.com/crush > namefile.png

# function storing list of all files in variable files
yourfilenames=`ls ./$1`
mkdir ./$1/crushed
for f in $yourfilenames
do
    curl -X POST -s --form "input=@./$1/$f;type=image/png" https://pngcrush.com/crush > "./$1/crushed/$f"
    # call a function to count the lines
    echo "$f crushed"
	# store filename in an array
done
