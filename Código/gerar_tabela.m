function gerar_tabela(T, num_fig, dist_x, dist_y, lenght, height )

%   Gerar figura
f = figure(num_fig);

%   Atribuição a variáveis as estruturas da figur
uit = uitable(f);

%   Identificação das linhas
uit.RowName = {'t', 'dq'};
% uit.column = {

%   Copia do resulatdo para a tabela
uit.Data = T;

%   Defenição da posição da janela no ecrã
%   uit.Position  -- xx, yy, lenght, height
%   set -- (dec) parte direita, (dec) parte inferior, (dec) de comprimento do ecrã, (dec) de altura do ecrã

uit.Position = [0, 0, 1450, 70];
set(gcf, 'Units', 'Normalized', 'OuterPosition', [dist_x, dist_y, lenght, height]);

%   Título do gráfico
title("\fontsize{16} {\color{magenta}Tabela pergunta 3)}");


end
