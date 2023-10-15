% FullName : MohammadHossein Nejadhendi
% Student Number : 830402078
% Question Number : 1
% Homework 1

RGB_DIMS_COUNT = 3;
[fileName, pathName] = uigetfile({'*.mat'}, 'Select Your Prefered Image Files', 'MultiSelect', 'on');

if iscell(fileName)
    imagesCount = numel(fileName);
else
    fileName = {fileName};
    imagesCount = 1;
end

for i = 1:imagesCount
    imageFileFullPath = fullfile(pathName, fileName{i});
    
    imageStruct = load(imageFileFullPath);
    
    fieldNames = fieldnames(imageStruct);
    
    % Assuming there's only one image in the .mat file, select the first field
    if numel(fieldNames) > 0
        % Extract the image data from the loaded structure (using the first field)
        image = imageStruct.(fieldNames{1});
        
        % Check if the loaded data is RGB; if so, convert it to grayscale
        if ndims(image) == RGB_DIMS_COUNT && size(image, RGB_DIMS_COUNT) == RGB_DIMS_COUNT
            image = rgb2gray(image);
        end
        
        figure;
        imshow(image);
        
        min_Intensity = min(image(:));
        max_Intensity = max(image(:));
        
        fprintf('Minimum intensity of this image: %d\n', min_Intensity);
        fprintf('Maximum intensity of this image: %d\n', max_Intensity);
    else
        fprintf('Gerefti Maa ro?!');
    end
end
