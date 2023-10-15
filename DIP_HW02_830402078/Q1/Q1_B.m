mandImage = imread('Mand.tiff');

[rows, cols] = size(mandImage);

R = zeros(rows, cols);
G = zeros(rows, cols);
B = zeros(rows, cols);

for i = 1:rows
    for j = 1:cols
        if mandImage(i, j) < 128
            R(i, j) = 255;
        else
            G(i, j) = 255;
        end
    end
end

colorImage = cat(3, R, G, B);

imshow(colorImage);