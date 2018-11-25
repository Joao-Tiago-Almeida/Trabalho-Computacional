function ex1a(Q, t)

%   Desenho do grafico
figure(1)
plot(t, Q);

%   Legendas dos eixos do grafico
xlabel("Tempo [s]"), ylabel("Carga [C]");

%   Defenição da posição da janela no ecrã
%   set -- (dec) parte direita, (dec) parte inferior, (dec) comprimento do ecrã, (dec) altura do ecrã
set(gcf, 'Units', 'Normalized', 'OuterPosition', [0, .6, 0.5, 0.4]);

%   Título do gráfico
title("\fontsize{16} {\color{blue}Gráfico alínea 1a)}");

end