function decimal = binaryToDecimal(binary)
    % Convert binary array to decimal representation
    num_bits = numel(binary);
    decimal = sum(binary .* 2.^(num_bits-1:-1:0));
end