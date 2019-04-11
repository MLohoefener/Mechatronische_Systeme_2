# Mechatronische_Systeme_2

## Skripte zu Vorlesungen Mechatronische Systeme 2 an der Hochschule Merseburg

**Voraussetzungen**: PC mit

1. MATLAB® und Control Systems Toolbox für M-Skripte bzw. Funktionen
2. MATLAB® und Simulink® für SLX-Modelle
3. https://www.octave.org und `pkg install -forge control; pkg load control` für M-Skripte bzw. Funktionen
4. https://www.scilab.org/ für SCE-Skripte oder SCI-Funktionen bzw. XCOS- oder ZCOS-Modelle
5. http://wxmaxima.sourceforge.net für WXM-Skripte

**Datei**|**Beschreibung**
---|---
**RK_kont.slx**|Simulink-Modell mit kontinuierlichem PID-Regler und Wendetangentenverfahren nach Chien/Hrones/Reswick
**RK_kont.m**|M-Skript-Modell mit kontinuierlichem PID-Regler und Wendetangentenverfahren nach Chien/Hrones/Reswick
**RK.wxm**|Kontinuierlicher PID-Regelkreis mit wxMaxima
**P_T2.m**|Pol-Nullstellen der Beispielregelstrecke kontinuierlich und diskret
**printgcf.m**|MATLAB-Funktion: Draw x y coordinate system and grid in current figure. Choose minor grid (or not). Print current figure as SVG Scalable Vector Graphic or as EMF Enhanced Metafile
