clc
clear 
close all

A = [1, 2, 3; 4, 5, 6; 7, 8, 9];

% Guarda la matriz original en B
B = A;

sol = elim_gauss_apellidos(A);
disp(sol);

function sol = elim_gauss_apellidos(sis)

    % Toma una matriz aumentada 'sis' como entrada
    % Proporciona un vector de soluciones usando eliminación gaussiana 
    % y convierte la matriz a la forma escalonada de fila reducida

    n = size(sis, 1);

    for piv = 1:n-1
        for fila = piv+1:n
            fact = sis(fila,piv) / sis(piv,piv);
            sis(fila,piv:end) = sis(fila,piv:end) - (fact * sis(piv,piv:end));
        end
    end

    disp(sis);

    sol = zeros(n, 1); % Inicializar el vector de soluciones

    sol(n) = sis(n,end) / sis(n,n);

    for fila = n-1:-1:1
        suma = 0;
        for col = fila+1:n
            suma = suma + (sis(fila,col) * sol(col)); 
        end
        sol(fila) = (sis(fila,end) - suma) / sis(fila,fila);
    end

    sol = sol';

end
