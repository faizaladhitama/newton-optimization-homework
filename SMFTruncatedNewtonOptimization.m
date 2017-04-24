function out = SMFTruncatedNewtonOptimization(tN, tTol)
    
    if ~(tN == 1) && ~(tN == 2) && ~(tN == 3) && ~(tN == 4) && ~(tN == 5)
       error('Permitted value of parameter tN is 1, 2, 3, 4, or 5');
    elseif ~(tTol == 4) && ~(tTol == 6) && ~(tTol == 8) && ~(tTol == 10) && ~(tTol == 12)
       error('Permitted value of parameter tTol is 4, 6, 8, 10, 12');
    else
        n = 8^tN;
        tol = 10^-tTol;
        initialGuess = repmat([(3.141592653589793/2), -(3.141592653589793/2)], 1, n/2);
        initialGuess = initialGuess(1, :)';
  
        out = ncg(@(x)MichalewiczObjectiveFunctionGenerator(x, n), initialGuess);
    end
end
   
function [scalarFunctionValue, gradientFunction] = MichalewiczObjectiveFunctionGenerator(x, n)
        k = 0;
        scalarFunctionValue = double(-sum(subs(sin(x).*(sin((k * (x.^2)) / 3.141592653589793).^20), k, 1 : n)));
        gradientFunction = double(-subs(20*sin(x).*(sin((k * (x.^2))/3.141592653589793).^19).* ...
                           (((k*2)*x)/3.141592653589793).*cos((k * (x.^2)) /3.141592653589793) ...
                           + cos(x).*(sin((k * (x.^2)) /3.141592653589793).^20), k, 1:10));
end

