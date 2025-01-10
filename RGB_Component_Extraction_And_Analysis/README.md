# Read Image and Display RGB Components

This MATLAB script reads an image and displays its RGB components in separate subplots.

## Overview

- Reads an image file named `image.jpg`.
- Displays the original image and its red, green, and blue components.
- Shows the pixel value at position (1,3).

## Instructions

1. Place `image.jpg` in the same directory as the script.
2. Run the script in MATLAB.

## Details

- `clc`, `clear all`, `close all`: Clears the command window, workspace, and closes all figures.
- `imread`: Reads the image into `Ic`.
- `figure`, `subplot`, `imshow`: Creates a figure with subplots and displays images.
- Extracts RGB components by zeroing other channels.
- Displays the pixel value at (1,3) in the command window.

## Author

Ayush Ambatkar (BT22ECI005)
