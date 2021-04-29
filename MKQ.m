% Parameterschätzung MKQ.m
% 11.12.2008, Manfred Lohöfener, HoMe
% z. B. Modell eines Gleichstrommotors 

clear, close all

M = load ('Antrieb_Messmatr.csv');
X = load ('Antrieb_Ausg_Vekt.csv');
disp ('M')
disp (M)
disp ('X')
disp (X)

% Parametervektor
Theta = (M'*M) \ (M'*X);

% Eigenwerte
evals = 2 * eig (M'*M);
disp ('Theta')
disp (Theta)
disp ('evals')
disp (evals)
