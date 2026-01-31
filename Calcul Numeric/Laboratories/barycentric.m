function L = barycentric(x0, f0, x)
    L = zeros(size(x));
    l = zeros(size(x0));    
    for i=1:length(x)
        u = prod(x(i) - x0);
        for j=1:length(x0)   
            l(j) = 1 / prod(x0(j) - x0([1:j-1,j+1:length(x0)])) / (x(i) - x0(j));
        end
        L(i) = u * sum(l .* f0);
    end

end