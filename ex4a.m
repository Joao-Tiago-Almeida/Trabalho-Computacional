function y = ex4a(R, G, L, C)

% Vários h's que podem ser utilizados
% Correspondem ao espaçamento entre os valores no intervalo indicado
h = 10^-2;
% h = 10^-3;
% h = 10^-4;

y_zero = -(R * G)/(2 * L);
t_zero = 0;
i = 2;
stay = 0;

t = [0:h:1];
y = zeros(1, 101);



while stay == 1
   if(t(i) == 1)
       stay = 0;
   end
   
    
    
    
end






end

