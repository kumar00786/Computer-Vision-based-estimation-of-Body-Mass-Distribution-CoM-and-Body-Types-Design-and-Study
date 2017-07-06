bin = rand(320, 200) > 0.5;
R   = 50;  % Value in range [0, 1]
G   = 0;
B   = 0;
RGB=[];
RGB1=[];
for i=1:100
    for j=100
  RGB = [RGB,((cat(3, bin(i,j) * R, bin(i,j) * G, bin(i,j) * B)))];
%   RGB(i,j,1)=re(i,j,1);
  RGB1 = [RGB1,RGB];
    end 
    
end
% % A = RGB1(:,:,1);
B = reshape(A,[10,505]);
% intensity=[intensity,image_thresholded(i,j)];