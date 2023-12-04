function binary = decimalToBinary(decimal, num_bits)
    % Convert decimal to binary representation with leading zeros
    binary = zeros(1, num_bits);
    for i = num_bits:-1:1
        binary(i) = mod(decimal, 2);
        decimal = floor(decimal / 2);
    end
end