function[x] = vector2(k)
    n = 8^k;
    x = zeros(n,1);
    seq = [3; -1; 0; 3];
    for i = 1:n
        m = mod(i,4);
        if(m == 0)
            m = 4;
        end
        x(i) = seq(m);
    end
end