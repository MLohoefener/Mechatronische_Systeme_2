// MKQ praktisch angewandt: MKQ.sce
// 07.12.2007, Manfred Lohöfener, HoMe
// z. B. Modell eines Gleichstrommotors

clear
M = fscanfMat ('Antrieb_Messmatr.csv')
X = fscanfMat ('Antrieb_Ausg_Vekt.csv')
disp ('M')
disp (M)
disp ('X')
disp (X)

// Parametervektor
Theta = (M'*M) \ (M'*X)

// Eigenwerte
evals = 2 * spec (M'*M)
disp ('Theta')
disp (Theta)
disp ('evals')
disp (evals)
