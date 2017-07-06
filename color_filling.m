A= imread('front_filter1.jpg');
grayImage = rgb2gray(A);
BW = im2bw(grayImage,.39);
% for i= 700:1000
%     BW(:,i) = 1;
% end
image_thresholded = BW;
image_thresholded(BW>0.5) = 0;
image_thresholded(BW<0.5) = 1;
[x1,y1] = size(image_thresholded);
p=0;
q=0;
for i = 1:x1
	    for j = 1:y1
% 	    intensity=[intensity,image_thresholded(i,j)];   %to mak the intensity vector of the whole intensity
            if (image_thresholded(i,j)>0)
                %% to put the marker on the image in dynamically in the image
hold on; % Prevent image from being blown away.
plot(i,j,'r+', 'MarkerSize', 4);
%% to find the top point of the head
                      if (p<1)
                %[head_x,head_y]=ismember(i,j);
                head_x=i;
                head_y=j;
                         p=p+1;
                      end
                      %% to find the bottom point
                      for k=x1:1
                          for l=y1:1
                              if(q<1)
                                  tail_x=k;
                                  tail_y=l;
                                  q=q+1;
                              end
                          end
                      end
                      
                      
            end
            
	    end
	end