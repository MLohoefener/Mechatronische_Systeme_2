https://github.com/MLohoefener/Mechatronische_Systeme_2# Mechatronische_Systeme_2

## Skripte zu Vorlesungen Mechatronische Systeme 2 an der Hochschule Merseburg

**Voraussetzungen**: PC mit

1. MATLAB® und Control Systems Toolbox für M-Skripte bzw. Funktionen
2. MATLAB® und Simulink® für SLX-Modelle
3. https://www.octave.org und `pkg install -forge control symbolic; pkg load control symbolic` für M-Skripte bzw. Funktionen
4. https://www.scilab.org/ für SCE-Skripte oder SCI-Funktionen bzw. XCOS- oder ZCOS-Modelle
5. http://wxmaxima.sourceforge.net für WXM-Skripte

**Datei**|**Beschreibung**
---|---
**PID_diskr_symb.m**|Symbolische Diskretisierung des Standard-PID-Reglers
**P_T2.m**|Pol-Nullstellen der Beispielregelstrecke kontinuierlich und diskret
**RK.wxm**|Kontinuierlicher PID-Regelkreis mit wxMaxima
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
**RK_diskr_T11.m**|Simulink-Simulation eines diskreten Regelkreises nach Takahashi (1)
