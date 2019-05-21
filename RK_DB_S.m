% Diskreter Regelkreis RK_DB_S.m
% Getestet mit MATLAB + CST und 
% mit GNU Octave + Control-Package
% Manfred Lohöfener, HS Merseburg, März 2017

clear; close all

% Parameter
K_S = 1.5;    % Proportionalfaktor
T_1 = 3.0;    % [s] Zeitkonstante
T_2 = 1.0;    % [s] Zeitkonstante

T_E = 6;      % [s] Simulationsdauer
T_0 = 0.5;    % [s] Abtastzeit
s = tf ('s');       % Laplace-Op

% Kontinuierliche und diskrete Strecke
G_S = K_S / (1 + (T_1+T_2)*s + T_1*T_2*s^2);
%G_S = K_S / (1 + (T_1+T_2)*s + T_1*T_2*s^2 + s^3);  % 3. Ordnung
G_Sd = c2d (G_S, T_0);
[b_i, a_i] = tfdata (G_Sd, 'v');
% MATLAB-Octave-Kompatibilitaet
b_i=[zeros(1, length(a_i)-length(b_i)) b_i];

% Dead-Beat-Regler Führung + Störung
q_i = a_i - [a_i(2:end) 0];
p_i = [b_i(2:end) 0] - b_i;
G_R = tf (q_i, p_i, T_0);

q_v = [b_i(2:end)/sum(b_i) 0];
p_v = a_i - [a_i(2:end) 0];
G_V = tf (q_v, p_v, T_0);

G_w = minreal (G_V * feedback (G_R, G_Sd)); % w -> y
G_z = minreal (feedback (-G_Sd*G_R, -1));   % z -> y

if max (abs (pole (G_Sd))) > 1              % Strecke stabil?
  disp ('Achtung: Strecke ist instabil')
else
  disp ('Strecke ist stabil')
end

figure ('Name', 'Fuehrung', 'NumberTitle', 'off', 'Position', [0 100 800 600]);
  set (gca, 'FontSize', 15); hold on
  plot ([0 T_E], [1 1], 'm', 'LineWidth', 1)
  [x_y, t_y, y_wy, t_wy] = cont_sim (G_S, G_w, T_E, 0, 0);
  plot (t_y, x_y, 'LineWidth', 1)
  stairs (t_wy, y_wy)
  set (findobj (gcf, 'type', 'line'), 'LineWidth', 1);
  axis ([0 T_E -1.1 1.1])
  title ('Dead-Beat-Fuehrungssprungantwort Fuehrung + Stoerung', 'fontsize', 18)
  xlabel ('Zeit [s]')
  ylabel ('h(t)')
  legend ('w(t)', 'x(t)', 'y(t)')
  legend boxoff
  txt = {'Streckenparameter K_S, T_1, T_2:'; num2str([K_S T_1 T_2]); ' '
         evalc('G_V')};
  text (2, -0.1, txt, 'fontsize', 13)
  printgcf (mfilename, 0)

figure ('Name', 'Stoerung', 'NumberTitle', 'off', 'Position', [200 200 800 600]);
  set (gca, 'FontSize', 15); hold on
  plot ([0 T_E], [1 1], 'm', 'LineWidth', 1) 
  [x_z, t_y, y_zy, t_zy] = cont_sim (G_S, G_z, T_E, 0, 1);
  plot (t_y, x_z, 'LineWidth', 1)
  stairs (t_zy, y_zy)
  set (findobj (gcf, 'type', 'line'), 'LineWidth', 1);
  axis ([0 T_E -1.1 1.1])
  title ('Dead-Beat-Stoersprungantwort Fuehrung + Stoerung', 'fontsize', 18)
  xlabel ('Zeit [s]')
  ylabel ('h(t)')
  legend ('z(t)', 'x(t)', 'y(t)')
  legend boxoff
  txt = {'Streckenparameter K_S, T_1, T_2:'; num2str([K_S T_1 T_2]); ' '
         evalc('G_R')};
  text (2, -0.4, txt, 'fontsize', 13)
  printgcf (mfilename, 0)

figure ('Name', 'Pol-Nullstellen', 'NumberTitle', 'off', 'Position', [100 0 800 600]);
  set (gca, 'FontSize', 15); hold on
  pzmap (G_z)
  set (findobj (gcf, 'type', 'line'), 'LineWidth', 2);
  plot_circ ('m')                 % Einheitskreis
  axis ([-1 1 -1 1])
  title ('Dead-Beat-Pol-Nullstellenbild Fuehrung + Stoerung', 'fontsize', 18)
  xlabel ('Realteil')
  ylabel ('Imaginaerteil')
  legend ('Polstellen', 'Nullstellen', 'Einheitskreis', 'location', 'north')
  legend boxoff
  txt = {'Nullstellen Regelkreis:'; num2str(zero (G_z)'); ' '
         'Polstellen Regelkreis:'; num2str(pole (G_z)')};
  text (-0.6, -0.2, txt, 'fontsize', 12)
  printgcf (mfilename, 0)
