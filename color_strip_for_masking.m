
%% making of the Square red picture

r(1:581,1:1036)=0;
r=uint8(r);
g=r;
r(1:581,1:1036)=254;
r_full=cat(3,r,g,g);
%% making of the Strips of red and black
for j=1:581
    if rem(j,2)==0
          
       r(j,:,1)= 254;
        
    else
        r_full(j,:,1)=0;
    end
end
    %% to resize the image
    %%r_resize=imresize(r_full,[10,10]);
    % not done because it is changing the size of the image, therefore killing the purpose
%% reading the main image file 
A= imread('front_filter1.jpg');% to read the image before doing any operation
grayImage = rgb2gray(A);% to convert the image into gray scale
BW = im2bw(grayImage,.39);% to convert the image into binary form and 0.39 is the level of thereshold
%converting the image into double format so as to make the masking operation possbile
BW_double= double(BW);
%% converting the masking strip into double
%imA=double(r_full);  % converting the image into double
%% Now MAsking the image with strip formed in the first step 
for(i=1:3)
    r_full(:,:,i)=uint8(double(r_full(:,:,i)).*BW_double);
end
imshow(r_full);
%% finding the center of mass and length of the line in the image
% length=zeros(1,1000);    
% 
% 
% for i=1:581
%         count1=1;
%         for j=1:1036
%             count2=1;
%             if r_full(i,j)~=0
%             count1=count1+1;
%             
%             end
%         end 
%         r_full=r_full
%     end
%     
    