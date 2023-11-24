#!/bin/bash
# Create a mask. Do it once to save time
convert -size 3840x3840 xc:Black -fill White -draw 'circle 1920 1920 1920 1' -alpha Copy mask_3840.webp

# Loop over all files in folder, skipping processed ones
for f in $(ls *[^_fisheye].jpg); do

  # Grab the filename without any extension and show it
  fn=$(basename "${f%.*}")
  echo Processing $fn

  # ImageMagick convert command
  convert $f -crop 3840x+0+0 \
    -gravity center -resize 3840x4540! \
    -gravity center -crop 3840x3840+0+0 \
    -gravity Center mask_3840.png -compose Dst_In -composite -trim \
    ${fn}_fisheye.jpg
done
