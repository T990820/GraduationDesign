%%
%3���״ﲻ������̽�ⷶΧ
clc;
r=30;%�����״�̽�����30km
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
xlabel("����/km");ylabel("����/km");title("3���״ﲻ������̽�ⷶΧʾ��ͼ");
%%
%3�������״��̽�ⷶΧ