
% ex 1



% <----------> ex 2 a <---------->

x = linspace(-1, 3/2);

nodes = [-1, -1/2, 0, 1/2, 1, 3/2];

f = @(x) x.*sin(pi*x);

splineBoar = spline(nodes, f(nodes), x);
completeSpline = spline(nodes, [pi, f(nodes), -1], x);
piecewiseHermite = pchip(nodes, f(nodes), x);

%hold on
%plot(x, f(x));
%plot(x, splineBoar);
%plot(x, completeSpline);
%plot(x, piecewiseHermite);
%plot(nodes, f(nodes), "o")
%hold off

% <----------> ex 3 <---------->

x01 = [0.5, 1.5, 2, 3, 3.5, 4.5, 5, 6, 7, 8];
f1 = [5, 5.8, 5.8, 6.8, 6.9, 7.6, 7.8, 8.2, 9.2, 9.9];

%scatter(x01, f1);
hold on

%p = polyfit(x01, f1, 1);
%aprox = polyval(p, x01)
%plot(x01, aprox)

%error = norm(f1 - aprox)

%y = polyval(p, 4)


% <----------> ex 1 <---------->

nodes2 = linspace(-2, 4, 7);

f2 = @(x) ((x + 1) ./ (3*x.^2+2*x+1));
dif2 = @(x) (-1.*((3*x.^2+6*x+1) ./ ((3*x.^2 + 2*x + 1).^2)));

x2 = linspace(-2, 4);

splineBoar2 = spline(nodes2, f2(nodes2), x2);
lagrange = newton(nodes2, f2(nodes2), x2);
hermiteSpline = hermite(nodes2, f2(nodes2), dif2(nodes2), x2)

scatter(nodes2, f2(nodes2), 'o')
plot(x2, f(x2))
plot(x2, splineBoar2)
plot(x2, lagrange)
plot(x2, hermiteSpline, 'purple')
