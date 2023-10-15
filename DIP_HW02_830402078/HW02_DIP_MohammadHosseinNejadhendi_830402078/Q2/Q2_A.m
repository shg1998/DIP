fileID = fopen('imgdrv.txt', 'rb');

if fileID == -1
    error('نمی‌توان فایل را باز کرد.');
end

numLines = 435;
lineLength = 580;

data = fread(fileID, [lineLength, numLines], 'uchar=>char')';

fclose(fileID);

imageData = uint8(data);

imshow(imageData);
title('Image 😊')
