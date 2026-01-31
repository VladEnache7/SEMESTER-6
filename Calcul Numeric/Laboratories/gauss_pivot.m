function x = gauss_pivot(A, b)
    [r, n] =  size(A);
    x = zeros(size(b));
    A = [A, b];
    for k = 1 : n-1 
        [v, p] = max(abs(A(k:n, k)));
        p = p + k - 1
        A([k p], :) = A([p k], :);
        for i = k + 1 : n
            c = A(i, k) / A(k, k);
            A(i, k:n+1) = A(i, k:n+1) - c * A(k, k:n+1);
        end
    end
    x = back_sub(A(:, 1:n), A(:, n+1))
 end
   