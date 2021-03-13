%%
%单部雷达的模糊函数在多普勒频移为0时的图像
clc;
t=-0.5:0.00001:0.5;
t1=linspace(-150,150,20001);
Xt0=[];
E=0;
u1=stepfun(t,-0.0005);%脉冲宽度1ms
u2=stepfun(t,0.0005);
u=1/sqrt(0.001)*(u1-u2);
axis([-0.001 0.001 -20 50]);grid on;
for i=-0.0015:0.0000001:0.0005
    u_mov=1/sqrt(0.001)*(stepfun(t,i)-stepfun(t,i+0.001));
    for j=1:1:100001
        E=E+(u_mov(j)*u(j))*0.00001;
    end
    Xt0=[Xt0 E];
    E=0;
end
plot(t1,Xt0);xlabel("Range(km)");grid on;
%%
%单部雷达的模糊函数在延时为0时的图像
clc;
E=0;
X0v=[];
t=-0.5:0.00001:0.5;
u1=stepfun(t,-0.0005);%脉冲宽度1ms
u2=stepfun(t,0.0005);
u=1/sqrt(0.001)*(u1-u2);
for v=-20000:1:20000
    for j=1:1:100001
        E=u(j)*u(j)*exp(i*2*pi*v*(0.00001*j-0.5))*0.00001+E;
    end
    X0v=[X0v abs(E)];
    E=0;
end
plot(X0v)