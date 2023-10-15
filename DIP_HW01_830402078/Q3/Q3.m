% FullName : MohammadHossein Nejadhendi
% Student Number : 830402078
% Question Number : 3
% Homework 1

% Question 3 A : 

%panel = zeros(512, 512);
%imshow(panel);
%axis equal;

% Question 3 B : 

% Create a 512x512 panel with zero values
panel = zeros(512, 512);

centers = [200, 200;
           200, 400;
           248, 300;
           200, 300;
           232, 200;
           264, 400];

radiuses = 16 * ones(1, length(centers));

% Draw the circles on the image
imshow(panel);
hold on; % Keep the current image for adding circles to it
viscircles(centers, radiuses, 'EdgeColor', 'g', 'LineWidth', 1); 
title('Circles in Quesion 3');

% Release the image from the hold state
hold off;

