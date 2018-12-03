function [r_til, erro_r,  f_r_til, erro_f] = ex1b(L, C)

%   constante fornecida no enuciado
r_exato = 2 * sqrt((L - C) / C);

%   imagem r_exato
f_r_exato = var(r_exato, L, C);

%   valor de aproxiamacao a r_exato, no intervalo defenido
r_til = linspace(r_exato - 10, r_exato - 1, 100);

%   imagem de r_til
f_r_til = var(r_til, L, C);

%   erro de f_r_til, relativamente a f_r_exato
erro_f = 100 * abs(f_r_exato - f_r_til) / f_r_exato;

%   erro de r_til, raltivamente a r_exato
erro_r = 100 * abs(r_exato - r_til) / r_exato;

%   Comentario
fprintf("1b) Comentário: \n TODO to be done \n\n");

end

function y = var(x, L, C)
    
%   fun��o f(r) fornecida no enunciado
    y = sqrt(1/(L * C) - (x/(2 * L)).^2);

end
