function ex1b(L, C)

%   constante fornecida no enuciado
r_exato = sqrt((L - C) / C);

%   imagem r_exato
f_r_exato = var(r_exato, L, C);

%   valor de aproxiamação a r_exato, no intervalo defenido
r_til = linspace(r_exato - 10, r_exato - 1, 100);

%   imagem de r_til
f_r_til = var(r_til, L, C);

%   erro da f_r_til, raltivamente a f_r_exato
erro = 100 * abs(f_r_exato - f_r_til) / f_r_exato;

%   Desenho do gráfico
plot( r_til, erro)

%   Legendas dos eixos do gráfico
xlabel("aprox_r"), ylabel("erro");

end

function y = var(x, L, C)
    
%   função f(r) fornecida no enunciado
    y = sqrt(1/(L * C) - (x/(2 * L)).^2);

end
