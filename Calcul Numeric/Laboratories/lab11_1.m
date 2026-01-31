f = @(x) (1./(2 + sin(x)));


ans = romberg(f, 0, pi/2, 0.01, 10)