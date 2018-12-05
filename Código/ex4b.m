function [y, t] = ex4b(R, G, L, C)

h = 10^-4;

t = 0:h:1;

y = zeros(1, 1/h);

stay = 1;
i = 2;

y(1) = -(R * G)/(2 * L);
while stay == 1

    if t(i) == 1
        stay = 0;
    end

    xn = q_eq3( R, L, C, G, t(i-1) );
    yn = R_italico( y(i-1), R, G, C);
    
    y(i) = y(i-1) + h* f_Runge_Kutta_pm2( yn + (h/2), xn + (h/2)* f_Runge_Kutta_pm2(yn, xn, L, C ), L, C);

    i = i + 1;
end
    
    
end

function y = R_italico(x, R, G, C)

y = R*x + G*C*sin(x);
end

function y = f_Runge_Kutta_pm2(Rif, qf, L, C)

y = -(Rif + qf/C) / L;

end