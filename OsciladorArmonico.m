clc % clear command window
% % para poner coemnatrios 
clear %limpia espacio de trabajo 
close % cierra todas las figuras
close all %cierra todas las figuras

%vamos a graficar x(t) = xo*cos((k/m)^(1/2) * t) para el oscilador armonico
%del cuaderno fecha 22/2/23 


dt=0.01; %ritmo incremento de t 
t= 0:dt:100; % rango del incremento de t 

x = @(t, k, m, xo) xo*cos(sqrt(k/m) * t);
%el @ es un manejador de funciones que hace a x una funcion co argumentos(t, k, m, xo)
%cuando usamos el manejador tenemos que declara cada uno de nuestros
%argumentos 
k=0.4 ;  %declaramos t, k, m, xo
m = 2 ;
xo=0.5 ;

dx = @(t, k, m, xo) -xo*sqrt(k/m)*sin(sqrt(k/m)*t)

figure

plot(t,x(t, 0.1, m, xo),'-.', 'LineWidth',1.5)
%al plot le puedes dar los valores con las constantes ej k=0.4 o meterlo
%dentro del plot directamente ej plot(t,x(t, 0.4, m, xo)) e ignora lo
%impuesto en cosntante 
hold on 
 %ahora graficamos la velocidad igual traido del cuaderno 
plot(t,dx(t, 0.1, m, xo),'k--','LineWidth',1.5) %la k nos hace la linea negra el -- la hace punteada 
%le ponemos leyendas para identificar quien es quien en la grafica 
legend('x(t)', 'dx(t)/dt')
axis([-1 110 -1 1 ])
grid minor
%le damos mas descripciones para la grafica 



