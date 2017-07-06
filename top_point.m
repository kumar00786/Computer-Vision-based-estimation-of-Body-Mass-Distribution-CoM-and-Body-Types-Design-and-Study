function [top_x,top_y] = top_point(x1,y1)
[x1,y1] = size(new_image);
    p=0;
   for i = 1:x1
	    for j = 1:y1
                if (image_thresholded(i,j)>0)                                                   % 	    intensity=[intensity,image_thresholded(i,j)];   %to mak the intensity vector of the whole intensity
            
%% to find the top point of the head
                      if (p<1)
                %[head_x,head_y]=ismember(i,j);
                top_x=i;
                top_y=j;
                         p=p+1;
                      end
            end
            
	    end
	end