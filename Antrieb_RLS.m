% Rekursive Parameterschaetzung Antrieb_RLS.m
% 18.12.2008, Manfred Lohöfener, HoMe
% z. B. Modell eines Gleichstrommotors 

clear; close all
X = load ('Antrieb_Ausg_Vekt.csv'); % Messwerte
M = load ('Antrieb_Messmatr.csv');  % mit zurückliegenden Werten

[nr, nc] = size (M);        % Dimensionen erfassen
P = 100000*eye (nc, nc);    % Praezisionsmatrix anlegen
Theta = zeros (nc, 1);      % Parametervektor anlegen
Theta_k = zeros (nr, nc);   % nur um Verlauf zu plotten
lambda = 0.99;              % gewaehlter Wichtungsfaktor

for i = 1: nr                   % Rekursion startet 
  m = M (i, :)';                % Messwertvektor holen 
  e_v = X (i, 1) - m'*Theta;    % Vorhersagefehler bestimmen 
  K = P*m / (lambda + m'*P*m);  % Korrekturvektor berechnen 
  Theta = Theta + K*e_v;        % neue Parameterschaetzung
  P = (P - K*m'*P) / lambda;    % neue Praezisionsmatrix
  Theta_k(i, :) = Theta';       % nur für Plot 
end

figure ('Name', 'Parameter', 'NumberTitle', 'off', 'Position', [0 0 800 600])
  set (gca, 'FontSize', 18); hold on
  stairs (1: nr, Theta_k);
  title ('P a r a m e t e r s c h a e t z u n g   G l e i c h s t r o m m o t o r');
  xlabel ('Abtastpunkte k');
  ylabel ('Parameterwerte');
  legend ('a1    ', 'a2', 'a3', 'b1', 'b2', 'b3');
  legend boxoff
  axis ([0 10 -1 0.6])
  text (0.1, -0.25, 'Werte im letzten Abtastschritt');
  for i = 1:nc text (0.5, -0.275-0.05*i, sprintf('Theta(%d) = %f', i, Theta(i)));
  end
  printgcf (mfilename, 1)
