U = [2, 4, 2; 0, -1, 1; 0, 0, -1];
b1 = [8; 0; -1];
back_sub(U, b1)

% exercise 1
A = [2, 1, -1, -2; 4, 4, 1, 3; -6, -1, 10, 10; -2, 1, 8, 4];
b2 = [2, 4, -5, 1]';
gauss_pivot(A, b2);

n = 6 
A2 = 5 * eye(n) - diag(ones(1, n-1), 1) - diag(ones(1, n-1), -1);
b = [4, 3*ones(1, n-2), 4]';

[L, U, P] = lu(A2)

y = forw_sub(L, P*b)
x = back_sub(U, y)