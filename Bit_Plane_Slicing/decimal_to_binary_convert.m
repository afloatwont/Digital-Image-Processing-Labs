% Code to convert decimal number to binary 
% And displaying the number of bits in the binary representation

clc;
clear all;
close all;

x = 125;

bits_data = dec2bin(x)
strlength(bits_data)

binary = [];
num = x;

% Convert decimal to binary
while num > 0
    remainder = mod(num, 2);  % Get remainder
    binary = [remainder binary];  % Add to start of array
    num = floor(num/2);  % Integer division
end

% Display result
fprintf('Decimal number %d in binary is: ', x);
disp(binary);
fprintf('Length of binary number: %d\n', length(binary));