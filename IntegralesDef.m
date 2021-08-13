function varargout = IntegralesDef(varargin)
% INTEGRALESDEF MATLAB code for IntegralesDef.fig
%      INTEGRALESDEF, by itself, creates a new INTEGRALESDEF or raises the existing
%      singleton*.
%
%      H = INTEGRALESDEF returns the handle to a new INTEGRALESDEF or the handle to
%      the existing singleton*.
%
%      INTEGRALESDEF('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in INTEGRALESDEF.M with the given input arguments.
%
%      INTEGRALESDEF('Property','Value',...) creates a new INTEGRALESDEF or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before IntegralesDef_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to IntegralesDef_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help IntegralesDef

% Last Modified by GUIDE v2.5 23-Mar-2021 15:23:46

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @IntegralesDef_OpeningFcn, ...
                   'gui_OutputFcn',  @IntegralesDef_OutputFcn, ...
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


% --- Executes just before IntegralesDef is made visible.
function IntegralesDef_OpeningFcn(hObject, eventdata, handles, varargin)
centerfig;

handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes IntegralesDef wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = IntegralesDef_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function txtFuncion_Callback(hObject, eventdata, handles)
% hObject    handle to txtFuncion (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtFuncion as text
%        str2double(get(hObject,'String')) returns contents of txtFuncion as a double


% --- Executes during object creation, after setting all properties.
function txtFuncion_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtFuncion (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtIntegral_Callback(hObject, eventdata, handles)
% hObject    handle to txtIntegral (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtIntegral as text
%        str2double(get(hObject,'String')) returns contents of txtIntegral as a double


% --- Executes during object creation, after setting all properties.
function txtIntegral_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtIntegral (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in cmbGrafica.
function cmbGrafica_Callback(hObject, eventdata, handles)
% hObject    handle to cmbGrafica (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns cmbGrafica contents as cell array
%        contents{get(hObject,'Value')} returns selected item from cmbGrafica


% --- Executes during object creation, after setting all properties.
function cmbGrafica_CreateFcn(hObject, eventdata, handles)
% hObject    handle to cmbGrafica (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in btnCalcular.
function btnCalcular_Callback(hObject, eventdata, handles)
syms x;
f = get(handles.txtFuncion,'string');
a = get(handles.txtLI,'string');
b = get(handles.txtLS,'string');
integ = int(f,x,a,b);
set(handles.txtIntegral,'string',char(integ));
option=get(handles.cmbGrafica,'value');
switch (option)
    case 2
        syms x y;
        axes(handles.axesGrafica);
        [x,y]=meshgrid(-10:0.8:9);
        r=eval(get(handles.txtFuncion,'string'));
        surf(x,y,r);
        %ezplot(r);
    case 3
        syms x y;
        axes(handles.axesGrafica);
        r=char(get(handles.txtIntegral,'string'));
        ezsurf(r);
        %ezplot(r);
    otherwise
     
end


% --- Executes on button press in btnLimpiar.
function btnLimpiar_Callback(hObject, eventdata, handles)
% hObject    handle to btnLimpiar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.txtFuncion,'string','');
set(handles.txtLI,'string','');
set(handles.txtLS,'string','');
set(handles.txtIntegral,'string','');


function txtLI_Callback(hObject, eventdata, handles)
% hObject    handle to txtLI (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtLI as text
%        str2double(get(hObject,'String')) returns contents of txtLI as a double


% --- Executes during object creation, after setting all properties.
function txtLI_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtLI (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtLS_Callback(hObject, eventdata, handles)
% hObject    handle to txtLS (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtLS as text
%        str2double(get(hObject,'String')) returns contents of txtLS as a double


% --- Executes during object creation, after setting all properties.
function txtLS_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtLS (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in btnCerrar.
function btnCerrar_Callback(hObject, eventdata, handles)
% hObject    handle to btnCerrar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
close
