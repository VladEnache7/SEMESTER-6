f = @(t) 2 / sqrt(pi) * exp(- t .* t);

m = 4;
error = 0.1;

for b = 0.1:0.1:1
    aprox = ad_trapezoid(f, 0, b, error, m)
    real = integral(f, 0, b)
end



