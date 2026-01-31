
% <-------------------> Ex 1 a <-------------------> 
% Define x as a symbolic variable  
syms x  

% Define the function  
f = exp(x);  

% Create the Taylor approximations  
Tf1 = taylor(f, x, 'Order', 2); % Degree 1 Taylor polynomial  
Tf2 = taylor(f, x, 'Order', 3); % Degree 2 Taylor polynomial  
Tf3 = taylor(f, x, 'Order', 4); 
Tf4 = taylor(f, x, 'Order', 5); 

% Convert symbolic expressions to MATLAB functions for plotting  
f_plot = matlabFunction(f);  
Tf1_plot = matlabFunction(Tf1);  
Tf2_plot = matlabFunction(Tf2);  
Tf3_plot = matlabFunction(Tf3);  
Tf4_plot = matlabFunction(Tf4);  

legend('show'); 

% Define the range for x  
x_vals = linspace(-3, 3, 1000);  

% Plot the function and the Taylor approximations  
figure;  
hold on;  
plot(x_vals, f_plot(x_vals), 'LineWidth', 3);  
plot(x_vals, Tf1_plot(x_vals));  
plot(x_vals, Tf2_plot(x_vals));  
plot(x_vals, Tf3_plot(x_vals));  
plot(x_vals, Tf4_plot(x_vals));  
hold off;

% <-------------------> Ex 1 b <-------------------> 

exp(1);
vpa(exp(1), 7)