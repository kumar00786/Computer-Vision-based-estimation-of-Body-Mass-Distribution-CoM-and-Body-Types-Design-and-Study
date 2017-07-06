 
%% Opening the Image

original = imread('snowflakes.png');
se = strel('diamond',10);
afterOpening = imopen(image_thresholded,se);
% bw2 = afterOpening;
% bw2(BW>0.5) = 0;
% bw2(BW<0.5) = 1;
afterOpening2 = imopen(bw2,se);
%BW2 = imfill(afterOpening2);
BW2 = bwareaopen(bw2, 1000);
figure, imshow(BW2,[]);
BW3 = imfill(BW2);
% % % 
%% Closing the Image
% originalBW = imread('circles.png');
% imshow(originalBW);
closeBW = imclose(BW2,se);
figure, imshow(closeBW)
%% Erode the Image
originalBW = imread('text.png');
se = strel('line',11,90);
erodedBW = imerode(originalBW,se);
%% Erode Grayscale Image with Rolling Ball
originalI = imread('cameraman.tif');
se = offsetstrel('ball',5,5);
erodedI = imerode(originalI,se);
figure
imshow(originalI)
figure
imshow(erodedI)
%% Erode Binary Image on GPU
% Read binary image into the workspace.

originalBW = imread('text.png');
Create a structuring element.

se = strel('line',11,90);
erodedBW = imerode(gpuArray(originalBW),se);
figure, imshow(originalBW), figure, imshow(erodedBW)
Erode the image, creating a GPUarray.

erodedBW = imerode(gpuArray(originalBW),se);
Display the original image and the eroded image.

figure, imshow(originalBW), figure, imshow(erodedBW)


