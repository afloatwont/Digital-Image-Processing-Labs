# Bit Plane Slicing

This MATLAB script performs bit plane slicing on a grayscale image to visualize different bit planes.

## Overview

- Reads an image file named `image.jpg`.
- Converts the image to grayscale if it is not already.
- Extracts and displays each bit plane of the grayscale image.
- Combines and displays higher-order and lower-order bit planes for visualization.

## Instructions

1. Place `image.jpg` in the same directory as the script.
2. Run the script in MATLAB.

## Details

- `clc`, `clear`, `close all`: Clears the command window, workspace, and closes all figures.
- `imread`: Reads the image into `image`.
- `rgb2gray`: Converts the image to grayscale if it is not already.
- `figure`, `subplot`, `imshow`, `title`: Creates figures with subplots, displays images, and titles the subplots.
- Extracts each bit plane using `bitget`.
- Combines higher-order and lower-order bit planes for visualization.

## Output

![](./output_image.png)

## Theory

Bit plane slicing separates an 8-bit grayscale image into 8 binary planes:
- Plane 1 (LSB): Least significant bit
- Planes 2-6: Middle bits
- Planes 7-8 (MSB): Most significant bits containing primary visual information

## Applications

- Image compression
- Digital watermarking
- Data hiding
- Image quality analysis
- Image enhancement

## Dependencies

- MATLAB R2020a or later
- Image Processing Toolbox

## Author

Ayush Ambatkar (BT22ECI005)
