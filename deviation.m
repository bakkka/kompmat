function deviation = deviation(X, Y, P)

    deviation = 0;

    for i = 1:length(X)
        currentDeviation = abs(Y(i) - P(i));
        if currentDeviation > deviation 
            deviation = currentDeviation;
        end
    end
end