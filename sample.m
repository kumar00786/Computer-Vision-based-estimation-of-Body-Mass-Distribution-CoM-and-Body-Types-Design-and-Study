 length=sum(r_full~=0,2);
length=sum(r_full(:,:,1)~=0,2);
imGPU = (r_full);
figure


hold on
for i=34:581
    count1=1;
    count2=1;
    for j=200:700
       
    if imGPU(i,j,1)~=0
        count2=count2+1;
        plot(j,i,'black.-', 'markersize', 1)
    end

    end
    if count2~=1
    plot((j-(count2/2)),(i-(count2/2)),'blue.-', 'markersize', 1)
    end
end
hold off