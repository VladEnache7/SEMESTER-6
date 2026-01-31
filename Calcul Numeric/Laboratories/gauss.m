function [x, nit] = gauss(A, b, x0, err, maxint)

    D = diag(diag(A));
    L = -tril(A, -1);
    U = -triu(A, 1);
    M = D - L;   
    N = U;


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