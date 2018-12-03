function Grafico(num_fig, x, y,dist_x )

%   Desenho do grafico do erro relativo de r_til e f_r_til
figure(num_fig)
plot( x, y )

%   Defeni��o da posi��o da janela no ecr�
%   set -- (dec) parte direita, (dec) parte inferior, (dec) comprimento do ecr�, (dec) altura do ecr�
set(gcf, 'Units', 'Normalized', 'OuterPosition', [dist_x, 0, 1, 1]);

%   Legendas dos eixos do grafico
xlabel(" R0[s]"), ylabel("f(R0)");

%   Tamanho do t�tulo
ax = gca;
ax.FontSize = 16;

%   T�tulo do gr�fico
str = sprintf('Gr�fico %d  al�nea 3a)', num_fig - 3 );
title(str);

end

%gerar_figura(4, t, J, 0, "J(t)" );