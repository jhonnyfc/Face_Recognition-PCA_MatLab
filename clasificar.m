function  porcentajeAcietros = clasificar(nuevaBase, media, prototipos,path)
    %leer la fot 4 de cada alumno y proyectarla en una nueva base
    numPer = 9;
    fotosDicTest = leeFotosTest(path,numPer);

    nAciertos =0;
    for i =  1:numPer
        imjV(:,1) = fotosDicTest{i,1}(:);

        imjV = imjV - media; % NumeroPixeles x Uno
        nuevaBaseT = nuevaBase'; % NumeroFotos x NumeroPixeles
                                     % NumeroDimNuevaBase x NumeroPixeles
        imjNBase = nuevaBaseT*imjV;% NumeroDimNuevaBase x Uno
        distancias = sum((imjNBase - prototipos).^2,1);
        
        [valueMin,indxMin] = min(distancias);

        fprintf("La foto: %d se ha identificado como la foto: %d ~> la distancia es %f\n",i,indxMin,valueMin);
        if (i == indxMin)
            nAciertos = nAciertos + 1;
        end
    end
    porcentajeAcietros = nAciertos/numPer;

end