A=xlsread('data');
a=A(:,2);%虚假目标的x坐标
b=A(:,3);%虚假目标的y坐标
c=A(:,4);%虚假目标的z坐标
plane_location=[74867.2 74992.8 75109.0 75215.3 75311.4 75396.3 75466.8 75522.1 75562.2 75585.6 75591.9 75579.5 75547.2 75493.3;22285.9 22418.6 22573.1 22751.0 22954.7 23186.1 23450.7 23752.5 24095.6 24485.5 24927.9 25429.9 26000.4 26648.8];
target_location=ones(3,14);
q=[80000 0 0;30000 60000 0;55000 110000 0;105000 110000 0;130000 60000 0];%雷达坐标
x1=[];
y1=[];
M=zeros(19,20);
figure(1)
for e = 1:1
    for h =7:20
    plot3(a(h),b(h),c(h),'r*','MarkerSize',5);
    plot3(q(e,1),q(e,2),q(e,3),'rp','MarkerSize',10);
    text(q(e,1)+22,q(e,2)+22,q(e,3)+22,num2str(e));
    x11 = [q(e,1),a(h)];
    x12 = [q(e,2),b(h)];
    x13 = [q(e,3),c(h)];
    if e == 1
        plot3(x11,x12,x13,'y-','MarkerSize',4);
        hold on;
    end
    end  
end
for e=1:14
    plot3(plane_location(1,e),plane_location(2,e),2500,'b*');
end
grid on;




figure(2)
for e = 1:1
    for h =7:20
        plot3(a(h),b(h),c(h),'r*','MarkerSize',5);
        plot3(q(e,1),q(e,2),q(e,3),'rp','MarkerSize',10);
        text(q(e,1)+22,q(e,2)+22,q(e,3)+22,num2str(e));
        x11 = [q(e,1),a(h)];
        x12 = [q(e,2),b(h)];
        x13 = [q(e,3),c(h)];
        if e == 1
            plot3(x11,x12,x13,'y-','MarkerSize',4);
            hold on;
        end
    end  
end
for e=1:14
    plot3(plane_location(1,e),plane_location(2,e),2500,'b*');hold on;
end
plot3(0,0,0,'rp','MarkerSize',10);
for e=1:14
    target_location(1,e)=plane_location(1,e)*c(e+6)/2500;
    target_location(2,e)=plane_location(2,e)*c(e+6)/2500;
    target_location(3,e)=2500*c(e+6)/2500;
end
for e=1:14
    plot3(target_location(1,e),target_location(2,e),target_location(3,e),'g*');
    x11 = [0,target_location(1,e)];
    x12 = [0,target_location(2,e)];
    x13 = [0,target_location(3,e)];
    plot3(x11,x12,x13,'y-','MarkerSize',4);
    hold on;
end
for e=1:14
    plot3(plane_location(1,e),plane_location(2,e),2500,'b*');
end
text(0,0,0,num2str(2));
text(80000,0,0,num2str(1));
plot3(80000,0,0,'r*','MarkerSize',5);
grid on;