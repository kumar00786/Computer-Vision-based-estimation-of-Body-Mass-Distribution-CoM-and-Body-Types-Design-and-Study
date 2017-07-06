grayImage = imread('cameraman.tif'); % Read in image.
% Figure out where to divide it.
[rows, columns, numberOfColorChannels] = size(grayImage);
r3 = int32(rows/3);
c3 = int32(columns/3);
% Extract the 9 images.
image1 = grayImage(1:r3, 1:c3);
image2 = grayImage(1:r3, c3+1:2*c3);
image3 = grayImage(1:r3, 2*c3+1:end);
image4 = grayImage(r3+1:2*r3, 1:c3);
image5 = grayImage(r3+1:2*r3, c3+1:2*c3);
image6 = grayImage(r3+1:2*r3, 2*c3+1:end);
image7 = grayImage(2*r3+1:end, 1:c3);
image8 = grayImage(2*r3+1:end, c3+1:2*c3);
image9 = grayImage(2*r3+1:end, 2*c3+1:end);
% Display the 9 images.
subplot(3,3,1);
imshow(image1);
subplot(3,3,2);
imshow(image2);
subplot(3,3,3);
imshow(image3);
subplot(3,3,4);
imshow(image4);
subplot(3,3,5);
imshow(image5);
subplot(3,3,6);
imshow(image6);
subplot(3,3,7);
imshow(image7);
subplot(3,3,8);
imshow(image8);
subplot(3,3,9);
imshow(image9);