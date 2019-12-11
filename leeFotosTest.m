function fotosDic = leeFotosTest(path,numPer)
    numTestPPer = 1;
    fotosDic = cell(numPer,numTestPPer);

    for i = 1:numPer
        dir = sprintf('%s/%d_4.jpg',path,i);
        fotosDic{i,1} = double(imread(dir)); 
    end
end