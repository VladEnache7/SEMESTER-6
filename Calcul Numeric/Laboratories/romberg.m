function I = romberg(f, a, b, error, nmax)
    R = zeros(nmax);
    h = b - a;
    R(1, 1) = h / 2 * (f(a) + f(b));
    
    for k = 2:nmax
        hk_1 = h / (2 ^ (k - 2));
        x = a + ((1:2^(k - 2)) - 0.5) * hk_1;
        R(k, 1) = 1 / 2 * (R(k - 1, 1) + hk_1 * sum(f(x)));
        
        for j = 2:k
            R(k, j) = (4 ^ (j - 1) * R(k, j - 1) - R(k - 1, j - 1)) / (4 ^ (j - 1) - 1);
        end
        R
        if abs(R(k - 1, k - 1) - R(k, k)) < error
            I = R(k, k);
            return;
        end
    end

    I = R(nmax, nmax);
end