clear all;
data=load('plot3d.txt');
x=data(:,1);
y=data(:,2);
z=data(:,3);
figure(1);
t=100;
for degree=1:250
   clf;
   plot3(x,y,z,".");
   xlabel('Perpendicular');
   ylabel('Base');
   zlabel('Area of Right-Angled Triangle');
   axis([0 100 0 100 0 1500]);
   view(degree,30 + 15* sin(degree/60));
   plotname=['scatter_t',num2str(t),'.png']; 
   print(plotname,'-dpng');
   t=t+1;
end;

