function [Qs, Qt] = ex3b(G, R, L, C, K, t)

    T = (79 + G)/179;
    
%   cálculo de q(T)
    q = get_q_value(G, R, L, C, T);
    
    Qs = G + regra_de_simpson(K, 0, t);
    Qt = G + regra_dos_trapezios(K, 0, t);
    
    
    Qs_aux = G + regra_de_simpson(K, 0, T);
    Qt_aux = G + regra_dos_trapezios(K, 0, T);
    
    %Cálculo da interpolação
    
    
    M = str2double(sprintf('%.0f', T * 100));
    T = M/100;
    
    
    X = zeros(1, 4);
    for n = 1:4
        X(n) = T + (n-1)/100;
    end
    Ys = zeros(1, 4);
    Yt = zeros(1, 4);
    for n = 1:4
        Ys(n) = Qs(n + M - 1);
        Yt(n) = Qt(n + M - 1);
    end
   
    
    
    %Ts = interpolacao(X, Ys, T, 4);
    %Tt = interpolacao(X, Yt, T, 4);
    
    

end

function y = get_q_value(G, R, L, C, t)

     y = G * exp(-R/(2 * L) * t) .* cos(t * sqrt(1/(L * C) - (R/(2 * L))^2));
end

function y = regra_de_simpson(K, a, b)

h = (b-a) / 2;

y = (h/3) .* (get_K_value(K, a) + 4 * get_K_value(K, (a+b)/2) + get_K_value(K, b));
end

function y = regra_dos_trapezios(K, a, b)

h = b-a;

y = (h/2) .* (get_K_value(K, a) + get_K_value(K, b));
end

function y = get_K_value(K, x)


K0 = K(1);
K1 = K(2);
M = K(3);
P = K(4);

y = (K0 .* cos(M * x) + K1 .* sin(M * x)) .* exp(-P * x);

end
