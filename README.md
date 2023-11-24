# calf-vr-utilities
Scripts, utilities, and documentation for working with the Calf VR 180 camera

Very much a work in progress, so feel free to contribute or comment. Currently, scripts are written for Linux, but the commands themselves work fine on Windows too. It's just the looping over the files part that would be different.

For now, I'm working on converting the side by side (SBS) warped images and converting them to a circular fisheye which seems more normal for such cameras. I'll add other thoughts and scripts as I come up with them.

[to-fisheye](/to-fisheye/)
Convert a side-by-side Calf image to left-side only, then stretch to circular. Optionally, convert to equirectangular then (out to the corners instead of round).