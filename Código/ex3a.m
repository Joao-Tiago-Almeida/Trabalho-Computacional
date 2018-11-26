function ex3a(Q, t, L, R, C) 

%   Derivada da função Q em orem ao tempo (not sure)
dq = gradient(Q);

%   mMatriz 2*100
T = [t; dq];

%   função gerar tabela
gerar_tabela(T);

%   Arredondamento de M às unidades
temp = var(R, L, C);
M = str2double(sprintf('%.0f', temp));

%   Arredondamento de P às unidades
temp = (R/(2 * L));
P = str2double(sprintf('%.0f', temp));

%   TODO TODO TODO TODO
%determinar pelo método dos mínimos quadrados
K0 = 1;
K1 = 1;

%   Expressão de simplificação da intensidade de corrente em função ao
%       tempo
J = (K0 .* cos(M * t) + K1 .* sin(M * t)) .* exp(-P * t); 

gerar_figura(4, t, J, 0, "J(t)" );
gerar_figura(5, t, J-dq, 0.5, "J(t) - i(t)" );

%   Comentario
fprintf("#a) Comentário: \n Visto que J(t) é uma aproximação da função i(t), a subtração entre ambas tende a anular-se \n\n");

end

function y = var(x, L, C)
    
%   fun��o f(r) fornecida no enunciado
    y = sqrt(1/(L * C) - (x/(2 * L)).^2);

end

function gerar_figura(num_fig, x, y,dist_x, string )

%   Desenho do grafico do erro relativo de r_til e f_r_til
figure(num_fig)
plot( x, y )

%   Defenição da posição da janela no ecrã
%   set -- (dec) parte direita, (dec) parte inferior, (dec) comprimento do ecrã, (dec) altura do ecrã
set(gcf, 'Units', 'Normalized', 'OuterPosition', [dist_x, 0, 0.50, 0.40]);

%   Legendas dos eixos do grafico
xlabel("Tempo [s]"), ylabel(string);

%   Tamanho do título
ax = gca;
ax.FontSize = 16;

%   Título do gráfico
str = sprintf('Gráfico %d  alínea 3a)', num_fig - 3 );
title(str);

end

function gerar_tabela(T)

%   Gerar figura
f = figure(3);

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