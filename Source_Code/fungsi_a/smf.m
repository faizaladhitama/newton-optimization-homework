function[f,g] = smf(x)
    [n,k] = size(x);
    f = 0;
    g = zeros(n,1);
    newPi = 3.141592653589793;
    for i = 1:n
        value = i * x(i) * x(i) / newPi;
        f = f - sin(x(i)) * (sin(value))^20;
        g(i) = -cos(x(i)) * sin(value) - 40 * i * x(i) / newPi * sin(x(i)) * (sin(value))^19 * cos(value);
    end 
end