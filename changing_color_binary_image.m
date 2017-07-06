% read in tiff image and convert it to double format
% BW = im2double(imread('man_image.tif'));
% BW = BW(:,:,3);
% perform thresholding by logical indexing
image_thresholded = BW;
image_thresholded(BW>0.5) = 0;
image_thresholded(BW<0.5) = 1;
% display result
% figure()
% % subplot(1,2,1)
% imshow(my_image,[])
title('original image')
% subplot(1,2,2)
imshow(image_thresholded,[])

se = strel('disk',5);

afterOpening = imopen(original,se);
figure, imshow(afterOpening,[]);


% SE = strel('rectangle',[40 30]);
% title('thresholded image')
% if ()