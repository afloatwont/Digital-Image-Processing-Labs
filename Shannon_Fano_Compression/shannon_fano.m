% Title: Shannon-Fano Compression Algorithm
% Description: Generates optimal variable-length binary codes for data compression
% Author: Ayush Ambatkar (BT22ECI005)

clc; clear; close all;

% Define symbols and probabilities
symbols = {'A', 'B', 'C', 'D', 'E'};
probabilities = [0.4, 0.2, 0.2, 0.1, 0.1];

% Sort symbols based on probability in descending order
[probabilities, idx] = sort(probabilities, 'descend');
symbols = symbols(idx);
codes = cell(size(symbols)); % Initialize empty codes

% Recursive Shannon-Fano encoding
ranges = {1:length(symbols)};
queue = {ranges{1}, ''}; % Stack for processing ranges

while ~isempty(queue)
    range = queue{1}; queue(1) = [];
    prefix = queue{1}; queue(1) = [];
    
    if length(range) == 1
        codes{range} = prefix;
        continue;
    end
    
    % Find partition point
    total_prob = sum(probabilities(range));
    sum_prob = 0;
    for split = 1:length(range)-1
        sum_prob = sum_prob + probabilities(range(split));
        if sum_prob >= total_prob / 2
            break;
        end
    end
    
    % Assign binary values and push subgroups into queue
    queue = [queue, {range(1:split), [prefix '0']}];
    queue = [queue, {range(split+1:end), [prefix '1']}];
end

% Display results
disp('Symbol  Probability  Code');
for i = 1:length(symbols)
    fprintf('%s       %.2f      %s\n', symbols{i}, probabilities(i), codes{i});
end
