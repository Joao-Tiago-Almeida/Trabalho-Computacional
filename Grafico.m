function Grafico(num_fig, x, y,dist_x )

%   Desenho do grafico do erro relativo de r_til e f_r_til
figure(num_fig)
plot( x, y )

%   Defenição da posição da janela no ecrã
%   set -- (dec) parte direita, (dec) parte inferior, (dec) comprimento do ecrã, (dec) altura do ecrã
set(gcf, 'Units', 'Normalized', 'OuterPosition', [dist_x, 0, 1, 1]);

%   Legendas dos eixos do grafico
xlabel(" R0[s]"), ylabel("f(R0)");

%   Tamanho do título
ax = gca;
ax.FontSize = 16;

%   Título do gráfico
str = sprintf('Gráfico %d  alínea 3a)', num_fig - 3 );
title(str);

end

%gerar_figura(4, t, J, 0, "J(t)" );