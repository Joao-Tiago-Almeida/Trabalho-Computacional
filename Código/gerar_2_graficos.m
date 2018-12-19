function gerar_2_graficos(num_fig, x, y1, y2, dist_x, dist_y, lenght, height, stringx, stringy, stringy2, titulo )

%   Desenho do grafico do erro relativo de r_til e f_r_til
figure(num_fig);

xlabel(stringx);

yyaxis left
plot(x, y1, '-');
ylabel(stringy);

yyaxis right
plot( x, y2, '-');
ylabel(stringy2);

%   Defenição da posição da janela no ecrã
%   set -- (dec) parte esquerda, (dec) parte inferior, (dec) comprimento do ecrã, (dec) altura do ecrã
set(gcf, 'Units', 'Normalized', 'OuterPosition', [dist_x, dist_y, lenght, height]);

%   Legendas dos eixos do grafico

%   Tamanho do título
ax = gca;
ax.FontSize = 16;

%   Título do gráfico
str = sprintf('%s', titulo);
title(str);

end



%TODO MUDAR NO EX 1, E GERAR_TABELA