function varargout = circle_2(varargin)
% CIRCLE_2 MATLAB code for circle_2.fig
%      CIRCLE_2, by itself, creates a new CIRCLE_2 or raises the existing
%      singleton*.
%
%      H = CIRCLE_2 returns the handle to a new CIRCLE_2 or the handle to
%      the existing singleton*.
%
%      CIRCLE_2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CIRCLE_2.M with the given input arguments.
%
%      CIRCLE_2('Property','Value',...) creates a new CIRCLE_2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before circle_2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to circle_2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help circle_2

% Last Modified by GUIDE v2.5 26-Feb-2020 20:21:17

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @circle_2_OpeningFcn, ...
                   'gui_OutputFcn',  @circle_2_OutputFcn, ...
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
% End initialization code - DO NOT EDIT


% --- Executes just before circle_2 is made visible.
function circle_2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to circle_2 (see VARARGIN)

% Choose default command line output for circle_2
handles.axes1.Visible = 'off';
handles.axes2.Visible = 'off';
handles.uipanel2.Visible = 'off';
handles.rr1.Visible = 'off';
handles.rro.Visible = 'off';
handles.rxo.Visible = 'off';
handles.rx1.Visible = 'off';
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes circle_2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = circle_2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function voc_Callback(hObject, eventdata, handles)
% hObject    handle to voc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of voc as text
%        str2double(get(hObject,'String')) returns contents of voc as a double


% --- Executes during object creation, after setting all properties.
function voc_CreateFcn(hObject, eventdata, handles)
% hObject    handle to voc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ioc_Callback(hObject, eventdata, handles)
% hObject    handle to ioc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ioc as text
%        str2double(get(hObject,'String')) returns contents of ioc as a double


% --- Executes during object creation, after setting all properties.
function ioc_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ioc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function woc_Callback(hObject, eventdata, handles)
% hObject    handle to woc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of woc as text
%        str2double(get(hObject,'String')) returns contents of woc as a double


% --- Executes during object creation, after setting all properties.
function woc_CreateFcn(hObject, eventdata, handles)
% hObject    handle to woc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function vsc_Callback(hObject, eventdata, handles)
% hObject    handle to vsc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of vsc as text
%        str2double(get(hObject,'String')) returns contents of vsc as a double


% --- Executes during object creation, after setting all properties.
function vsc_CreateFcn(hObject, eventdata, handles)
% hObject    handle to vsc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function isc_Callback(hObject, eventdata, handles)
% hObject    handle to isc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of isc as text
%        str2double(get(hObject,'String')) returns contents of isc as a double


% --- Executes during object creation, after setting all properties.
function isc_CreateFcn(hObject, eventdata, handles)
% hObject    handle to isc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function wsc_Callback(hObject, eventdata, handles)
% hObject    handle to wsc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of wsc as text
%        str2double(get(hObject,'String')) returns contents of wsc as a double


% --- Executes during object creation, after setting all properties.
function wsc_CreateFcn(hObject, eventdata, handles)
% hObject    handle to wsc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function rating_Callback(hObject, eventdata, handles)
% hObject    handle to rating (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of rating as text
%        str2double(get(hObject,'String')) returns contents of rating as a double


% --- Executes during object creation, after setting all properties.
function rating_CreateFcn(hObject, eventdata, handles)
% hObject    handle to rating (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function scale_Callback(hObject, eventdata, handles)
% hObject    handle to scale (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of scale as text
%        str2double(get(hObject,'String')) returns contents of scale as a double


% --- Executes during object creation, after setting all properties.
function scale_CreateFcn(hObject, eventdata, handles)
% hObject    handle to scale (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function rotor_Callback(hObject, eventdata, handles)
% hObject    handle to rotor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of rotor as text
%        str2double(get(hObject,'String')) returns contents of rotor as a double


% --- Executes during object creation, after setting all properties.
function rotor_CreateFcn(hObject, eventdata, handles)
% hObject    handle to rotor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in submit.
function submit_Callback(hObject, eventdata, handles)
% hObject    handle to submit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.axes1.Visible = 'on';
handles.axes2.Visible = 'on';
handles.uipanel2.Visible = 'on';
handles.rr1.Visible = 'on';
handles.rro.Visible = 'on';
handles.rxo.Visible = 'on';
handles.rx1.Visible = 'on';

voc = str2num(get(handles.voc,'String'));
ioc = str2num(get(handles.ioc,'String'));
woc = str2num(get(handles.woc,'String'));

vsc = str2num(get(handles.vsc,'String'));
isc = str2num(get(handles.isc,'String'));
wsc = str2num(get(handles.wsc,'String'));

rotor = str2num(get(handles.rotor,'String'));
rating = str2num(get(handles.rating,'String'));
stator = 1;

scale = str2num(get(handles.scale,'String'));

%rating = 3677.5;
axes(handles.axes1);
%withscale
iocs = ioc/scale;
iscs = isc/scale;

%plotting no load current
npf = woc/(sqrt(3)*voc*ioc);
npfangle = acos(npf);
plot([0 iocs*sin(npfangle)], [0 iocs*cos(npfangle)])
hold on
%parallel to x axis 


%plotting isn
isn = isc*(voc/vsc);
isns = isn/scale;

lpf = acos(wsc/(sqrt(3)*vsc*isc));
plot([0 isns*sin(lpf)],[0 isns*cos(lpf)],'--b','LineWidth',.5)
hold on
%points
px = iocs*sin(npfangle);
py = iocs*cos(npfangle);

qx = isns*sin(lpf);
qy = isns*cos(lpf);
%joining output line
plot([px qx],[py, qy],'b','LineWidth',1.5);

hold on

%finding center
m = (qy-py)/(qx-px);
xsemi = (px*px - py*py - qx*qx -qy*qy + 2*py*qy)/(2*(px-qx));
r = xsemi - px;


%plotting circle
th = 0:(pi/10000):pi;
a = r*cos(th)+xsemi;
b = r*sin(th)+py;
plot(a,b,'-m','LineWidth',1.5);
hold on

%plotting no load losses line
plot([px (2*xsemi)],[py py],'-k','LineWidth',1.5);

%joining losses lines
plot([qx qx],[0 qy],'-g','LineWidth',1.5);
hold on

rsy = (rotor * py + qy)/(rotor + 1);

%plotting torque line

plot([px qx],[py rsy],'-r','LineWidth',1.5)
hold on

%extending to rated output
wsn = wsc*isn*isn/(isc*isc);
powerscale = wsn / qy;
qe = rating/powerscale;
ey = qy + qe;


plot([qx qx],[qy ey],'-c','LineWidth',1.5)
hold on
%parallel to output line
plot([px qx],[py+qe ey],'--')
hold on

%k1 and k2
k1 = (qy+ qe - m*qx);
k2 = (2*m*(k1 - py)-2*xsemi)/(1+m*m)
k3 = (xsemi*xsemi + (k1 - py)*(k1 - py) - r*r)/(1+m*m);

cex = (-k2 - sqrt(k2*k2 - 4*k3))/2;
cey = (m* cex + k1);

%plotting ifl
plot([0 cex],[0 cey],'-r','LineWidth',1.5);
hold on
plot([cex cex],[0 cey],'color','y','LineWidth', 0.5);
hold on
sqrt(cex^2 + cey^2)

%intersection  on output line to calculte effiecncy
ocex = cex ;
ocey = m * cex - m*qx + qy;
plot ([ocex ocex],[ocey cey],'color','k','LineWidth', 1.5)
hold on
%max output 
k4 = (px+qx+m*py+m*qy)/(2*m);
k5 = (2*m*py - 2*m*m*xsemi - 2*m*k4)/(m*m+1);
k6 = (m*m*xsemi*xsemi + m*m*(py - k4)*(py - k4) - m*m*r*r)/(m*m +1);
mox = (-k5-sqrt(k5*k5 -4*k6))/2;
moy = (-mox/m )+k4;
moox = mox;
mooy = m*mox - m*qx + qy;
plot([mox moox],[moy mooy],'-y','LineWidth',1.5);
hold on

%maximum torque
rsx = qx;
n = (rsy - py)/(rsx - px);
k7 = (px + rsx + n*py + n*rsy)/(2*n) ;
k8 = (2*n*py - 2*n*k7 - 2*n*n*xsemi)/(n*n +1);
k9 = (n*n*xsemi*xsemi + n*n*(py - k7)*(py - k7) - n*n*r*r)/(n*n +1);
tox = (-k8-sqrt(k8*k8 -4*k9))/2;
toy = (-tox/n )+k7;
toox = tox;
tooy = n*tox + (py + rsy - n*px - n*rsx)/2 ;
sy = n*cex-n*px+py;
ba = ocey-sy;
fldslp = ba/(cey-sy);

plot([tox toox],[toy tooy],'-b','LineWidth',1.5);
hold on

maxt = (toy - tooy)*powerscale;
moxo = (moy - mooy)*powerscale;
fulli = (sqrt(cex*cex + cey*cey))*scale;
maxi = (r+iocs*cos(npfangle))*powerscale;
efficency = ((cey-ocey)/cey) *100;
powerfactor = cey/(sqrt(cex^2 + cey^2));
startingtorque = (qy-rsy)*powerscale;
torqueFullLoad = (cey-iocs*cos(npfangle))*powerscale;
%smtx = tox
%smty = m*smtx - m*qx + qy
%smty-tooy
%smt = (smty-tooy)/(toy-(tooy))


set(handles.rifl,'string',string(fulli));
set(handles.rpf,'string',string(powerfactor));
set(handles.rmt,'string',string(maxt));
set(handles.mop,'string',string(moxo));
set(handles.reff,'string',string(efficency));
set(handles.rmi,'string',string(maxi));
set(handles.rflt,'string',string(torqueFullLoad));
set(handles.rst,'string',string(startingtorque));
set(handles.rfls,'string',string(fldslp));

hold off


xo = voc/(sqrt(3)*ioc*sin(npfangle));
ro = voc/(sqrt(3)*ioc*cos(npfangle));
z1 = vsc/(sqrt(3)*isc);
r1 = wsc/(3*isc^2);
x1 = sqrt((z1^2 - r1^2));


set(handles.rro,'string',string(ro));
set(handles.rr1,'string',string(r1));
set(handles.rxo,'string',string(xo));
set(handles.rx1,'string',string(x1));
axes(handles.axes2);
imshow('ep.png');



function rifl_Callback(hObject, eventdata, handles)
% hObject    handle to rifl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of rifl as text
%        str2double(get(hObject,'String')) returns contents of rifl as a double


% --- Executes during object creation, after setting all properties.
function rifl_CreateFcn(hObject, eventdata, handles)
% hObject    handle to rifl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function rpf_Callback(hObject, eventdata, handles)
% hObject    handle to rpf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of rpf as text
%        str2double(get(hObject,'String')) returns contents of rpf as a double


% --- Executes during object creation, after setting all properties.
function rpf_CreateFcn(hObject, eventdata, handles)
% hObject    handle to rpf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function rmt_Callback(hObject, eventdata, handles)
% hObject    handle to rmt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of rmt as text
%        str2double(get(hObject,'String')) returns contents of rmt as a double


% --- Executes during object creation, after setting all properties.
function rmt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to rmt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function mop_Callback(hObject, eventdata, handles)
% hObject    handle to mop (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of mop as text
%        str2double(get(hObject,'String')) returns contents of mop as a double


% --- Executes during object creation, after setting all properties.
function mop_CreateFcn(hObject, eventdata, handles)
% hObject    handle to mop (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function reff_Callback(hObject, eventdata, handles)
% hObject    handle to reff (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of reff as text
%        str2double(get(hObject,'String')) returns contents of reff as a double


% --- Executes during object creation, after setting all properties.
function reff_CreateFcn(hObject, eventdata, handles)
% hObject    handle to reff (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function rmi_Callback(hObject, eventdata, handles)
% hObject    handle to rmi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of rmi as text
%        str2double(get(hObject,'String')) returns contents of rmi as a double


% --- Executes during object creation, after setting all properties.
function rmi_CreateFcn(hObject, eventdata, handles)
% hObject    handle to rmi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function rro_Callback(hObject, eventdata, handles)
% hObject    handle to rro (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of rro as text
%        str2double(get(hObject,'String')) returns contents of rro as a double


% --- Executes during object creation, after setting all properties.
function rro_CreateFcn(hObject, eventdata, handles)
% hObject    handle to rro (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function rxo_Callback(hObject, eventdata, handles)
% hObject    handle to rxo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of rxo as text
%        str2double(get(hObject,'String')) returns contents of rxo as a double


% --- Executes during object creation, after setting all properties.
function rxo_CreateFcn(hObject, eventdata, handles)
% hObject    handle to rxo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function rr1_Callback(hObject, eventdata, handles)
% hObject    handle to rr1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of rr1 as text
%        str2double(get(hObject,'String')) returns contents of rr1 as a double


% --- Executes during object creation, after setting all properties.
function rr1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to rr1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function rx1_Callback(hObject, eventdata, handles)
% hObject    handle to rx1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of rx1 as text
%        str2double(get(hObject,'String')) returns contents of rx1 as a double


% --- Executes during object creation, after setting all properties.
function rx1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to rx1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function rst_Callback(hObject, eventdata, handles)
% hObject    handle to rst (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of rst as text
%        str2double(get(hObject,'String')) returns contents of rst as a double


% --- Executes during object creation, after setting all properties.
function rst_CreateFcn(hObject, eventdata, handles)
% hObject    handle to rst (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function rflt_Callback(hObject, eventdata, handles)
% hObject    handle to rflt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of rflt as text
%        str2double(get(hObject,'String')) returns contents of rflt as a double


% --- Executes during object creation, after setting all properties.
function rflt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to rflt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function rfls_Callback(hObject, eventdata, handles)
% hObject    handle to rfls (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of rfls as text
%        str2double(get(hObject,'String')) returns contents of rfls as a double


% --- Executes during object creation, after setting all properties.
function rfls_CreateFcn(hObject, eventdata, handles)
% hObject    handle to rfls (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
