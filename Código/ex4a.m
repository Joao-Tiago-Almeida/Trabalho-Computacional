function [y, t] = ex4a(R, G, L, C, n)

% Vários h's que podem ser utilizados
% Correspondem ao espaçamento entre os valores no intervalo indicado

h = [10^-2; 10^-3; 10^-4];

t = 0:h(n):1;

y = zeros(1, (1/h(n)) + 1);

stay = 1;
i = 1;

y(1) = (-1)*(R * G)/(2 * L);
while stay == 1

    y(i+1) = y(i) + h(n) * f_Euler( R_italico( y(i), R, G, C), q_eq3( R, L, C, G, t(i) ), L, C );

    i = i + 1;
    
    if t(i) == 1
        stay = 0;
    end
end
    
    
end

function y = R_italico(x, R, G, C)

y = R*x + G*C*sin(x);
end

function y = f_Euler(Rif, qf, L, C)

y = - (Rif + (qf/C)) / L;

end