# Mechatronische Systeme 2

## Skripte zu Vorlesungen Mechatronische Systeme 2 an der Hochschule Merseburg

**Voraussetzungen**: PC mit

1. MATLAB® und Control Systems Toolbox für M-Skripte bzw. Funktionen
2. MATLAB® und Simulink® für SLX-Blockdiagramme
3. https://www.octave.org und `pkg install -forge control symbolic; pkg load control symbolic` für M-Skripte bzw. Funktionen
4. https://www.scilab.org/ für Scilab-Skripte SCE oder Scilab-Funktionen SCI bzw. XCOS- oder ZCOS-Blockdiagramme
5. http://wxmaxima.sourceforge.net für wxMaxima-Batch-Dateien WXM

**Datei**|**Beschreibung**
---|---
**Antrieb.m**|M-Script zur praktischen Anwendung der Methode der kleinsten Quadrate MKQ 
**Antrieb.sce**|Scilab-Script zur praktischen Anwendung der Methode der kleinsten Quadrate MKQ
**Antrieb_Ausg_Vekt.csv**|CSV-Datei mit dem Beispiel-Ausgangsvektor für die MKQ
**Antrieb_Messmatr.csv**|CSV-Datei mit der Beispiel-Messmatrix für die MKQ
**Antrieb_RLS.m**|M-Script zur praktischen Anwendung der Rekursiven Methode der kleinsten Quadrate RMKQ 
**DC_contr_ZN.m**|M-script with controlled DC motor RE 35 from Maxon, tuned with Ziegler-Nichols, compared with optimized parameters
**GS_M_Kask.m**|Kaskadenregelung eines fremderregten Gleichstrommotors
**PID_diskr_symb.m**|Symbolische Diskretisierung des Standard-PID-Reglers
**P_T2.m**|Pol-Nullstellen der Beispielregelstrecke kontinuierlich und diskret
**RK.wxm**|Kontinuierlicher PID-Regelkreis mit wxMaxima
**RK_DB_F.m**|Dead-Beat-Regelkreis für Führungsverhalten
**RK_DB_F_d.m**|Dead-Beat-Regelkreis für Führungsverhalten mit Laufzeit
**RK_DB_S.m**|Dead-Beat-Regelkreis für Führungs- und Störverhalten
**RK_MV.m**|MinimalVarianz-Regelkreis für stochastisches Störverhalten
**RK_T11.slx**|Simulink-Simulation eines diskreten Regelkreises nach Takahashi (1) Wendetangente
**RK_T11_d.slx**|Simulink-Simulation eines diskreten Regelkreises nach Takahashi (1) Wendetangente mit Laufzeit
**RK_T12.slx**|Simulink-Simulation eines diskreten Regelkreises nach Takahashi (1) Schwingungsversuch
**RK_T21.slx**|Simulink-Simulation eines diskreten Regelkreises nach Takahashi (2) Wendetangente
**RK_T22.slx**|Simulink-Simulation eines diskreten Regelkreises nach Takahashi (2) Schwingungsversuch
**RK_diskr_T0.m**|M-Skript-Modell eines diskreten Regelkreises nach Takahashi (1) Wendetangenten mit verschiedenen Abtastzeiten
**RK_diskr_T11.m**|M-Skript-Modell eines diskreten Regelkreises nach Takahashi (1) Wendetangente
**RK_diskr_T11_d.m**|M-Skript-Modell eines diskreten Regelkreises nach Takahashi (1) Wendetangente mit verschiedenen Laufzeiten
**RK_diskr_T11_d_Tu.m**|M-Skript-Modell eines diskreten Regelkreises nach Takahashi (1) Wendetangente mit verschiedenen Laufzeiten und Berücksichtigung in der Verzugszeit Tu
**RK_diskr_T12.m**|M-Skript-Modell eines diskreten Regelkreises nach Takahashi (1) Schwingungsversuch
**RK_diskr_T21.m**|M-Skript-Modell eines diskreten Regelkreises nach Takahashi (2) Wendetangente
**RK_diskr_T22.m**|M-Skript-Modell eines diskreten Regelkreises nach Takahashi (2) Schwingungsversuch
**RK_kont.m**|M-Skript-Modell mit kontinuierlichem PID-Regler und Wendetangentenverfahren nach Chien/Hrones/Reswick
**RK_kont.slx**|Simulink-Modell mit kontinuierlichem PID-Regler und Wendetangentenverfahren nach Chien/Hrones/Reswick
**RKd.wxm**|Diskreter PID-Regelkreis mit wxMaxima
**cont_sim.m**|MATLAB-Funktion: Continuous answer to stairs on input
**printgcf.m**|MATLAB-Funktion: Draw x y coordinate system and grid in current figure. Choose minor grid (or not). Print current figure as SVG Scalable Vector Graphic or as EMF Enhanced Metafile
