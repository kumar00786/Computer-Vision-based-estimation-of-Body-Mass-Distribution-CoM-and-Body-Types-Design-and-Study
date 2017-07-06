% imshow(image_thresholded);
[x1,y1] = size(final_image);
% top_point(x1,y1)
% bottom_point(x1,y1)
% intensity=[];
% b=zeros(x1,y1);

    p=0;
%    for i = 1:x1
% 	    for j = 1:y1
%                 if (final_image(i,j)>0)                                                   % 	    intensity=[intensity,image_thresholded(i,j)];   %to mak the intensity vector of the whole intensity
%             
% %% to find the top point of the head
%                       if (p<1)
%                 %[head_x,head_y]=ismember(i,j);
%                 top_x=i;
%                 top_y=j;
%                          p=p+1;
%                       end
%             end
%             
% 	    end
%    end
%    
   
   
   figure
	for i = 1:x1
	    for j = 1:y1
% % % 	    intensity=[intensity,image_thresholded(i,j)];   %to mak the intensity vector of the whole intensity
            if (final_image(i,j)>0)
                %% to put the marker on the image in dynamically in the image
%hold on; % Prevent image from being blown away.
final_image(i,j)=150;

% plot(j,i,'r+', 'MarkerSize', 4);
%% to find the top point of the head
                      if (p<1)
                head_x=i;
                head_y=j;
                   p=p+1;
                      end
            end
            
	    end
	end