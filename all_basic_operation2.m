

%% Thresholding
% image_thresholded1=imresize(image_thresholded1,[256 256]);
ImBW = im2bw(im(:,:,2),.25);
% ImBW = medfilt2(ImBW,[7 7]);

S = regionprops(ImBW,'BoundingBox','Area');


imshow(im);
hold on
%// Identify battery as largest object
[MaxArea,MaxIndex] = max(vertcat(S.Area));

imshow(im,'InitialMagnification',20)

%// Display results and message
hold on

rectangle('Position',S(MaxIndex).BoundingBox,'LineWidth',2,'EdgeColor','y')

Length = S(MaxIndex).BoundingBox(3);
Height = S(MaxIndex).BoundingBox(4);

message = sprintf('The height is %0.2f pixels \nand length is %0.2f pixels',Height,Length);

h = msgbox(message);
%rectangle('Position',r,'Facecolor','g'); 
%    r.FaceColor = [0 .5 .5];
