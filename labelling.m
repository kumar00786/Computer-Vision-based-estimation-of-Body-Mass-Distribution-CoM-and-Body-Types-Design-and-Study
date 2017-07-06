A= imread('Upper_body_front.png');
grayImage = rgb2gray(A);
 BW = imbinarize(grayImage);
%BW = imbinarize(grayImage, 'adaptive');
%  BW = imbinarize(grayImage,'adaptive','ForegroundPolarity','dark','Sensitivity',0.4);


imshow(BW)


my_image =BW;
for R=1:num of Rows
    for C=1:num of Columns
        pixel=my_image(R,C);
        if pixel<0.50000000 , pixel=0.000000000;, end
        if pixel>3.00000000 , pixel=256;, end
        thresh(R,C)=pixel;
    end
end
im_thresh=mat2gray(thresh);
figure,imshow(im_thresh);
title('thresholding');

sob = edge(grayImage,'canny',.2);
imshow(sob);
cann = edge(grayImage,'Canny');
prew = edge(grayImage,'Prewitt');
rob= edge(grayImage,'Roberts');
lo= edge(grayImage,'log');
% avg=(sob+cann+prew+rob+lo);
% imshow(avg);
% B=im2bw(A);
% figure
% imshow(sob);
% figure
% imshow(cann);
% figure 
% imshow(prew);
% figure 
% imshow(rob);
% figure 
% imshow(lo);
% C= imfill(B,'holes');
% imshow(C);


label = bwlabel(C);


for j = 1:max(max(max(label)))
    [row,col]= find (label==j);
    len= max(row)- min(row)+2;
    breadth=max(col)-min(col)+2;
    target=uint8(zeros([len breadth]));
    sy=min(col)-1;
    sx=min(row)-1;
    
    for i = 1:size(row,1)
      
        k=i*100;
        x= row(k,1)-sx;
        y= col(k,1) - sy;
        target(x,y)=A(row(k,1),col(k,1));
    end
    mytitle=strcat('object number:',num2str(j));
    figure,imshow(target);title(mytitle);
end
    