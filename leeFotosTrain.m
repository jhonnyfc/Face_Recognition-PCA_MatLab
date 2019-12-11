function [fotosDic, imCol] = leeFotosTrain(path,numPer,numTrainPPer)

    fotosDic = cell(numPer,numTrainPPer);
    
    z = 1;
    for i = 1:numPer
        for j = 1:numTrainPPer
            dir = sprintf('%s/%d_%d.jpg',path,i,j);
            fotosDic{i,j} = imread(dir);
            imCol(:,z) = double(fotosDic{i,j}(:));
            z = z+1;
        end
    end
end