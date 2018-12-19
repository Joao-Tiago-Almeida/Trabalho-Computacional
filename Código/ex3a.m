function [a, b, c, T] = ex3a(t, L, R, C, G) 


dq = derivada_dq(t, L, R, C, G);

%   Matriz 2*100
T = [t; dq];

%   Arredondamento de M às unidades
temp = var(R, L, C);
M = str2double(sprintf('%.0f', temp));

%   Arredondamento de P às unidades
temp = (R/(2 * L));
P = str2double(sprintf('%.0f', temp));
 
%determinar pelo método dos mínimos quadrados
Z = get_minimo_quadrado(M, P, dq);

K0 = Z(1);
K1 = Z(2);

%   Expressão de simplificação da intensidade de corrente em função ao
%       tempo
J = (K0 .* cos(M * t) + K1 .* sin(M * t)) .* exp(-P * t); 



%   Comentario
%fprintf("3a) Comentário: \n Visto que J(t) é uma aproximação da função i(t), a subtração entre ambas tende a anular-se \n\n");

a = [K0, K1, M, P];
b = J;
c = dq;
end

function y = var(x, L, C)
    
%   fun��o f(r) fornecida no enunciado
    y = sqrt(1/(L * C) - (x/(2 * L)).^2);

end


function y = get_minimo_quadrado(M, P, i)

%   cálculo de cada elemento da matriz dos coeficientes do sistema
a11 = calcula_elemento(M, P, 0, 0, i);
a12 = calcula_elemento(M, P, 0, 1, i);
a21 = calcula_elemento(M, P, 1, 0, i);
a22 = calcula_elemento(M, P, 1, 1, i);

%   indexação na matriz dos coeficientes do sistema
A = [a11, a12; a21, a22];
%   cálculo de cada elemento da matriz dos termos independentes
b11 = calcula_elemento(M, P, 2, 0, i);
b21 = calcula_elemento(M, P, 2, 1, i);

%   indexação na matriz dos termos independentes
B = [b11; b21];

%   cálculo da matriz de solução do sistema 
%       A . x = B <=>
%   <=> A^-1 . A . x = A^-1 . B <=>
%   <=> x = A^-1 . B
y = A\B;


end

function  y = calcula_elemento(M, P, a, b, dq)
soma_zero = 0;

%   Execução do somatório para o cálculo dos elementos da matriz dos 
%       coeficientes do sistema , no método dos mínimos quadrados

    for i = 0:2
        if a == 0
            c = phi_0(M, P, (i/100));
        elseif a == 1
            c = phi_1(M, P, (i/100));
        elseif a ==2 
            c = dq(i + 1);
        end

        if b == 0
            d = phi_0(M, P, (i/100));
        elseif b == 1
            d = phi_1(M, P, (i/100));
        end    
        
        soma_zero = soma_zero + (c * d);
        
    end
    
    y = soma_zero;
end

function y = phi_0(M, P, t)
%    phi_0
    y = cos(M * t) * exp(-P * t); 
end

function y = phi_1(M, P, t)
%    phi_1
    y = sin(M * t) * exp(-P * t);
end
