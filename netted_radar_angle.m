%%
%�����״��Ƿ�Χ�뾫��
clear all;
clc;
f=1e9;            %��Ų�Ƶ��1GHz
l=3e8/f;          %��Ų�����
d=0.5;            %�������߼��0.5m
angle=asin(l/2/d);%��λ�ǻ���
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
xlabel("����/km");ylabel("����/km");zlabel("�߶�/km");

%%
%�����״��Ƿ�Χ�뾫��,һ������
clear all;
clc;
f=0.5e9;              %��Ų�Ƶ��0.5GHz
N=2;
l=3e8/f;            %��Ų�����
d=0.5;              %�������߼��0.5m
angle=asin(l/2/d/N);%��λ�ǻ���
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
xlabel("����/km");ylabel("����/km");zlabel("�߶�/km");