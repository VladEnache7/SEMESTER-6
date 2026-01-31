
% <---------------> 1a <---------------> 
classical_louis([1, 2, 3], [1, 4, 9], 5)

% <---------------> 1b <---------------> 
x0 = linspace(-2, 4, 10);
f = @(x)(x+1)./(3*x.^2 + 2*x + 1);

hold on
% figure;
%plot(x0, f(x0), 'o')

x = linspace(-2, 4, 500);

%plot(x, f(x));
% figure;
louis = classical_louis(x0, f(x0), x)
%plot(x, louis);

% <---------------> 1c <--------------->
error = abs(f(x) - louis);
figure;
%plot(x, error)

max(error)

% <---------------> 3 <--------------->

classical_louis([100, 121, 144], [10, 11, 12], 118);

% <---------------> 2 <--------------->

barycentric([1, 2, 3], [1, 4, 9], 5);
barycentric([1980, 1990, 2000, 2010, 2020], [4451, 5287, 6090, 6970, 7821], [2005, 2015]);

% <---------------> Optional <--------------->

f = @(x)(abs(x) - 1/2*x - x.^2);

x01 = linspace(-10, 10, 10);
x02 = linspace(-10, 10, 20);

x1 = linspace(-10, 10, 500)
hold on

louis = barycentric(x01, f(x01), x1)
plot(x01, f(x01), 'o')
plot(x1, louis, 'green')
plot(x1, f(x1), 'red')
