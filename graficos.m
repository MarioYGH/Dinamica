clc % clear command window
% % para poner coemnatrios 
clear %limpia espacio de trabajo 
close % cierra todas las figuras
close all %cierra todas las figuras 

%graficar la siguiente funcion 
% f(x) = sin(x), x E [-2pi,2pi] , (Delta x) = pi/4

%x = -2*pi : pi/4 : 2*pi;   % forma 1 de declarar un vector   depuntoa : intervalo entre puntos: a punto b 

x = linspace(-2*pi, 2*pi, 100);  %forma 2  (de donde , a donde , cuantos puntos) 

fx = sin(x) %por default esta en gradianes si quiero grados escribo sind 


figure 
plot(x,fx)
xlabel('x')
ylabel('fx')
title('Funcion sin(x)')
