function[x] = vector1(k)
    n = 8^k;
    x = zeros(n,1);
    newPi = 3.141592653589793;
    for i = 1:n
        x(i) = newPi/2;
        if(mod(i,2) == 0)
            x(i) = -x(i);
        end
    end  
end