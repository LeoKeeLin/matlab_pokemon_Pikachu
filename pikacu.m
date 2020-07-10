clear
close all
figure
[x,y,z]=sphere(20);
surf(x*1.5,y*1.5,z,'FaceColor','y','EdgeColor','none');

hold on
surf(x*0.2-0.3,y*.2-1.2,z*0.2+0.5,'FaceColor','k','EdgeColor','none');
surf(x*0.2-1.2,y*.2-0.3,z*0.2+0.5,'FaceColor','k','EdgeColor','none');
surf(x*0.08-0.4,y*.08-1.3,z*0.08+0.6,'FaceColor','w','EdgeColor','none');
surf(x*0.08-1.3,y*.08-0.4,z*0.08+0.6,'FaceColor','w','EdgeColor','none');
surf(x*0.5-1.05,y*0.5,z*0.5,'FaceColor','r','EdgeColor','none');
surf(x*0.5,y*0.5-1.05,z*0.5,'FaceColor','r','EdgeColor','none');




[x2,y2,z2] = cylinder([0.3 0.15],20);
s = surf(x2+0.8,y2,z2*1.5+0.8,'facecolor','y','EdgeColor','none');
directiony = [0 1 0];
rotate(s,directiony,25)
[x3,y3,z3] = cylinder([0.29 0],20);
s = surf(x3+1.005,y3,z3*3+0.8,'facecolor','k','EdgeColor','none');
rotate(s,directiony,25)

s = surf(x2-0.5,y2+0.8,z2*1.5+0.8,'facecolor','y','EdgeColor','none');
rotate(s,directiony,-25)
s = surf(x3-0.5,y3+0.8,z3*3+0.8,'facecolor','k','EdgeColor','none');
rotate(s,directiony,-25)


% body
[bx,by,bz] = sphere(20);
bx = bx(5:21,:);
by = by(5:21,:);
bz = bz(5:21,:);
surf(bx.*1.5,by.*1.5,bz.*2-1.6)
a = surf(bx-2,by.*0.5+0.5,bz.*0.5-0.6,'facecolor','y','EdgeColor','none');
rotate(a,directiony,-25)
a = surf(bx.*0.5+0.8,by-2,bz.*0.5-0.6,'facecolor','y','EdgeColor','none');
rotate(a,directiony,25)

[gx,gy,gz] = cylinder(0.1,20);
surf(gx+0.3,gy-2.8,gz*2-1.5,'facecolor','k','EdgeColor','none');
[bx,by,bz] = cylinder([0.5 0],3);
surf(bx+0.3,by-2.8,bz*5,'facecolor','w')

[zm,ym,xm] = cylinder(0.2,4);
s = surf(xm.*1.7-2.2,ym-0.8,zm+0.1,'FaceColor','w');
rotate(s,directiony,-20)

[sz,sy,sx] = sphere(20);
sx = sx(1:3,:).*5;
sy = sy(1:3,:).*5;
sz = sz(1:3,:).*5;
surf(sx+2.3,sy+0.5,sz-1.3)


t = linspace(0,2*pi,100);
[u,v] = meshgrid(t,t);
c = 5;
x = cos(u).*(c + sin(v).*cos(u) - sin(2*v).*sin(u)./2);
y = sin(u).*(c + sin(v).*cos(u) - sin(2*v).*sin(u)./2);
z = sin(u).*sin(v) + cos(u).*sin(2*v)./2;
surf(x,y,z-2, 'linestyle','none')

colormap spring






xlabel('x')
ylabel('y')
zlabel('z')

axis equal