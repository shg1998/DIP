mandImage = imread('Mand.tiff');

colorImage = uint8(zeros(size(mandImage, 1), size(mandImage, 2), 3));

% Generate the Color Image Using the Nearest Neighbor Method
for i = 1:size(mandImage, 1) % iterate on rows :)
    for j = 1:size(mandImage, 2) % iterate on columns :)
        pixelValue = mandImage(i, j);
        if pixelValue < 64
            color = [255, 0, 0]; % Red 🟥
        elseif pixelValue < 128
            color = [0, 255, 0]; % Green 🟩
        elseif pixelValue < 192
            color = [0, 0, 255]; % Blue 🟦
        else
            color = [255, 255, 255]; % White ⬜
        end
        
        colorImage(i, j, :) = color;
    end
end

imshow(colorImage);
