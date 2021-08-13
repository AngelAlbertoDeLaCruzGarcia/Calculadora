function varargout = EcuacionesDif(varargin)
% ECUACIONESDIF MATLAB code for EcuacionesDif.fig
%      ECUACIONESDIF, by itself, creates a new ECUACIONESDIF or raises the existing
%      singleton*.
%
%      H = ECUACIONESDIF returns the handle to a new ECUACIONESDIF or the handle to
%      the existing singleton*.
%
%      ECUACIONESDIF('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ECUACIONESDIF.M with the given input arguments.
%
%      ECUACIONESDIF('Property','Value',...) creates a new ECUACIONESDIF or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before EcuacionesDif_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to EcuacionesDif_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help EcuacionesDif

% Last Modified by GUIDE v2.5 23-Mar-2021 18:27:41

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @EcuacionesDif_OpeningFcn, ...
                   'gui_OutputFcn',  @EcuacionesDif_OutputFcn, ...
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


% --- Executes just before EcuacionesDif is made visible.
function EcuacionesDif_OpeningFcn(hObject, eventdata, handles, varargin)
centerfig;
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes EcuacionesDif wait for user response (see UIRESUME)
% uiwait(handles.figEcuDif);


% --- Outputs from this function are returned to the command line.
function varargout = EcuacionesDif_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function txtEcuDif_Callback(hObject, eventdata, handles)
% hObject    handle to txtEcuDif (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtEcuDif as text
%        str2double(get(hObject,'String')) returns contents of txtEcuDif as a double


% --- Executes during object creation, after setting all properties.
function txtEcuDif_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtEcuDif (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtResEcuDif_Callback(hObject, eventdata, handles)
% hObject    handle to txtResEcuDif (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtResEcuDif as text
%        str2double(get(hObject,'String')) returns contents of txtResEcuDif as a double


% --- Executes during object creation, after setting all properties.
function txtResEcuDif_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtResEcuDif (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
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
f = get(handles.txtEcuDif,'string');
Ecu = diff(f,x);
set(handles.txtResEcuDif,'string',char(Ecu));
axes(handles.axesGrafica);
r=char(get(handles.txtResEcuDif,'string'));
ezsurf(r);

% --- Executes on button press in btnLimpiar.
function btnLimpiar_Callback(hObject, eventdata, handles)
% hObject    handle to btnLimpiar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.txtEcuDif,'string','');
set(handles.txtResEcuDif,'string','');


% --- Executes on button press in btnCerrar.
function btnCerrar_Callback(hObject, eventdata, handles)
% hObject    handle to btnCerrar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close


% --- Executes when user attempts to close figEcuDif.
function figEcuDif_CloseRequestFcn(hObject, eventdata, handles)
seleccion=questdlg('¿Estas seguro que desea salir?','Ecuaciones Diferenciales','Salir','Cancelar','Cancelar');
if strcmp(seleccion,'Cancelar')
    return
else
    clc; delete(hObject);
end