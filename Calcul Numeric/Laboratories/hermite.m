function N = hermite(x0, f0, df0, x)
    [z, d] = divdiff2(x0, f0, df0);
    x0 = z;
    row = d(1, :);

    for i = 1:length(x)
        sum = row(1);
        for j = 2:length(x0)
            sum = sum + row(j) * prod(x(i) - x0([1:j-1])); 
        end
        N(i) = sum;
    end
end