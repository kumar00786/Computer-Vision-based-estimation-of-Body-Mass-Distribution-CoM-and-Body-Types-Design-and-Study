%% to convert the image into the binary image
A= imread('front_filter1.jpg');% to read the image before doing any operation
grayImage = rgb2gray(A);% to convert the image into gray scale
BW = im2bw(grayImage,.39);% to conver the image into binary form and 0.39 is the level of thereshold
image_thresholded = ~BW; % to invert 
%% to find the Histogram of Oriented Graident 
% [hogFeature, visualization]= ...
%     extractHOGFeatures(imread('front_filter1.jpg'));
% figure;
% plot(visualization);title('HoG Feature');


%% to do the segmentation of the image with different color on each line of the image

% for i=1:size(J,1)
%     for j=1:size(J,2)
%         if BW(i,j)~=0
%         end
%     end
% end
% 
% redChannel=rgbImage(:,:,1);
% greenChannel=rgbImage(:,:,2);
% blue

            

%%
%to fill the image with the rainbow image
im=imread('rainbow_edited.jpg');
im=imresize(im,[581 1036]);
main_image_binary=double(BW);
for(i=1:3)
    im(:,:,i)=uint8(double(im(:,:,i)).*main_image_binary);
end
    imshow(im);
%     im_gray=rgb2gray(im);
% To draw the boundary box around the image 
st = regionprops(BW, 'BoundingBox' );
S = regionprops(front_extract,'BoundingBox','Area');
S=S(1).BoundingBox;
imshow(front_extract)
hold on
rectangle('Position',S,'EdgeColor','w'); 
figure, imshow('MY_IMAGE.jpg')

    