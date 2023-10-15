file_path = 'imgdrv.txt';

fid = fopen(file_path, 'rb');

if fid == -1
    error('خطا در باز کردن فایل.');
end

num_rows = 435;
num_columns = 580;

data = fread(fid, [num_columns, num_rows], 'uint8')';

fclose(fid);

imshow(uint8(bitshift(data, 8 - 5)), []);
