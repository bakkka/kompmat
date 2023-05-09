function T = chebyshev(n)

    T_1 = 1;
    T_2 = [1, 0];
    
    if n ~= 0 && n ~= 1
        for i = 2:n
            tempT = conv(T_2, [2, 0]) - conv(conv(T_1, [0, 1]), [0, 1]);
            T_1 = T_2;
            T_2 = tempT;
        end
    
        T = T_2;
        T = T./2^(n-1);
    end

    if n == 0
        T = 1;
    end

    if n == 1
        T = [1, 0];
    end
    
    
end