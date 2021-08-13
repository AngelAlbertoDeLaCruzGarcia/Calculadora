function varargout = LaplaceInv(varargin)
% LAPLACEINV MATLAB code for LaplaceInv.fig
%      LAPLACEINV, by itself, creates a new LAPLACEINV or raises the existing
%      singleton*.
%
%      H = LAPLACEINV returns the handle to a new LAPLACEINV or the handle to
%      the existing singleton*.
%
%      LAPLACEINV('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in LAPLACEINV.M with the given input arguments.
%
%      LAPLACEINV('Property','Value',...) creates a new LAPLACEINV or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before LaplaceInv_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to LaplaceInv_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help LaplaceInv

% Last Modified by GUIDE v2.5 23-Mar-2021 21:22:02

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @LaplaceInv_OpeningFcn, ...
                   'gui_OutputFcn',  @LaplaceInv_OutputFcn, ...
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


% --- Executes just before LaplaceInv is made visible.
function LaplaceInv_OpeningFcn(hObject, eventdata, handles, varargin)
centerfig;
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes LaplaceInv wait for user response (see UIRESUME)
% uiwait(handles.figLapInv);


% --- Outputs from this function are returned to the command line.
function varargout = LaplaceInv_OutputFcn(hObject, eventdata, handles) 
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
syms x
f = get(handles.txtFuncion,'string');
r = ilaplace(f,x);
set(handles.txtRes,'string',char(r));
axes(handles.axesGrafica);
ezsurf(char(r));

% --- Executes on button press in btnLimpiar.
function btnLimpiar_Callback(hObject, eventdata, handles)
set(handles.txtFuncion,'string','');
set(handles.txtRes,'string','');


% --- Executes on button press in btnCerrar.
function btnCerrar_Callback(hObject, eventdata, handles)
% hObject    handle to btnCerrar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close
