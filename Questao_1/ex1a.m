function ex1a( G, L, R, C )

%   Divide o intervalo [0,1] em 100 pontos
t = linspace(0, 1, 100);

%   Função da Carga em função do tempo 
q = G * exp(-R/(2 * L) * t) .* cos(t * sqrt(1/(L * C) - (R/(2 * L))^2));

%   Desenho do gráfico
plot(t, q);

%   Legendas dos eixos do gráfico
xlabel("Tempo [s]"), ylabel("Carga [C]");

end

