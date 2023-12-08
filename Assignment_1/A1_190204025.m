I = imread('img.jpg');
figure(1);
imshow(I);

% Creating mirror img
MiI = I(:, (end:-1:1), :); 
figure(2);
imshow(MiI);

% Merging the imgs
MrgImg = cat(2,I,MiI);
figure(3);
imshow(MrgImg);

imwrite(MrgImg,'N:\4.2_Matlab\assignment 1\output.jpg');
