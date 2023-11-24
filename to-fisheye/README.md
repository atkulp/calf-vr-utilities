**Figuring out the geometry of the side by side captured images**

**Image format**
Vertically compressed fisheye with an output square image so it's an oval touching the left and right edges and 350px above and below the oval.

**Procedure**
1. Crop the left side of the image (could be either side)

  If you need dual fisheye, you'll need to make a few changes, but the same vertical stretching and copping principles apply.

2. Stretch image to make fisheye into a perfect circle

   This requires anamorphically stretching to 3840 (don't change width) x 4540 (3840 + 350 + 350)
3. Crop the image back to 3840x3840 by the center

    This takes off the wasted pixels leaving a circle behind.

4. Using a circular mask, remove the outer edges. Software shouldn't care, but if you are attempting feature matching, the edges may cause an issue.


**Convert to equirectangular using ffmpeg**
I hate that it's very complicated to change projection in ImageMagick (that I could find). Ffmpeg is typically used for audio and/or video, but will work fine on images too.

Use the `v360` filter.  Set input to `fisheye` and output to `hequirect`.
