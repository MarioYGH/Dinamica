clc % clear command window
% % para poner coemnatrios 
clear %limpia espacio de trabajo 
close % cierra todas las figuras
close all %cierra todas las figuras 

x = linspace(-5, 5, 100);
y = linspace(-6, 6, 100);

[X,Y] = meshgrid(x,y); % usamos meshgrid para hacer un vectr una maya o matriz 

fxy = 3*x + 5*y + 2 ; 
gxy = sqrt(9 - X.^2 - Y.^2);

figure
plot3(X, Y, fxy)% para desplegar grafico 

figure
surf(X, Y, real(gxy))


