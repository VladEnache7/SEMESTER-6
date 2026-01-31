
% <-------------------> Ex 2 a <-------------------> 
% Define x as a symbolic variable  
syms x  

% Define the function  
f = sin(x);  

% Create the Taylor approximations  
Tsin3 = taylor(f, x, 'Order', 4); % Degree 1 Taylor polynomial  
Tsin5 = taylor(f, x, 'Order', 10); % Degree 2 Taylor polynomial  

% Convert symbolic expressions to MATLAB functions for plotting  
f_plot = matlabFunction(f);  
Tsin3_plot = matlabFunction(Tsin3);  
Tsin5_plot = matlabFunction(Tsin5);  
  
% Define the range for x  
x_vals = linspace(-pi, pi, 500);  

% Plot the function and the Taylor approximations  
figure;  
hold on;  
plot(x_vals, f_plot(x_vals), 'LineWidth', 3);  
plot(x_vals, Tsin3_plot(x_vals));  
plot(x_vals, Tsin5_plot(x_vals));  
hold off;


% <-------------------> Ex 2 b <-------------------> 

vpa(sin(pi/5), 6)

% <-------------------> Ex 2 c <-------------------> 

sin(pi/3)
Tsin5_plot(pi/3)