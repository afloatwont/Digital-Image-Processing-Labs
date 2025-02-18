# Shannon-Fano Compression

This MATLAB script generates optimal variable-length binary codes for data compression using the Shannon-Fano algorithm.

## Overview

- Defines symbols and their probabilities.
- Sorts symbols based on probability in descending order.
- Recursively generates Shannon-Fano codes.
- Displays the symbols, their probabilities, and the corresponding codes.

## Instructions

1. Place the script in the desired directory.
2. Run the script in MATLAB.

## Details

- `clc`, `clear`, `close all`: Clears the command window, workspace, and closes all figures.
- `symbols`: Defines the symbols to be encoded.
- `probabilities`: Defines the probabilities of the symbols.
- `sort`: Sorts the symbols based on their probabilities.
- `cell`: Initializes empty codes.
- Recursive function to generate Shannon-Fano codes.
- Displays the results.

## Theory

### Basic Concept
Shannon-Fano coding is a technique for constructing a prefix code based on a set of symbols and their probabilities. The goal is to produce a code that is as efficient as possible.

### Mathematical Foundation
The Shannon-Fano algorithm works by recursively dividing the set of symbols into two parts, each with approximately equal probabilities. The process continues until each subset contains only one symbol.

### Process Steps
1. Sort symbols based on their probabilities.
2. Divide the set into two parts with approximately equal probabilities.
3. Assign binary values to each part.
4. Recursively apply the process to each subset.
5. Combine the results to form the final codes.

### Benefits
- Produces efficient variable-length codes.
- Simple and easy to implement.
- Useful for data compression.

## Example

### Input
Symbols: `{'A', 'B', 'C', 'D', 'E'}`  
Probabilities: `[0.4, 0.2, 0.2, 0.1, 0.1]`

### Output
```
Symbol  Probability  Code
A       0.40         0
B       0.20         10
C       0.20         11
D       0.10         110
E       0.10         111
```

## Author

Ayush Ambatkar (BT22ECI005)
