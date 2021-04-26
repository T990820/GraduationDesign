%%
%单部雷达测角范围与精度
clear all;
clc;
f=1e9;            %电磁波频率1GHz
l=3e8/f;          %电磁波波长
d=0.5;            %接收天线间距0.5m
angle=asin(l/2/d);%单位是弧度
x=linspace(-5,5,100);
y=[];
for x0=x;
    if x0>0
        y=[y,tan(angle)*x0];
    else
        y=[y,-1*tan(angle)*x0];
    end
end
plot(x,y)
[x,y]=meshgrid(-100:3:100,-100:3:100);
z=tan(angle)*sqrt(x.*x+y.*y);
surfl(x,y,z);
xlabel("距离/km");ylabel("距离/km");zlabel("高度/km");

%%
%组网雷达测角范围与精度,一发两收
clear all;
clc;
f=0.5e9;              %电磁波频率0.5GHz
N=2;
l=3e8/f;            %电磁波波长
d=0.5;              %接收天线间距0.5m
angle=asin(l/2/d/N);%单位是弧度
x=linspace(-5,5,100);
y=[];
for x0=x;
    if x0>1
        y=[y,tan(angle)*(x0-1)];
    else if x0>0
        y=[y,-1*tan(angle)*(x0-1)];
        else if x0>-1
            y=[y,tan(angle)*(x0+1)];
            else
            y=[y,-1*tan(angle)*(x0+1)];
            end
        end
    end
end
plot(x,y)
[x1,y1]=meshgrid(-100:3:100,-100:3:100);
z1=tan(angle)*sqrt((x1-20).*(x1-20)+(y1-20).*(y1-20));
[x2,y2]=meshgrid(-100:3:100,-100:3:100);
z2=tan(angle)*sqrt((x2+20).*(x2+20)+(y2+20).*(y2+20));
for i=1:67
    for j=1:67-i
        z1(i,j)=z2(i,j);
    end
end
for i=1:67
    for j=68-i:67
        z2(i,j)=z1(i,j);
    end
end
mesh(x1,y1,z1);
hold on;
mesh(x2,y2,z2);
xlabel("x");ylabel("y");
xlabel("距离/km");ylabel("距离/km");zlabel("高度/km");