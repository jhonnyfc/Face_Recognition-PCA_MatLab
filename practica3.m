clc
clear

%Lectura de todas las fotos de train para cada persona
numPer = 9;
numTrainPPer = 3;
s = what('Miercoles_Josean_procesado');
path = s.path;
[fotosDicTrain,imCol] = leeFotosTrain(path,numPer,numTrainPPer);

%Estudio y creacionde creacion de protoripo para Cara
fprintf("Autor: Jhonny Fabricio, Chicaiza Palomo\n");
fprintf("Face_Recognition\n");
fprintf("\n");

[media,A, nuevaBase] = aprendeBase(imCol);
prototipos = creaPrototipos(media,A, nuevaBase);

%Estudio de porcentaje de acirtos de las imagenes con las test
porcentajeAcietros = clasificar(nuevaBase, media, prototipos,path);

fprintf("\n");
fprintf("El porcentaje de aciertos es %f\n",porcentajeAcietros);
