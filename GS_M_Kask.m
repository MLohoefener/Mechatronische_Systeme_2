% Kaskadenregelung eines fremderregten Gleichstrommotors GS_M_Kask.m
% Vorgabe von J, Psi, R_A, L_A und M_R1; Verwendung von M_R1s

clear all 
close all

% Daten
J = 0.75e-3;	      % kg m²
Psi = 0.35;	        % V.s - ist gleich KT bzw. KE
R_A = 0.95;	        % Ohm
L_A = 1.9e-3;	      % H
M_R1 = 70.6e-3;	    % N m/1000 Upm
M_R1s = M_R1*60/(2*pi*1000);	% Umrechnung in N m s
T_E = 0.05;          % [s] Simulationsende 100 ms
T_d = 0.0001;       % [s] Schrittweite 0.1 ms
t   = 0: T_d: T_E;  % [s] Zeitachse

% Gleichstrommotor
s = tf('s');    % Laplace-Operator
G_Uw = Psi / (Psi^2+M_R1s*R_A + (J*R_A + M_R1s*L_A)*s + J*L_A*s^2);
G_UI = (M_R1s + J*s) / (Psi^2+M_R1s*R_A + (J*R_A + M_R1s*L_A)*s + J*L_A*s^2);

% Regler Position einschleifig
G_R1 = pidstd (87, 9999, 0);      % k_krit = 175, gewählt k_p = 87
G_1 = feedback (G_R1*G_Uw/s, 1);  % w -> x

% Regler Geschwindigkeit und Position zweischleifig
G_R2 = pidstd (10, 9999, 0);     % k_p = 10
G_2 = feedback (G_R2*G_Uw, 1);

G_R3 = pidstd (260, 9999, 0);     % k_krit = 520, gewählt k_p = 260
G_3 = feedback (G_R3*G_2/s, 1);   % w -> x

% Regler Beschleunigung, Geschwindigkeit und Position, dreischleifig
G_R4 = pidstd (500, 9999, 0);     % k_p = 500
G_4 = feedback (G_R4, G_UI);

G_R5 = pidstd (250, 9999, 0);     % k_p = 100
G_5 = feedback (G_R5*G_4*G_Uw, 1);

G_R6 = pidstd (260, 9999, 0);     % k_krit = 520, gewählt k_p = 260
G_6 = feedback (G_R6*G_5/s, 1);   % w -> x

figure ('Name', 'Kaskaden', 'NumberTitle', 'off', 'Position', [0 200 800 600]);
  subplot (2, 3, 1)
    step (G_1, t); legend boxoff
  subplot (2, 3, 2)
    step (G_2, t); legend boxoff
  subplot (2, 3, 3)
    step (G_3, t); legend boxoff
  subplot (2, 3, 4)
    step (G_4, t); legend boxoff
  subplot (2, 3, 5)
    step (G_5, t); legend boxoff
  subplot (2, 3, 6)
    step (G_6, t); legend boxoff
print (gcf, [mfilename '-' get(gcf, 'name') '.emf'], '-dmeta');
