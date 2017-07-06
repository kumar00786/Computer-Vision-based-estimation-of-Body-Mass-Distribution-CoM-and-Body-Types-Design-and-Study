
I = imread('rice.png');
imshow(I)

background = imopen(I,strel('disk',15));
figure
surf(double(background(1:8:end,1:8:end))),zlim([0 255]);
set(gca,'ydir','reverse');

I2 = I - background;
imshow(I2)

I3 = imadjust(I2);
imshow(I3);
level = graythresh(I3);
bw = im2bw(I3,level);
bw = bwareaopen(bw, 50);
imshow(bw)