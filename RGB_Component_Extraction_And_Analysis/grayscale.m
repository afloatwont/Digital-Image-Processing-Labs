% Greyscaling the images with different algorithms
% Author: Ayush Ambatkar (BT22ECI005)

clc;
clear all;
close all;

% Reading the Image
I = imread("image.jpg");
imshow(I);

% Create figure with subplots
figure('Name', 'Greyscale method');

% Average Method
Gray_avg = (I(:,:,1) + I(:,:,2) + I(:,:,3)) / 3;
subplot(2,2,1);
imshow(Gray_avg, []);
title("Average Method");

% Weighted Average Method
Gray_weighted = 0.3 * I(:,:,1) + 0.59 * I(:,:,2) + 0.11 * I(:,:,3);
subplot(2,2,2);
imshow(Gray_weighted, []);
title("Weighted Average Method");

% Luminosity Method
Gray_luminosity = 0.21 * I(:,:,1) + 0.72 * I(:,:,2) + 0.07 * I(:,:,3);
subplot(2,2,3);
imshow(Gray_luminosity, []);
title("Luminosity Method");

% Desaturation Method
Gray_desaturation = (max(I, [], 3) + min(I, [], 3)) / 2;
subplot(2,2,4);
imshow(Gray_desaturation, []);
title("Desaturation Method");