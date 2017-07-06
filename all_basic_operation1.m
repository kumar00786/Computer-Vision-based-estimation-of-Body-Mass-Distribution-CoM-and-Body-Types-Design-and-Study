% im=imread('rainbow.jpg');
% im=imresize(im,[256 256]);
% im1=rgb2gray(im);
% %% Thresholding
% after_canny=imresize(i,[256 256]);
% 
% % r=regionprops(after_canny);
% % r=r(2).BoundingBox;
% % % [start,finish] = H5S.get_select_bounds(r(2));
% % imshow(after_canny);
% % hold on
% % rectangle('Position',r,'Facecolor','g'); 
% % %    r.FaceColor = [0 .5 .5];
S = regionprops(front_extract,'BoundingBox','Area');
S=S(1).BoundingBox;
imshow(front_extract)
hold on
rectangle('Position',S,'EdgeColor','w'); 
% Undefined function or variable 'r'.
%  
% rectangle('Position',S,'Facecolor','g');

