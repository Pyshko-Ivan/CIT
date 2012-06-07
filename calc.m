function varargout = calc(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @calc_OpeningFcn, ...
                   'gui_OutputFcn',  @calc_OutputFcn, ...
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

function calc_OpeningFcn(hObject, eventdata, handles, varargin)

handles.output = hObject;


guidata(hObject, handles);


global jj shift
set(handles.text1,'String','0.');
jj=0;
shift=0;

function varargout = calc_OutputFcn(hObject, eventdata, handles) 

varargout{1} = handles.output;



function togglebutton1_Callback(hObject, eventdata, handles)

function pushbutton1_Callback(hObject, eventdata, handles)

global jj
textString = get(handles.text1,'String');

if(strcmp(textString,'0.')==1)&(jj==0)
   set(handles.text1,'String','1') ;
else
textString =strcat(textString,'1');
set(handles.text1,'String',textString)

end
jj=0;


function pushbutton2_Callback(hObject, eventdata, handles)

global jj
textString = get(handles.text1,'String');

if(strcmp(textString,'0.')==1)&(jj==0)
   set(handles.text1,'String','2') ;
else
textString =strcat(textString,'2');
set(handles.text1,'String',textString)

end
jj=0;

function pushbutton3_Callback(hObject, eventdata, handles)

global jj
textString = get(handles.text1,'String');

if(strcmp(textString,'0.')==1)&(jj==0)
   set(handles.text1,'String','3') ;
else
textString =strcat(textString,'3');
set(handles.text1,'String',textString)

end
jj=0;


function pushbutton4_Callback(hObject, eventdata, handles)

global jj
textString = get(handles.text1,'String');

if(strcmp(textString,'0.')==1)&(jj==0)
   set(handles.text1,'String','7') ;
else
textString =strcat(textString,'7');
set(handles.text1,'String',textString)

end
jj=0;


function pushbutton5_Callback(hObject, eventdata, handles)

global jj
textString = get(handles.text1,'String');

if(strcmp(textString,'0.')==1)&(jj==0)
   set(handles.text1,'String','5') ;
else
textString =strcat(textString,'5');
set(handles.text1,'String',textString)

end
jj=0;

function pushbutton6_Callback(hObject, eventdata, handles)

global jj
textString = get(handles.text1,'String');

if(strcmp(textString,'0.')==1)&(jj==0)
   set(handles.text1,'String','6') ;
else
textString =strcat(textString,'6');
set(handles.text1,'String',textString)

end
jj=0;


function pushbutton7_Callback(hObject, eventdata, handles)

textString = get(handles.text1,'String');
textString =strcat(textString,'+');
set(handles.text1,'String',textString)


function pushbutton8_Callback(hObject, eventdata, handles)

global jj
textString = get(handles.text1,'String');

if(strcmp(textString,'0.')==1)&(jj==0)
   set(handles.text1,'String','8') ;
else
textString =strcat(textString,'8');
set(handles.text1,'String',textString)

end
jj=0;


function pushbutton9_Callback(hObject, eventdata, handles)

global jj
textString = get(handles.text1,'String');

if(strcmp(textString,'0.')==1)&(jj==0)
   set(handles.text1,'String','9') ;
else
textString =strcat(textString,'9');
set(handles.text1,'String',textString)

end
jj=0;


function pushbutton10_Callback(hObject, eventdata, handles)

textString = get(handles.text1,'String');
textString =strcat(textString,'*');
set(handles.text1,'String',textString)


function pushbutton11_Callback(hObject, eventdata, handles)

textString = get(handles.text1,'String');
textString =strcat(textString,'-');
set(handles.text1,'String',textString)


function pushbutton12_Callback(hObject, eventdata, handles)

global jj
textString = get(handles.text1,'String');

if(strcmp(textString,'0.')==1)&(jj==0)
   set(handles.text1,'String','0.') ;
else
textString =strcat(textString,'0');
set(handles.text1,'String',textString)

end
jj=0;

function pushbutton13_Callback(hObject, eventdata, handles)


global jj
textString = get(handles.text1,'String');

if(strcmp(textString,'0.')==1)&(jj==0)
   set(handles.text1,'String','4') ;
else
textString =strcat(textString,'4');
set(handles.text1,'String',textString)

end
jj=0;

function pushbutton14_Callback(hObject, eventdata, handles)

textString = get(handles.text1,'String');
textString =strcat(textString,'/');
set(handles.text1,'String',textString)


function pushbutton15_Callback(hObject, eventdata, handles)

textString = get(handles.text1,'String');

ans =eval(textString);
set(handles.text1,'String',ans)




function pushbutton16_Callback(hObject, eventdata, handles)

set(handles.text1,'String','0.') ;




function pushbutton17_Callback(hObject, eventdata, handles)

textString = get(handles.text1,'String');

if(strcmp(textString,'0.')==1)
   set(handles.text1,'String','0.') ;
else
a = strread(textString, '%f');
a=0-a;
set(handles.text1,'String',a)
end




function pushbutton18_Callback(hObject, eventdata, handles)

global jj 
textString = get(handles.text1,'String');
if(strcmp(textString,'0.')==1)
   set(handles.text1,'String','0.') ;
   jj=1;
else
textString =strcat(textString,'.');
set(handles.text1,'String',textString)
end




function pushbutton19_Callback(hObject, eventdata, handles)

textString = get(handles.text1,'String');

if(strcmp(textString,'0.')==1)
   set(handles.text1,'String','(') ;
else
textString =strcat(textString,'(');
set(handles.text1,'String',textString)
end

function pushbutton20_Callback(hObject, eventdata, handles)

textString = get(handles.text1,'String');

if(strcmp(textString,'0.')==1)
   set(handles.text1,'String',')') ;
else
textString =strcat(textString,')');
set(handles.text1,'String',textString)
end




function pushbutton21_Callback(hObject, eventdata, handles)

global jj
textString = get(handles.text1,'String');

if(strcmp(textString,'0.')==1)&(jj==0)
   set(handles.text1,'String','0.') ;
else
    ss=char(textString);
    l=length(textString);
    textString=ss(1:l-1);
set(handles.text1,'String',textString)

end
jj=0;




function pushbutton22_Callback(hObject, eventdata, handles)

global shift
textString = get(handles.text1,'String');
 switch shift
     case 0
if(strcmp(textString,'0.')==1)
   set(handles.text1,'String','sin') ;
else
textString =strcat(textString,'sin');
set(handles.text1,'String',textString)
end
    case 1
if(strcmp(textString,'0.')==1)
   set(handles.text1,'String','asin') ;
else
textString =strcat(textString,'asin');
set(handles.text1,'String',textString)
end
        end


function pushbutton23_Callback(hObject, eventdata, handles)

global shift
textString = get(handles.text1,'String');
 switch shift
     case 0
if(strcmp(textString,'0.')==1)
   set(handles.text1,'String','cos') ;
else
textString =strcat(textString,'cos');
set(handles.text1,'String',textString)
end
    case 1
if(strcmp(textString,'0.')==1)
   set(handles.text1,'String','acos') ;
else
textString =strcat(textString,'acos');
set(handles.text1,'String',textString)
end
        end


function pushbutton24_Callback(hObject, eventdata, handles)

global shift
textString = get(handles.text1,'String');
 switch shift
     case 0
if(strcmp(textString,'0.')==1)
   set(handles.text1,'String','tan') ;
else
textString =strcat(textString,'tan');
set(handles.text1,'String',textString)
end
    case 1
if(strcmp(textString,'0.')==1)
   set(handles.text1,'String','atan') ;
else
textString =strcat(textString,'atan');
set(handles.text1,'String',textString)
end
        end



function pushbutton25_Callback(hObject, eventdata, handles)

global shift
textString = get(handles.text1,'String');
 switch shift
     case 0
if(strcmp(textString,'0.')==1)
   set(handles.text1,'String','log') ;
else
textString =strcat(textString,'log');
set(handles.text1,'String',textString)
end
    case 1
if(strcmp(textString,'0.')==1)
   set(handles.text1,'String','log10') ;
else
textString =strcat(textString,'log10');
set(handles.text1,'String',textString)
end
        end


function pushbutton26_Callback(hObject, eventdata, handles)


global jj shift 

shift=1;
