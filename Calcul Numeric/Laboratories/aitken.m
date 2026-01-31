function A = aitken(x0, f0, x)
    P = zeros(length(x0));
    P(:, 1) = f0';
    n = length(x0);

    for k=1:length(x)
        for i=2:n
            for j=2:i
                P(i, j) = (1 / (x0(i) - x0(i-j+1))) * det([x(k) - x0(i-j+1), P(i-1, j-1); x(k)-x0(i), P(i, j-1)]);
            end

        end
        A(k) = P(n, n)
    end
end