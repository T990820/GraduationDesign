%%
%3部雷达不组网的探测范围
clc;
r=30;%单部雷达探测距离30km
theta=0:pi/1000:2*pi;
x=30+r*cos(theta);
y=30+r*sin(theta);
plot(0,0,'rx',x,y);hold on;plot(0,0,'ro',x,y);hold on;
plot(30,30,'rx',x,y);hold on;plot(30,30,'ro',x,y);hold on;
plot(-30,30,'rx',x,y);hold on;plot(-30,30,'ro',x,y);hold on;
plot(x,y,'r');hold on;
x=r*cos(theta);
y=r*sin(theta);
plot(x,y,'r');hold on;
x=-30+r*cos(theta);
y=30+r*sin(theta);
plot(x,y,'r');hold on;
grid on;
axis([-80 80 -80 80]);
xlabel("距离/km");ylabel("距离/km");title("3部雷达不组网的探测范围示意图");
%%
%3部组网雷达的探测范围