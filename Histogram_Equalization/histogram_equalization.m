% Histogram Equalization - Implementation for grayscale images
% Enhances the contrast of an image by equalizing the intensity distribution
% Author: Ayush Ambatkar (BT22ECI005)

clc;
clear all;
close all;

image = imread('image.jpg');
gray_image = rgb2gray(image);

% Calculate histogram
[rows, cols] = size(gray_image);
L = 256;
histogram = zeros(1, L);
for i = 1:rows
    for j = 1:cols
        histogram(gray_image(i, j) + 1) = histogram(gray_image(i, j) + 1) + 1;
    end
end

% Histogram equalization
cdf = cumsum(histogram) / sum(histogram);
equalized_image = zeros(rows, cols, 'uint8');
for i = 1:rows
    for j = 1:cols
        equalized_image(i, j) = round(cdf(gray_image(i, j) + 1) * (L - 1));
    end
end

% Calculate equalized histogram
equalized_histogram = zeros(1, L);
for i = 1:rows
    for j = 1:cols
        equalized_histogram(equalized_image(i, j) + 1) = equalized_histogram(equalized_image(i, j) + 1) + 1;
    end
end

% Calculate cumulative histograms
original_cdf = cumsum(histogram) / sum(histogram);
equalized_cdf = cumsum(equalized_histogram) / sum(equalized_histogram);

% Display results
figure;
subplot(3, 2, 1), imshow(image), title('Original Image');
subplot(3, 2, 2), imshow(gray_image), title('Grayscale Image');
subplot(3, 2, 3), bar(0:L-1, histogram), title('Original Histogram');
subplot(3, 2, 4), imshow(equalized_image), title('Equalized Image');
subplot(3, 2, 5), bar(0:L-1, equalized_histogram), title('Equalized Histogram');

% Plot cumulative histograms
subplot(3, 2, 6);
hold on;
plot(0:L-1, original_cdf, 'r', 'LineWidth', 2); % Original CDF in red
plot(0:L-1, equalized_cdf, 'k', 'LineWidth', 2); % Equalized CDF in black
hold off;
title('Cumulative Histograms');
xlabel('Intensity Levels');
ylabel('Cumulative Probability');
legend('Original CDF', 'Equalized CDF');
xlim([0 255]);
ylim([0 1]);
