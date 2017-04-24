function out = PFTruncatedNewtonOptimization(tN, tTol)
    
    if ~(tN == 1) && ~(tN == 2) && ~(tN == 3) && ~(tN == 4) && ~(tN == 5)
       error('Permitted value of paramter tN is 1, 2, 3, 4, or 5');
    elseif ~(tTol == 4) && ~(tTol == 6) && ~(tTol == 8) && ~(tTol == 10) && ~(tTol == 12)
       error('Permitted value of paramter tTol is 4, 6, 8, 10, 12');
    else
        n = 8^tN;
        tol = 10^-tTol;
        initialGuess = repmat([3,-1, 0, 3,], 1, n/4);
        initialGuess = initialGuess(1, :);
  
        out = ncg(@(x)MichalewiczFunctionGenerator(x, n), initialGuess);
    end
end
   
function [scalarFunctionValue, gradientFunction] = MichalewiczFunctionGenerator(x, n)
        k = 0;
        scalarFunctionValue = 
        
        scalarFunctionValue = (x(1, 4*i-3) + 10*x(1, 4*i-2))^2 + ...
                              5*(x(1, 4*i-1)- x(1, 4*i))^2 + ...
                              (x(1, 4*i-2) - 2*x(1, 4*i-1))^4 + ...
                              10*(x(1, 4*i-3) - x(1, 4*i))^4
        
        
     
end

