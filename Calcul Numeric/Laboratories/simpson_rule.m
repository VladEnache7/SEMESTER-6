function I = simpson_rule(f, a, b, n)
    h = (b - a) / (2 * n);
    I = h / 3 * (f(a) + f(b) + 4 * sum(f(a + (2 * [1:n] - 1) * h)) + 2 * sum(f(a + 2 * [1:n-1] * h)));
end