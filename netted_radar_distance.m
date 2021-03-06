%%
%2���״ﲻ������̽�ⷶΧ
clc;
r=30;%�����״�̽�����30km
theta=0:pi/1000:2*pi;
x=-30+r*cos(theta);
y=r*sin(theta);
plot(30,0,'rx',x,y);hold on;plot(30,0,'ro',x,y);hold on;
plot(-30,0,'rx',x,y);hold on;plot(-30,0,'ro',x,y);hold on;
plot(x,y,'b');hold on;
x=30+r*cos(theta);
y=r*sin(theta);
plot(x,y,'b');hold on;
axis([-80 80 -80 80]);
grid on;
%%
%2���״�������̽�ⷶΧ
clc;
for x=-80:1:80
    for y=-80:1:80
        R1=sqrt((x+30)*(x+30)+y*y);
        R2=sqrt((x-30)*(x-30)+y*y);
        SNR=810000/(R1*R1*R1*R1)+810000/(R2*R2*R1*R1)+810000/(R2*R2*R2*R2);
         if(SNR>1)
            plot(x,y,'ro');
            hold on;
            axis([-100 100 -100 100]);
            grid on;
        end
    end
end
%%
%3���״ﲻ������̽�ⷶΧ
clc;
r=30;%�����״�̽�����30km
theta=0:pi/1000:2*pi;
x=30+r*cos(theta);
y=30+r*sin(theta);
figure(1);
plot(0,0,'rx',x,y);hold on;plot(0,0,'ro',x,y);hold on;
plot(30,30,'rx',x,y);hold on;plot(30,30,'ro',x,y);hold on;
plot(-30,30,'rx',x,y);hold on;plot(-30,30,'ro',x,y);hold on;
plot(x,y,'b');hold on;
x=r*cos(theta);
y=r*sin(theta);
plot(x,y,'b');hold on;
x=-30+r*cos(theta);
y=30+r*sin(theta);
plot(x,y,'b');hold on;
grid on;
axis([-80 80 -80 80]);
xlabel("����/km");ylabel("����/km");title("3���״ﲻ������̽�ⷶΧʾ��ͼ");
%%
%3���״�������̽�ⷶΧ
clc;
for x=-80:2:80
    for y=-80:2:80
        R1=sqrt((x+30)*(x+30)+(y-30)*(y-30));
        R2=sqrt((x-30)*(x-30)+(y-30)*(y-30));
        R3=sqrt(x*x+y*y);
        SNRnetted=810000/(R1*R1*R1*R1)+810000/(R2*R2*R2*R2)+810000/(R3*R3*R3*R3)+810000/(R1*R1*R3*R3)+810000/(R2*R2*R3*R3)+810000/(R1*R1*R2*R2);
        if(SNRnetted>1)
            plot(x,y,'ro');
            hold on;
            axis([-100 100 -100 100]);
            grid on;
        end
    end
end