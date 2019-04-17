% Symbolische Diskretisierung des Standard-PID-Reglers PID_diskr_symb.m
% Getestet mit MATLAB + CST und 
% mit GNU Octave + Control-Package
% Manfred Lohoefener, HS Merseburg, April 2019

clear; close all
syms K_R T_N T_V T_0 s z
G_Rk = K_R * (1 + 1 / (T_N*s) + T_V*s);
disp (' '); disp ('Kontinuierlicher PID-Regler'); disp (G_Rk)

% Transformationsformeln für I- und D-Glied anwenden
G_Rd = K_R * (1 + T_0*z^-1 / (T_N*(1-z^-1)) + T_V*(1-z^-1)/T_0);
disp (' '); disp ('Diskreter PID-Regler'); disp (G_Rd)
G_Rd = simplify (G_Rd);
disp (' '); disp (G_Rd)
[num, den] = numden (G_Rd);
num = partfrac (num);
disp (' '); disp ('Zählerausdruck'); disp (num)
den = partfrac (den);
disp (' '); disp ('Nennerausdruck'); disp (den)

% Faktoren auslesen und Parametervektor bauen
q_i = [K_R*T_0*T_N+K_R*T_N*T_V 
       K_R*T_0^2-K_R*T_0*T_N-2*K_R*T_N*T_V 
       K_R*T_N*T_V];
p_i = [T_0*T_N 
       -T_0*T_N];
disp (' '); disp ('Polynome q_i p_i'); disp ([q_i [p_i; 0]])
q_i = q_i / p_i(1);
q_i = simplify (q_i);
p_i = p_i / p_i(1);
disp (' '); disp ('Polynome q_i p_i'); disp ([q_i [p_i; 0]])
