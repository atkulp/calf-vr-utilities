#!/bin/bash
ffmpeg -i input_fisheye.jpg -filter:v "v360=input=fisheye:ih_fov=185:iv_fov=185:output=hequirect"  output_equi.jpg