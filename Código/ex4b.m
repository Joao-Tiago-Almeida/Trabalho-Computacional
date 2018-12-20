function [yrk] = ex4b(R, G, L, C, I, ye)
    
    h = 10^-4;

    t = zeros(1, 1/h + 1);

    yrk = zeros(1, 1/h);

    stay = 1;
    i = 1;

    yrk(1) = -(R * G)/(2 * L);
    t(1) = 0;

    while stay == 1

        if i > 1
            t(i) =  t(1) + h * i;
        end
        
        yrk(i+1) = yrk(i) + h * f_Runge_Kutta_pm2( t(i) + (h/2), yrk(i) + (h/2)* f_Runge_Kutta_pm2(t(i), yrk(i), L, C, G, R), L, C, G, R);
        
        if t(i) == 1
            stay = 0;
        end
        
        i = i + 1;
    end
    
    %Cálculo da interpolação
    
    T = (27 + G)/127;
    M = str2double(sprintf('%.0f', T * 100));
    O = M/100;
    
    
    X = zeros(1, 4);
    for n = 1:4
        X(n) = O + (n-1)/100;
    end
    Yi = zeros(1, 4);
    Yye = zeros(1, 4);
    Yrk = zeros(1, 4);
    for n = 1:4
        Yi(n) = I(n + M - 1);
        Yye(n) = ye(n + M - 1);
        Yrk(n) = yrk(n + M - 1);
    end
    
    
    Ti = interpolacao(X, Yi, T, 4)
    Tye = interpolacao(X, Yye, T, 4)
    Trk = interpolacao(X, Yrk, T, 4)
    
end

function y = R_italico(x, R, G, C)

y = R*x + G*C*sin(x);
end

function y = f_Runge_Kutta_pm2(t, y, L, C, G, R)

y = -(R_italico( y, R, G, C) + q_eq3( R, L, C, G, t )/C ) / L;

end