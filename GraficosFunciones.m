clc % clear command window
% % para poner coemnatrios 
clear %limpia espacio de trabajo 
close % cierra todas las figuras
close all %cierra todas las figuras 


% graficar en fig 1 f(x) = sin(x) y g(x)=cos(x) 
% fig 2  f(x) = 1/1-exp(-x)
%figura 3 f(x)=tanh (x) 

x = linspace(0, 4*pi, 1000);
fx = sin(x);
gx = cos(x);


figure(1)
plot(fx)
hold on %mantiene el grafico y para poner el otro ensima 
plot(gx)
legend('fx' , 'gx') %poner leyendas a las figuras las nombramos en el orden que graficamos 
title('sin y cos de x ') %ponerle titulo a la grafica 

fx =1/1-exp(-x);
figure(2)
plot(x,fx)
title('fx =1/1-exp(-x)') %ponerle titulo a la grafica 

fx = tanh(x);
fx1 = ((exp(x) - exp(-x))/ (exp(x) + exp(-x)));
fx2 = ((exp(2*x)+1)/(exp(2*x)-1));
fx3 = -1i * tan(1i*x); 
figure(3)
hold on
plot(fx)
plot(fx1)
plot(fx2)
plot(fx3)
legend('fx', 'fx1','fx2', 'fx3')
