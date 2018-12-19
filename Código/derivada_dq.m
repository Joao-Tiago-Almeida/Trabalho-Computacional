function i = derivada_dq(t, L, R, C, G) 


i = (-1) * G * ( R/(2 * L) * exp(-R/(2 * L) * t) .* cos(t * sqrt(1/(L * C) - (R/(2 * L))^2)) + exp(-R/(2 * L) * t) .* sin(t * sqrt(1/(L * C) - (R/(2 * L))^2)) * sqrt(1/(L * C) - (R/(2 * L))^2));

end

