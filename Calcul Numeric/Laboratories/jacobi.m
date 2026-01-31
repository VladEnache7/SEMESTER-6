function [x, nit] = jacobi(A, b, x0, err, maxint)
    M = diag(diag(A));
    N = M - A;
    T = inv(M) * N;
    c = inv(M) * b;
    
    
    for k=1:maxint
        x = T * x0 + c;
        if norm(x - x0) <= (1 - norm(T)) / norm(T) * err
            nit = k;
            return;
        end
        x0 = x
    end
    error('no solution')
end