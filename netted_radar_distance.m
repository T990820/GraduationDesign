%%
%3部雷达不组网的探测范围
clc;
r=30;%单部雷达探测距离30km
theta=0:pi/1000:2*pi;
x=30+r*cos(theta);
y=30+r*sin(theta);
figure(1);
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
clc;
for x=-80:0.1:80
    for y=-80:0.1:80
        R=sqrt(x*x+y*y);
        Rr=R;
        Rt1=sqrt((x+30)*(x+30)+(y-30)*(y-30));
        Rt2=sqrt((x-30)*(x-30)+(y+30)*(y+30));
        SNRmonostatic=810000/(R^4);
        SNRnetted=SNRmonostatic*R*R*R*R*(1/Rt1/Rr+1/Rt2/Rr);
        if(SNRnetted>1)
            plot(x,y,'o');
        end
    end
end
grid on;