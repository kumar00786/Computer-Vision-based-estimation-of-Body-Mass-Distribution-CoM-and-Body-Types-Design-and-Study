img=imread('Square.jpg');
img_edge=edge(img);
clc;
clear all;
close all;
I=imread(img);
subplot 334
imshow(I);
[r c p]= size(I);%r-rows,c-columns,p-planes
A=I(1:r/2,1:c/2,:);
B=I(1:r/2,c/2+1:c,:);
C=I(r/2+1:r,1:c/2,:);
D=I(r/2+1:r,c/2+1:c,:);
subplot 332
imshow(A);
title('Image part 1');
subplot 333
imshow(B);
title('Image part 2');
subplot 335
imshow(C);
title('Image part 3');
subplot 336
imshow(D);
title('Image part 4');