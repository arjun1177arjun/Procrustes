ptsx = read_shape('30542618_1.pts',68);
ptsy = read_shape('296961468_1.pts',68);
[d,ptsz,transform] = procrustes(ptsx,ptsy);
y = imread('296961468_1.jpg');
c = transform.c;
T = transform.T;
b = transform.b;
q = y;	
imshow(q);
minx = min(ptsy(:,1));
miny = min(ptsy(:,2)); 
maxx = max(ptsy(:,1));
maxy = max(ptsy(:,2));
minx = floor(minx);
miny = floor(miny);
maxx = ceil(maxx);
maxy = ceil(maxy);
c = c(1,:);
[s,t,w]=size(y)
size(q);
for j=minx:maxx
	for i=miny:maxy
		flag = b*[i,j]*T + c;
        flag = round(flag);
		if(flag(1)>0 && flag(2)>0 && flag(1)<=s && flag(2)<=t)
		q(flag(1),flag(2),:)=y(i,j,:);
		q(i,j,:)=0;
		else
		q(i,j,:)=0;
		end
	end
end
size(q)
imshow(q);
