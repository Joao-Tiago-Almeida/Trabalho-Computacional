function ex3a(Q, t) 

%   Derivada da função Q em orem ao tempo (not sure)
dq = gradient(Q);

%   mMatriz 2*100
T = [t; dq];

%   Gerar figura
f = figure;

%   Atribuição a variáveis as estruturas da figur
uit = uitable(f);

%   Identificação das linhas
uit.RowName = {'t', 'dq'};

%   Copia do resulatdo para a tabela
uit.Data = T;

%   Defenição da posição da janela no ecrã
%   uit.Position  -- xx, yy, lenght, height
%   set -- (dec) parte direita, (dec) parte inferior, (dec) de comprimento do ecrã, (dec) de altura do ecrã

uit.Position = [0, 0, 1450, 70];
set(gcf, 'Units', 'Normalized', 'OuterPosition', [0, 0.4, 1, .20]);

%   Título do gráfico
title("\fontsize{16} {\color{magenta}Tabela pergunta 3)}");


end

