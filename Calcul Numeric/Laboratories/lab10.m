f = @(x) 1 ./ x;
a = 1;
b = 2;
n = 100;

rectangle = rectangle_rule(f, a, b, n)
trapezoid = trapezoid_rule(f, a, b, n)
simpson = simpson_rule(f, a, b, n)