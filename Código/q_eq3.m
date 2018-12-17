function Q = q_eq3(R, L, C, G, t)

Q = G * exp(-R/(2 * L) * t) .* cos(t * sqrt(1/(L * C) - (R/(2 * L))^2));

end