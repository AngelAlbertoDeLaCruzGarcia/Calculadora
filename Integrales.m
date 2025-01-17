function varargout = Integrales(varargin)
% INTEGRALES MATLAB code for Integrales.fig
%      INTEGRALES, by itself, creates a new INTEGRALES or raises the existing
%      singleton*.
%
%      H = INTEGRALES returns the handle to a new INTEGRALES or the handle to
%      the existing singleton*.
%
%      INTEGRALES('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in INTEGRALES.M with the given input arguments.
%
%      INTEGRALES('Property','Value',...) creates a new INTEGRALES or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Integrales_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Integrales_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Integrales

% Last Modified by GUIDE v2.5 21-Mar-2021 22:09:33

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Integrales_OpeningFcn, ...
                   'gui_OutputFcn',  @Integrales_OutputFcn, ...
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


% --- Executes just before Integrales is made visible.
function Integrales_OpeningFcn(hObject, eventdata, handles, varargin)
centerfig;
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Integrales wait for user response (see UIRESUME)
% uiwait(handles.figIntegral);


% --- Outputs from this function are returned to the command line.
function varargout = Integrales_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function txtVarX_Callback(hObject, eventdata, handles)
% hObject    handle to txtVarX (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtVarX as text
%        str2double(get(hObject,'String')) returns contents of txtVarX as a double


% --- Executes during object creation, after setting all properties.
function txtVarX_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtVarX (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
        set(hObject,'BackgroundColor','white');
end



function txtResX_Callback(hObject, eventdata, handles)
% hObject    handle to txtResX (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtResX as text
%        str2double(get(hObject,'String')) returns contents of txtResX as a double


% --- Executes during object creation, after setting all properties.
function txtResX_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtResX (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in btnSustituir.
function btnSustituir_Callback(hObject, eventdata, handles)
% hObject    handle to btnSustituir (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in btnLimpiarDef.
function btnLimpiarDef_Callback(hObject, eventdata, handles)
% hObject    handle to btnLimpiarDef (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.txtVarX,'string','');
set(handles.txtResX,'string','');

% --- Executes on button press in btnCerrar.
function btnCerrar_Callback(hObject, eventdata, handles)
% hObject    handle to btnCerrar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close


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
option=get(handles.cmbGrafica,'value');
switch (option)
    case 2
        syms x;
        axes(handles.axesGrafica);
        r=eval(get(handles.txtFuncion,'string'));
        ezsurf(r);
    case 3
        syms x;
        axes(handles.axesGrafica);
        r=eval(get(handles.txtIntegral,'string'));
        ezsurf(r);
        %ezplot(r);
    otherwise
                
end


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
integ = int(f,x);
set(handles.txtIntegral,'string',char(integ));
option=get(handles.cmbGrafica,'value');
switch (option)
    case 2
        syms x;
        axes(handles.axesGrafica);
        r=eval(get(handles.txtFuncion,'string'));
        ezsurf(r);
    case 3
        syms x;
        axes(handles.axesGrafica);
        r=eval(get(handles.txtIntegral,'string'));
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
set(handles.txtIntegral,'string','');

% --- Executes when user attempts to close figIntegral.
function figIntegral_CloseRequestFcn(hObject, eventdata, handles)
seleccion=questdlg('�Estas seguro que desea salir?','Integrales','Salir','Cancelar','Cancelar');
if strcmp(seleccion,'Cancelar')
    return
else
    clc; delete(hObject);
end


% --- Executes when figIntegral is resized.
function figIntegral_SizeChangedFcn(hObject, eventdata, handles)
% hObject    handle to figIntegral (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
