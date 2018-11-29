function y = deri( x )
% first de output and then the name with input, function name = file name
y= 4 *(((-10^-2 / (2*7.8) ) * exp(-x/(2 * 7.8) * 10^-2) *cos(10^-2 * sqrt(1/(7.8 * 7.6*10^-4) - (x/(2 * 7.8))^2))) - ( exp(-x/(2 * 7.8) * 10^-2)*(10^-2/(4*7.8^2))* x * (1/( sqrt(1/(7.8 * 7.6*10^-4) - (x/(2 * 7.8))^2))) * sin(10^-2 * sqrt(1/(7.8 * 7.6*10^-4) - (x/(2 * 7.8))^2))));


end