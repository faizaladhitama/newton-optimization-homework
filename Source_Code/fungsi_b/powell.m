function[f,g] = powell(x)
    [n,unused] = size(x);
    g = zeros(n,1);
    f = 0;
    for i = 1:(n/4)
        fouri = 4 * i;
        tmp1 = x(fouri-3) + 10 * x(fouri-2);
        tmp2 = x(fouri-1) - x(fouri);
        tmp3 = x(fouri-2) - 2 * x(fouri-1);
        tmp4 = x(fouri-3) - x(fouri);
        f = f + tmp1^2 + 5 * tmp2^2 + tmp3^4 + 10 * tmp4^4;
        g(fouri-3) = 2*(x(fouri-3) + 10*x(fouri-2)) + 40*(x(fouri-3) - x(fouri))^3;
        g(fouri-2) = 20*(x(fouri-3)+ 10*x(fouri-2)) + 4*(x(fouri-2) - 2*x(fouri-1))^3;
        g(fouri-1) = 10*(x(fouri-1) - x(fouri)) - 8*(x(fouri-2) - 2*x(fouri-1))^3;
        g(fouri) = -10*(x(fouri-1) - x(fouri)) - 40*(x(fouri-3) - x(fouri))^3;
    end
end