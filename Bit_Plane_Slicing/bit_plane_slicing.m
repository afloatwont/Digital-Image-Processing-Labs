% Read a grayscale image and display bit planes in one window
% Author: Ayush Ambatkar (BT22ECI005)

clc
clear
close all

% Read the grayscale image
image = imread('image.jpg'); 
if size(image, 3) == 3
    image = rgb2gray(image); 
end

figure;

subplot(3, 4, 1);
imshow(image);
title('Original Image');

% Perform bit-plane slicing
for bit = 1:8
    % Extract the bit-plane
    bit_plane = bitget(image, bit);
    
    % Convert to binary image for visualization
    bit_plane_img = uint8(bit_plane * 255);
    
    % Display the bit-plane
    subplot(3, 4, bit + 1); % Place bit planes after the original image
    imshow(bit_plane_img);
    title(['Bit Plane ', num2str(bit)]);
end

% Combine higher-order bit planes for visualization (e.g., 7 & 8)
combined_high_order = uint8(bitget(image, 7) * 128 + bitget(image, 8) * 128);

% Display the combined higher-order bit planes
subplot(3, 4, 10);
imshow(combined_high_order);
title('Combined 7 & 8');

% Combine all higher-order bit planes (5, 6, 7, and 8) for visualization
combined_all_high_order = uint8( ...
    bitget(image, 5) * 16 + ...
    bitget(image, 6) * 32 + ...
    bitget(image, 7) * 64 + ...
    bitget(image, 8) * 128);

% Display the combined high-order bit planes
subplot(3, 4, 11);
imshow(combined_all_high_order);
title('Combined 5 to 8');

% Display low-order bit planes (1 to 4 combined) for visualization
combined_low_order = uint8( ...
    bitget(image, 1) * 1 + ...
    bitget(image, 2) * 2 + ...
    bitget(image, 3) * 4 + ...
    bitget(image, 4) * 8);

subplot(3, 4, 12);
imshow(combined_low_order);
title('Combined 1 to 4');
