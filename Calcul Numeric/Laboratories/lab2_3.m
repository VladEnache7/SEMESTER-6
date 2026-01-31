
syms x;

% <-------------------> Ex 3 a <-------------------> 
f = log(1 + x);
Tf1 = taylor(f, x, 0, 'Order', 3);
Tf2 = taylor(f, x, 0, 'Order', 6);

figure;
ezplot(f, [-0.9, 1])
hold on
ezplot(Tf1, [-0.9, 1])
hold on
ezplot(Tf2, [-0.9, 1])

% <-------------------> Ex 3 b <-------------------> 

Tf = taylor(f, x, 0, 'Order', 20000);
a = subs(Tf, x, 1);
vpa(a, 5)


% <-------------------> Ex 3 c <-------------------> 
f3 = log(1 - x);
Tf3 = taylor(f, x, 0, 'Order', 7);

figure;
ezplot(Tf3, [-0.9, 1])


% <-------------------> Ex 3 d <-------------------> 
Tf4 = taylor(f-f3, x, 0, 'Order', 7);
ezplot(Tf4, [-0.9, 1])


% <-------------------> Ex 3 e <-------------------> 
Tf5 = taylor(f-f3, x, 0, 'Order', 8);
a = subs(Tf4, x, 1/3);
vpa(a, 6)