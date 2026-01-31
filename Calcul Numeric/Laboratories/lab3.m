% 1a

x = [0, 1, 2];
f = 1./(1+x);
z1 = divdiff(x, f)

% 1b

x = [0, 1, 2];
f = 1./(1+x);
df = -1./(1+x).^2;
[z2, t1] = divdiff2(x, f, df)


% 1c

x = linspace(1, 2, 11)
f = 1./(1+x);
df = -1./(1+x).^2;
z3 = divdiff(x, f)
[z4, t2] = divdiff2(x, f, df)


% 2a

x = [-2, -1, 0, 1, 2, 3, 4]
f = [-5, 1, 1, 1, 7, 25, 60]

z5 = divdiff(x, f)

% 2b

z6 = forwarddiff(x, f)

z7 = backworddiff(x, f)