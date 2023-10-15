mandImage = imread('Mand.tiff');

colorImage = demosaic(mandImage, 'grbg');

imshow(colorImage);