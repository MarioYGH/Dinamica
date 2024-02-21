clc % clear command window
% % para poner coemnatrios 
clear %limpia espacio de trabajo 
close % cierra todas las figuras
close all %cierra todas las figuras 

%convertidor de seniales analogicas senoidales a digitales 
%version final super perfecta 


% Ingresar la frecuencia y frecuencia de muestreo
freq = input('Ingrese la frecuencia de la señal: ');
sampfreq = input('Ingrese la frecuencia de muestreo: ');

% Crear el vector de tiempo
t = -2 * pi:0.1:2 * pi;  % tiempo de señal
ts = -2 * pi: 1/sampfreq:2 * pi;  % tiempo de muestreo
tempm = -2 * pi:0.1:2 * pi;
w = pi*freq; % frecuencia angular 
n = ts/ sampfreq; % numero de muestras 

% Generar la señal senoidal
%y = sin(pi * freq * t);
x = sin(w*t);
subplot(3,1,1);
plot(t,x);
grid on 
title 'señal original'

% muestreo
b = sin(w*n*sampfreq);
bbuena = (sin(w*ts)+1)/2; 
subplot(3,1,2);
stem(ts,bbuena) % stem lo pone muestreado 
grid on 
title 'señal muestreada'

%cuantificacion y codificacion 
valorref = input('Ingrese Voltaje de referencia: ');
vd = bbuena*valorref;
resolucion = 2^(input('Ingrese numero de Bits '));
sd = vd*resolucion/valorref;
subplot(3,1,3);
stairs(ts,sd) % digitalisamos 
grid on 
title 'señal digital'

