clc % clear command window
% % para poner coemnatrios 
clear %limpia espacio de trabajo 
close % cierra todas las figuras
close all %cierra todas las figuras

%obtuvimos y(t) = L^-1(Gos) 

%forma analitica con ilaplace (Funcion de transferencia * 1/s) 
syms xo k b s m 
num = xo*s + (b/m)*xo ; 
den = s^2 + (b/m)*s + k/m  ;
Gs = num/den

%en comandos aplicamos ilaplace (Gs , t) 
y = @(xo , k, b, m,t) (b.*xo)/k - (b.*xo.*exp(-(b.*t)/(2.*m)).*(cosh((t.*(b^2/4 - k.*m)^(1/2))/m) - (m.*sinh((t.*(b^2/4 - k.*m)^(1/2))/m).*(b/(2.*m) - (xo.*b^2 - k.*m.*xo)/(b.*m.*xo)))/(b^2/4 - k.*m)^(1/2)))/k ;
t=linspace(0,100,1000);
figure 
plot(t,y(0.1,0.01,0.0817,0.2,t))


%forma step(Gs, t)

k=0.01 ;  %declaramos b, k, m, xo
m = 0.2 ;
xo= 0.1 ;
% b<sqrt(4km)   
b= get_coefficient(0,sqrt(4*k*m));%hicimos otra funcion en ota hoja para obtener el get coefficient 

%ahora planteamos nuestra ecucacion de transferenca 
  s=tf('s') 
num = xo*s + (b/m)*xo ; 
den = s^2 + (b/m)*s + k/m  ;
Gs = num/den
zero(Gs)
pole(Gs)

%Grafica los zeros(X) y los poles(O)
%figure
%pzmap(Gs)


dt=0.01; %ritmo incremento de t 
t= 0:dt:100; % rango del incremento de t 
figure
step(Gs,t)
