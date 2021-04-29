% MKQ praktisch angewandt: Antrieb.m
% 07.12.2007, 27.03.2018, Manfred Lohöfener, HoMe
% Modell eines Gleichstrommotors mit: 
% a1 = -0,86900        
% a2 = -0,43500        
% a3 =  0,43320        
% b1 =  0,02699        
% b2 =  0,10190        
% b3 =  0,0
% T0 =  1 ms
% Daten aus Aufnahme einer Sprungantwort 

clear
M = [0.000  0.000   0.000   0.0  0.0  0.0
     0.000  0.000   0.000   1.0  0.0  0.0
    -0.027  0.000   0.000   1.0  1.0  0.0
    -0.152  -0.027  0.000   1.0  1.0  1.0
    -0.273  -0.152  -0.027  1.0  1.0  1.0
    -0.421  -0.273  -0.152  1.0  1.0  1.0
    -0.547  -0.421  -0.273  1.0  1.0  1.0
    -0.669  -0.547  -0.421  1.0  1.0  1.0
    -0.766  -0.669  -0.547  1.0  1.0  1.0
    -0.849  -0.766  -0.669  1.0  1.0  1.0];

X = [0.000
     0.027
     0.152
     0.273
     0.421
     0.547
     0.669
     0.766
     0.849
     0.910];

% Parametervektor
Theta = (M'*M) \ (M'*X)

% Eigenwerte
evals = 2 * eig (M'*M)

% E R G E B N I S S E

% Theta =           Parametervektor, vgl. oben
%    -0.8458
%    -0.4603
%     0.4368
%     0.0270
%     0.1022
%     0.0028
% 
% evals =           tatsächlich alle positiv!
%     0.0007
%     0.0136
%     0.6400
%     1.3063
%     3.1982
%    52.7641
