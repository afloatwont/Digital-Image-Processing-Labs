# Histogram Equalization

This MATLAB script performs histogram equalization on a grayscale image to enhance its contrast.

## Overview

- Reads an image file named `image.jpg`.
- Converts the image to grayscale.
- Computes the histogram and cumulative distribution function (CDF) of the grayscale image.
- Applies histogram equalization to the grayscale image.
- Displays the original image, grayscale image, equalized image, and their respective histograms and CDFs.

## Instructions

1. Place `image.jpg` in the same directory as the script.
2. Run the script in MATLAB.

## Details

- `clc`, `clear all`, `close all`: Clears the command window, workspace, and closes all figures.
- `imread`: Reads the image into `image`.
- `rgb2gray`: Converts the image to grayscale.
- `figure`, `subplot`, `imshow`, `bar`, `plot`: Creates figures with subplots, displays images, and plots histograms and CDFs.
- Computes the histogram and CDF of the grayscale image.
- Applies histogram equalization to enhance the image contrast.

## Theory

### Basic Concept
Histogram equalization is a technique to enhance image contrast by effectively spreading out the most frequent intensity values in an image.

### Mathematical Foundation
For an image with L gray levels, the transformation function is: 

\[ s_k = T(r_k) = (L-1) \sum_{j=0}^{k} p_r(r_j) \]

where:
- \( s_k \): Output pixel value
- \( r_k \): Input pixel value
- \( p_r(r_j) \): Probability of pixel value \( r_j \)
- \( L \): Number of gray levels (typically 256)

### Process Steps
1. Calculate histogram of input image.
2. Compute probability distribution.
3. Calculate cumulative distribution function (CDF).
4. Transform using normalized CDF.
5. Map old values to new intensity values.

### Benefits
- Improves contrast.
- Enhances detail visibility.
- Automatic method requiring no parameters.
- Useful for both under and over-exposed images.

## Output

![Output Image](https://github.com/user-attachments/assets/3d15f8cb-4f8c-4552-8112-7f799a362b1c)

## Author

Ayush Ambatkar (BT22ECI005)
