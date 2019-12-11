function prototipos = creaPrototipos(media,A, nuevaBase)
    nuevaBaseT = nuevaBase'; % NumeroFotos x NumeroPixeles
    % A = NumeroPixeles x NumeroFotos
    
    W = nuevaBaseT*A; % NumeroFotos x NumeroFotos
                      % NumeroDimNuevaBase x NumeroFotos
    
    j = 1;
    for i = 1:3:size(W,1)
        prototipos(:,j) = mean(W(:,i:i+2),2); % NumeroFotos x Uno  ~> Omega
        j = j+1;
    end
end