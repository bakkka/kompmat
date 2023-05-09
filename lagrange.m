function L = lagrange(x, y)
    
    
    n = length(x);
    
    L = zeros(1, n);
    
    for k = 1:n
        A = 1;
        for j = 1:n
            if j ~= k
                A = conv(A, [1/(x(k)-x(j)), -x(j)/(x(k)-x(j))]);
            end
        end
        L = L + y(k) * A;
    end
end
