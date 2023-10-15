% FullName : MohammadHossein Nejadhendi
% Student Number : 830402078
% Question Number : 2
% Homework 1
data = load('s.txt');
total_file_members = numel(data);
columns_count = 8; % You can choose any number, but i think 10 is the best :)
rows_count = ceil(total_file_members / columns_count);
matrix = zeros(rows_count, columns_count);
matrix(1:total_file_members) = data;
% Draw the final image
colormap(gray);
imshow(matrix);
axis equal;
