function varargout = Laplace(varargin)
% LAPLACE MATLAB code for Laplace.fig
%      LAPLACE, by itself, creates a new LAPLACE or raises the existing
%      singleton*.
%
%      H = LAPLACE returns the handle to a new LAPLACE or the handle to
%      the existing singleton*.
%
%      LAPLACE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in LAPLACE.M with the given input arguments.
%
%      LAPLACE('Property','Value',...) creates a new LAPLACE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Laplace_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Laplace_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Laplace

% Last Modified by GUIDE v2.5 23-Mar-2021 18:28:15

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Laplace_OpeningFcn, ...
                   'gui_OutputFcn',  @Laplace_OutputFcn, ...
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


% --- Executes just before Laplace is made visible.
function Laplace_OpeningFcn(hObject, eventdata, handles, varargin)
centerfig;
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Laplace wait for user response (see UIRESUME)
% uiwait(handles.figLaplace);


% --- Outputs from this function are returned to the command line.
function varargout = Laplace_OutputFcn(hObject, eventdata, handles) 
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



function txtRes_Callback(hObject, eventdata, handles)
% hObject    handle to txtRes (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtRes as text
%        str2double(get(hObject,'String')) returns contents of txtRes as a double


% --- Executes during object creation, after setting all properties.
function txtRes_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtRes (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
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
f = get(handles.txtFuncion,'string');
lap = laplace(f,x);
set(handles.txtRes,'string',char(lap));
axes(handles.axesGrafica);
ezsurf(char(lap));


% --- Executes on button press in btnLimpiar.
function btnLimpiar_Callback(hObject, eventdata, handles)
% hObject    handle to btnLimpiar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.txtFuncion,'string','');
set(handles.txtRes,'string','');

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close

% --- Executes when user attempts to close figLaplace.
function figLaplace_CloseRequestFcn(hObject, eventdata, handles)
seleccion=questdlg('�Estas seguro que desea salir?','Laplace','Salir','Cancelar','Cancelar');
if strcmp(seleccion,'Cancelar')
    return
else
    clc; delete(hObject);
end