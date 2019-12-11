function [media,A, nuevaBase] = aprendeBase(R)

    media = mean(R,2);
    A = R - media; %NumeroPixeles x NumeroFotos
    
% TRANSFORMACION DE KARHUNEN-LOEVE
    C = A'*A;   % NumeroFotos x NumeroFotos.
    
%     En la primera columna de eigenVectors tendremos el primer vector propio de la 
%     matriz, que estará asociado al valor propio almacenado en la 
%     posición (1,1) de la matriz eigenValues   -> NumeroFotos x NumeroFotos
    [eigenVectors,eigenValues] = eig(C);         % NumeroDimNuevaBase x NumeroFotos
    
    %nuevaBase = zeros(row,col);
    
    val1 = (A*eigenVectors); %  NumeroPixeles x NumeroFotos
    valDiag = diag(eigenValues.^(-0.5)); %  NumeroFotos x Uno
    %norma = sum(val1.^2,1);
    %nuevaBase = val1.*(norma);  % NumeroPixeles x NumeroFotos
    nuevaBase = val1.*(valDiag');  % NumeroPixeles x NumeroFotos
end