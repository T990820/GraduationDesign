function varargout = AirlineSystem(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @AirlineSystem_OpeningFcn, ...
                   'gui_OutputFcn',  @AirlineSystem_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
function AirlineSystem_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;
guidata(hObject, handles);
function varargout = AirlineSystem_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;



function radar1x_Callback(hObject, eventdata, handles)
function radar1x_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function radar1y_Callback(hObject, eventdata, handles)
function radar1y_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function radar1z_Callback(hObject, eventdata, handles)
function radar1z_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function radar2x_Callback(hObject, eventdata, handles)
function radar2x_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function radar2y_Callback(hObject, eventdata, handles)
function radar2y_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function radar2z_Callback(hObject, eventdata, handles)
function radar2z_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function radar3x_Callback(hObject, eventdata, handles)
function radar3x_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function radar3y_Callback(hObject, eventdata, handles)
function radar3y_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function radar3z_Callback(hObject, eventdata, handles)
function radar3z_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function radar4x_Callback(hObject, eventdata, handles)
function radar4x_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function radar4y_Callback(hObject, eventdata, handles)
function radar4y_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function radar4z_Callback(hObject, eventdata, handles)
function radar4z_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function radar5x_Callback(hObject, eventdata, handles)
function radar5x_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function radar5y_Callback(hObject, eventdata, handles)
function radar5y_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function radar5z_Callback(hObject, eventdata, handles)
function radar5z_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function ProducePlan_Callback(hObject, eventdata, handles)
clc;
radar1x=get(handles.radar1x,'String');
radar1x=str2num(radar1x);
radar1y=get(handles.radar1y,'String');
radar1y=str2num(radar1y);
radar1z=get(handles.radar1z,'String');
radar1z=str2num(radar1z);
radar2x=get(handles.radar2x,'String');
radar2x=str2num(radar2x);
radar2y=get(handles.radar2y,'String');
radar2y=str2num(radar2y);
radar2z=get(handles.radar2z,'String');
radar2z=str2num(radar2z);
radar3x=get(handles.radar3x,'String');
radar3x=str2num(radar3x);
radar3y=get(handles.radar3y,'String');
radar3y=str2num(radar3y);
radar3z=get(handles.radar3z,'String');
radar3z=str2num(radar3z);
radar4x=get(handles.radar4x,'String');
radar4x=str2num(radar4x);
radar4y=get(handles.radar4y,'String');
radar4y=str2num(radar4y);
radar4z=get(handles.radar4z,'String');
radar4z=str2num(radar4z);
radar5x=get(handles.radar5x,'String');
radar5x=str2num(radar5x);
radar5y=get(handles.radar5y,'String');
radar5y=str2num(radar5y);
radar5z=get(handles.radar5z,'String');
radar5z=str2num(radar5z);
q=[radar1x radar1y radar1z;
   radar2x radar2y radar2z;
   radar3x radar3y radar3z;
   radar4x radar4y radar4z;
   radar5x radar5y radar5z];%雷达坐标
A=[1,60600,69982,7995;
   2,61197,69928,7980;
   3,61790,69838,7955;
   4,62377,69713,7920;
   5,62955,69553,7875;
   6,63523,69359,7820;
   7,64078,69131,7755;
   8,64618,68870,7680;
   9,65141,68577,7595;
   10,65646,68253,7500;
   11,66131,67900,7395;
   12,66594,67518,7280;
   13,67026,67116,7155;
   14,67426,66697,7020;
   15,67796,66263,6875;
   16,68134,65817,6720;
   17,68442,65361,6555;
   18,68719,64897,6380;
   19,68966,64429,6195;
   20,69184,63957,6000];%虚假目标航迹
C=[];                   %最终方案
B=[];                   %所有可行的取点
for j=1:5
    for i=1:20
        for z=1:10:A(i,4)
            x=(z-q(j,3))*(A(i,2)-q(j,1))/(A(i,4)-q(j,3))+q(j,1);
            y=(z-q(j,3))*(A(i,3)-q(j,2))/(A(i,4)-q(j,3))+q(j,2);
            B=[B;x,y,z];
        end
    end
end
disp('B is formed successfully');
num_B=size(B);num_B=num_B(1,1);
sign=0;
a=[];
for i=1:num_B
    if(sign==0)
        if(B(i,3)==2501)
            start=[B(i,1) B(i,2) B(i,3) 0];
            sign=1;
        end
    end
end
for i=1:num_B
    if(B(i,3)==1)
        a=[a;i];
    end
end
i=1;
while i<num_B
    size_start=size(start);
    if(i==a(1,1)||i==a(21,1)||i==a(41,1)||i==a(61,1)||i==a(81,1))
        sign=0;
        start=[start;B(i+250,1) B(i+250,2) B(i+250,3) 0];
        C=[C;B(i+250,1) B(i+250,2) B(i+250,3) 0];
        if(i==a(1,1))
            i=a(2,1);
        else
            if(i==a(21,1))
                i=a(22,1);
            else
                if(i==a(41,1))
                    i=a(42,1);
                else
                    if(i==a(61,1))
                        i=a(62,1);
                    else
                        if(i==a(81,1))
                            i=a(82,1);
                        end
                    end
                end
            end
        end 
    else
        if(B(i,3)==1)
            sign=0;
            i=i+1;
        else
            if(sqrt((start(size_start(1,1),1)-B(i,1))^2+(start(size_start(1,1),2)-B(i,2))^2+(start(size_start(1,1),3)-B(i,3))^2)<450 && sqrt((start(size_start(1,1),1)-B(i,1))^2+(start(size_start(1,1),2)-B(i,2))^2+(start(size_start(1,1),3)-B(i,3))^2)>335)
                if(sign==0)
                    C=[C;B(i,1) B(i,2) B(i,3) sqrt((start(size_start(1,1),1)-B(i,1))^2+(start(size_start(1,1),2)-B(i,2))^2+(start(size_start(1,1),3)-B(i,3))^2)/10];
                    start=[start;B(i,1) B(i,2) B(i,3) sqrt((start(size_start(1,1),1)-B(i,1))^2+(start(size_start(1,1),2)-B(i,2))^2+(start(size_start(1,1),3)-B(i,3))^2)/10];
                    sign=1;
                    i=i+1;
                else
                    sign=1;
                    i=i+1;
                end
            else
                i=i+1;
            end
        end
    end
end
disp('C is formed successfully');
C1=C(1:20,:);C2=C(21:40,:);C3=C(41:60,:);C4=C(61:80,:);C5=C(81:100,:);
fid=fopen('AirlineSystem.txt','w');
fprintf(fid,'%33s\r\n','Airplane1');
fprintf(fid,'%5s          %5s          %5s          %5s\r\n','x','y','z','v');
fprintf(fid,'%10.4f    %10.4f    %10.4f    %10.4f\r\n',C1');
fprintf(fid,'%33s\r\n','Airplane2');
fprintf(fid,'%5s          %5s          %5s          %5s\r\n','x','y','z','v');
fprintf(fid,'%10.4f    %10.4f    %10.4f    %10.4f\r\n',C2');
fprintf(fid,'%33s\r\n','Airplane3');
fprintf(fid,'%5s          %5s          %5s          %5s\r\n','x','y','z','v');
fprintf(fid,'%10.4f    %10.4f    %10.4f    %10.4f\r\n',C3');
fprintf(fid,'%33s\r\n','Airplane4');
fprintf(fid,'%5s          %5s          %5s          %5s\r\n','x','y','z','v');
fprintf(fid,'%10.4f    %10.4f    %10.4f    %10.4f\r\n',C4');
fprintf(fid,'%33s\r\n','Airplane5');
fprintf(fid,'%5s          %5s          %5s          %5s\r\n','x','y','z','v');
fprintf(fid,'%10.4f    %10.4f    %10.4f    %10.4f\r\n',C5');
fclose(fid);