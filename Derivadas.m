function varargout = Derivadas(varargin)
% DERIVADAS MATLAB code for Derivadas.fig
%      DERIVADAS, by itself, creates a new DERIVADAS or raises the existing
%      singleton*.
%
%      H = DERIVADAS returns the handle to a new DERIVADAS or the handle to
%      the existing singleton*.
%
%      DERIVADAS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DERIVADAS.M with the given input arguments.
%
%      DERIVADAS('Property','Value',...) creates a new DERIVADAS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Derivadas_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Derivadas_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Derivadas

% Last Modified by GUIDE v2.5 24-Mar-2021 00:31:51

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Derivadas_OpeningFcn, ...
                   'gui_OutputFcn',  @Derivadas_OutputFcn, ...
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


% --- Executes just before Derivadas is made visible.
function Derivadas_OpeningFcn(hObject, eventdata, handles, varargin)
% set(handles.axesGrafica,'visible','off');
%movegui('center');
centerfig;

handles.output = hObject;

guidata(hObject, handles);

% UIWAIT makes Derivadas wait for user response (see UIRESUME)
% uiwait(handles.figDerivadas);


% --- Outputs from this function are returned to the command line.
function varargout = Derivadas_OutputFcn(hObject, eventdata, handles) 
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
f=get(handles.txtDerivada,'string');
y=get(handles.txtVarX,'string');
resultado=subs(f,y);
set(handles.txtResX,'string',char(resultado));



% --- Executes on button press in btnLimpiarDef.
function btnLimpiarDef_Callback(hObject, eventdata, handles)
% hObject    handle to btnLimpiarDef (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.txtVarX,'string','');
set(handles.txtResX,'string','');


% --- Executes on button press in btnCerrar.
function btnCerrar_Callback(hObject, eventdata, handles)
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



function txtDerivada_Callback(hObject, eventdata, handles)
% hObject    handle to txtDerivada (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtDerivada as text
%        str2double(get(hObject,'String')) returns contents of txtDerivada as a double


% --- Executes during object creation, after setting all properties.
function txtDerivada_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtDerivada (see GCBO)
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
        r=eval(get(handles.txtDerivada,'string'));
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
% hObject    handle to btnCalcular (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
syms x;
f=get(handles.txtFuncion,'string');
der=diff(f,x);
set(handles.txtDerivada,'string',char(der));
option=get(handles.cmbGrafica,'value');
switch (option)
    case 2
        syms x;
        axes(handles.axesGrafica);
        r=eval(get(handles.txtFuncion,'string'));
        ezsurf(r);
        %save('D:\nueva.mat',handles.axesGrafica);
    case 3
        syms x;
        axes(handles.axesGrafica);
        r=eval(get(handles.txtDerivada,'string'));
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
set(handles.txtDerivada,'string','');



% --- Executes when user attempts to close figDerivadas.
function figDerivadas_CloseRequestFcn(hObject, eventdata, handles)
seleccion=questdlg('¿Estas seguro que desea salir?','Derivada','Salir','Cancelar','Cancelar');
if strcmp(seleccion,'Cancelar')
    return
else
    clc; delete(hObject);
end


% --- Executes on key press with focus on txtDerivada and none of its controls.
function txtDerivada_KeyPressFcn(hObject, eventdata, handles)
% hObject    handle to txtDerivada (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.UICONTROL)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)
