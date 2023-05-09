function t = newton(x, y)


    n = length(x);
    h = abs(x(2) - x(1));
    d = y;
    for i = 2:n
        for j=n:-1:i
            d(j) = (d(j) - d(j-1)) / (x(j) - x(j-i+1));
        end
    end
   
    t = d(1);

    for i = 1:n-1

        f = d(i+1);
        for j = 1:i
            f = conv(f, [1, -x(j)]);
        end
            t = conv(t, [0, 1]);
        t = t + f;
    end
end