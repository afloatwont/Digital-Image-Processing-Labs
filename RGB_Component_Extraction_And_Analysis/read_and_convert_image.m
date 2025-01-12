% Convert the image to RGB components and display them
% Author: Ayush Ambatkar (BT22ECI005)
clc
clear all
close all

% Read the image
Ic = imread('image.jpg');

% Create figure with subplots
figure('Name', 'RGB Components');

% Original image
subplot(2,2,1);
imshow(Ic);
title('Original Image');

% Red component
red = Ic;
red(:,:,2:3) = 0;  % Set green and blue channels to zero
subplot(2,2,2);
imshow(red);
title('Red Component')

% Green component
green = Ic;
green(:,:,[1 3]) = 0;  % Set red and blue channels to zero
subplot(2,2,3);
imshow(green);
title('Green Component');

% Blue component
blue = Ic;
blue(:,:,1:2) = 0;  % Set red and green channels to zero
subplot(2,2,4);
imshow(blue);
title('Blue Component');

% Display pixel value
pixel_value = Ic(1, 3);
disp('Pixel value at (1,3):');
disp(pixel_value);