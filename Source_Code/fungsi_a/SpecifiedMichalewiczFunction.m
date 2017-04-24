function [y,z] = SpecifiedMichalewiczFunction(x,t)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
if (nargin < 2), t = 1; end
n = power(8,t);
temp = 0;
for i=1:n
    temp_x = x;
    if mod(n,2) == 1
        temp_x = x(0);
    else
        temp_x = x(1);
    end
    temp = temp + sin(temp_x)*power(sin(i*power(temp_x,2)/pi),20);
end
y = -temp;
z = gradient(y);
end