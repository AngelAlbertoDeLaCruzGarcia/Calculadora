function varargout = Calculadora(varargin)
% CALCULADORA MATLAB code for Calculadora.fig
%      CALCULADORA, by itself, creates a new CALCULADORA or raises the existing
%      singleton*.
%
%      H = CALCULADORA returns the handle to a new CALCULADORA or the handle to
%      the existing singleton*.
%
%      CALCULADORA('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CALCULADORA.M with the given input arguments.
%
%      CALCULADORA('Property','Value',...) creates a new CALCULADORA or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Calculadora_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Calculadora_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Calculadora

% Last Modified by GUIDE v2.5 23-Mar-2021 19:38:39

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Calculadora_OpeningFcn, ...
                   'gui_OutputFcn',  @Calculadora_OutputFcn, ...
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


% --- Executes just before Calculadora is made visible.
function Calculadora_OpeningFcn(hObject, eventdata, handles, varargin)
movegui('center');
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Calculadora wait for user response (see UIRESUME)
% uiwait(handles.figure1);
axes(handles.axesFondo); %Definimos imgFondo como el fondo principal.
[x,map]=imread('imgFondo.jpg'); %Leer imagen
image(x); %Mostrar imgen leida
colormap(map); %Mostramos el mapa de colores de la imagen leida.
axis off
hold on



% --- Outputs from this function are returned to the command line.
function varargout = Calculadora_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --------------------------------------------------------------------
function menuDer_Callback(hObject, eventdata, handles)
% hObject    handle to menuDer (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Derivadas

% --------------------------------------------------------------------
function menuIntegra_Callback(hObject, eventdata, handles)
% hObject    handle to menuIntegra (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function menuEcuDer_Callback(hObject, eventdata, handles)
EcuacionesDif

% --------------------------------------------------------------------
function menuLaplace_Callback(hObject, eventdata, handles)
% hObject    handle to menuLaplace (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function menuSalir_Callback(hObject, eventdata, handles)
% hObject    handle to menuSalir (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close



% --- Executes during object creation, after setting all properties.
function axesFondo_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axesFondo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axesFondo


% --- Executes during object deletion, before destroying properties.
function axesFondo_DeleteFcn(hObject, eventdata, handles)
% hObject    handle to axesFondo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function msubLapDir_Callback(hObject, eventdata, handles)
Laplace

% --------------------------------------------------------------------
function msubLapInv_Callback(hObject, eventdata, handles)
% hObject    handle to msubLapInv (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
LaplaceInv

% --------------------------------------------------------------------
function msubIntDir_Callback(hObject, eventdata, handles)
Integrales
% --------------------------------------------------------------------
function msubIntDef_Callback(hObject, eventdata, handles)
% hObject    handle to msubIntDef (see GCBO)
IntegralesDef
% --- Executes when user attempts to close figure1.
function figure1_CloseRequestFcn(hObject, eventdata, handles)
seleccion=questdlg('¿Estas seguro que desea salir?','Calculadora','Salir','Cancelar','Cancelar');
if strcmp(seleccion,'Cancelar')
    return
else
    clc; delete(handles.figure1);
end
