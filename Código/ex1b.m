function ex1b(L, C)

%   constante fornecida no enuciado
r_exato = sqrt((L - C) / C);

%   imagem r_exato
f_r_exato = var(r_exato, L, C);

%   valor de aproxiamacao a r_exato, no intervalo defenido
r_til = linspace(r_exato - 10, r_exato - 1, 100);

%   imagem de r_til
f_r_til = var(r_til, L, C);

%   erro de f_r_til, relativamente a f_r_exato
erro_f = 100 * abs(f_r_exato - f_r_til) / f_r_exato;

%   erro de r_til, raltivamente a r_exato
erro_r = 100 * abs(f_r_exato - r_til) / r_exato;

%   Desenho do grafico do erro relativo de r_til e f_r_til
figure(2)
plot( r_til, erro_r,  r_til, erro_f )

%   Defenição da posição da janela no ecrã
%   set -- (dec) parte direita, (dec) parte inferior, (dec) comprimento do ecrã, (dec) altura do ecrã
set(gcf, 'Units', 'Normalized', 'OuterPosition', [0.5, 0.6, 0.5, 0.4]);

%   Legendas dos eixos do grafico
xlabel("aprox_r"), ylabel("erro");

%   Título do gráfico
title("\fontsize{16} {\color{red}Gráfico alínea 1b)}");

%   Comentario
fprintf("1b) Comentário: \n À medida que r_til cresce para r_exato ( função azul ) , o erro relativo em %% ( função vermelha ) decresce para 0, pois a distância entre r_til e r_exato tende a anular-se \n\n");

end

function y = var(x, L, C)
    
%   fun��o f(r) fornecida no enunciado
    y = sqrt(1/(L * C) - (x/(2 * L)).^2);

end
