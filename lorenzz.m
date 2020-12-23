clear all
close all
clc
x1=1;
y1=1;
z1=1;
x2=x1+0.0001;
y2=y1;
z2=z1;
x3=x1;
y3=y1-0.00001;
z3=z1;
temps=[0,50];
X1=domi(x1,y1,z1,temps);
X2=domi(x2,y2,z2,temps);
X3=domi(x3,y3,z3,temps);
figure(1)
subplot(3,1,1)
plot(X1(:,1),X1(:,2),'r',X2(:,1),X2(:,2),'b',X3(:,1),X3(:,2),'g')
subplot(3,1,2)
plot(X1(:,1),X1(:,3),'r',X2(:,1),X2(:,3),'b',X3(:,1),X3(:,3),'g')
subplot(3,1,3)
plot(X1(:,1),X1(:,4),'r',X2(:,1),X2(:,4),'b',X3(:,1),X3(:,4),'g')
x1=1;
y1=1;
z1=1;
x2=10;
y2=-5;
z2=0.1;
x3=-10;
y3=5;
z3=3;
temps=[0,50];
X1=domi(x1,y1,z1,temps);
X2=domi(x2,y2,z2,temps);
X3=domi(x3,y3,z3,temps);
x0=X1(1,2);
dto = 0.01 ;
%figure('Position',[0 0 1550 800])
%plot3(X1(:,2),X1(:,3),X1(:,4),'r',X2(:,2),X2(:,3),X2(:,4),'b',X3(:,2),X3(:,3),X3(:,4),'g');
figure(2)
for i = 1:length(X1(:,1))
    
    dt = abs(X1(i,2)-x0)/abs(10*(X1(i,3)-X1(i,1)));
    if dt >= dto
        
        plot3(X1(1:i,2),X1(1:i,3),X1(1:i,4),'r',X1(i,2),X1(i,3),X1(i,4),'-or',X2(1:i,2),X2(1:i,3),X2(1:i,4),'b',X2(i,2),X2(i,3),X2(i,4),'-ob',X3(1:i,2),X3(1:i,3),X3(1:i,4),'g',X3(i,2),X3(i,3),X3(i,4),'-og')
        %axis([xmin xmax ymin ymax])
        x0 = X1(i,2) ; 
        
    end
    pause(0.001)
end
