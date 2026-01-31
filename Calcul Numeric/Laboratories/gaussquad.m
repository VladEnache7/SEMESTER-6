function I = gaussquad(f, n)
    alpha_vector = zeros(n, 1)

    beta_vector = [2, (4 - [1:n-1].^(-2)).^(-1)];

    J = diag(alpha_vector) + diag(sqrt(beta_vector(2:n)), -1) + diag(sqrt(beta_vector(2:n)), 1) 

    [v, d] = eig(J);
    xk = diag(d)
    Ak = beta_vector(1) *  v(1, :).^2
    I = Ak * f(xk)
end