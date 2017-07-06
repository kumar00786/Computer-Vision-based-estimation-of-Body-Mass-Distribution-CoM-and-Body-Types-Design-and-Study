
A= imread('first.jpg');
grayImage = rgb2gray(A);
% BW1 = edge(grayImage,'Canny');
% BW = imbinarize(grayImage);
% s=graythresh(grayImage)
BW = im2bw(grayImage,.37);
% SE = strel('rectangle',[5 5]);
se = strel('disk',10);
image_thresholded = BW;
for i= 700:1000
    BW(:,i) = 1;

end
% for i= 700:1000
%     BW(:,i) = 1;
% 
% end

% closeBW = imclose(BW,se);
figure, imshow(BW)
BW2 = imerode(BW,SE);
figure
imshow(BW2)
BW3 = imdilate(BW2,SE);
imshow(BW3)

% [row, column] = find(image_thresholded == 1);
% image_thresholded = BW;
% image_thresholded(BW>0.5) = 0;
% image_thresholded(BW<0.5) = 1;
% % display result
% % figure()
% % % subplot(1,2,1)
% % imshow(my_image,[])
% title('original image')
% % subplot(1,2,2)
% imshow(image_thresholded,[])
