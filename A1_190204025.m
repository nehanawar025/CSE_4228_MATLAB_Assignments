I = imread('img.jpg');
figure(1);
imshow(I);

% Converting to Grayscale
GI = rgb2gray(I);
figure(2);
imshow(GI);

% Creating mirror img
MiI = GI(:, (end:-1:1), :); 
% figure(3);
% imshow(MiI);

% Merging the imgs
[rows, cols] = size(GI);
MrgImg = zeros(rows, 2 * cols, 'uint8');
MrgImg(:, 1:cols) = GI;
MrgImg(:, cols+1:end) = MiI;
figure(3);
imshow(MrgImg);

imwrite(MrgImg,'N:\4.2_Matlab\assignment 1\output.jpg');



