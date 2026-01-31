n = 7;
A = 5 * eye(n) - diag(ones(1, n-1), 1) - diag(ones(1, n-1), -1);
b = [4, 3*ones(1, n-2), 4]';
maxint = 1000;
x0 = zeros(size(b));
err = 10^-5;

% exercise 1 - jacobi
[x, nit] = jacobi(A, b, x0, err, maxint)

% exercise 1 - gauss
[x, nit] = gauss(A, b, x0, err, maxint)

% exercise 2 a
A = [10, 7, 8, 7; 7, 5, 6, 5; 8, 6, 10, 9; 7, 5, 9, 10];
b = [32, 23, 33, 31]';
x0 = zeros(size(b));

x = mldivide(A, b)

% exercise 2 b
b2 = [32.1, 22.9, 33.1, 30.9]';
x2 = mldivide(A, b2)

input_error = norm(b - b2) / norm(b)
output_error = norm(x - x2) / norm(x)

% exercise 2 c

A2 = [10, 7, 8.1, 7.2; 7.8, 5.04, 6, 5; 8, 5.98, 9.89, 9; 6.99, 4.99, 9, 9.98];
x3 = mldivide(A2, b);
input_error2 = norm(A - A2) / norm(A)
output_error2 = norm(x - x3) / norm(x)

norm(A) * norm(inv(A))