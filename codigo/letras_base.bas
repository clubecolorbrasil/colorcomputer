10 'LETRAS EM ALTA
20 CLS
30 C=1
40 PMODE 4,1: PCLS: SCREEN 4,1
50 TEX$ = "-SOFTWARE PARA LETRAS EM ALTA RESOLUCAO-"
60 PX = 5:  PY= 10: GOSUB 170
70 TEX$="THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG"
80 PX = 5: PY=PY+6: GOSUB 170
90 TEX$ = "R$ 1.234.567.890,00"
100 PX = 5: PY=PY+6: GOSUB 170
110 TEX$ = "A B C D E F G H I J K L M N O P Q R S T U V W X Y Z - 1 2 3 4 5 6 7 8 9 0 - ! $ ? + - *"
120 PX = 5: PY=PY+6: GOSUB 170
130 TEX$="GUSTAVO H BLOEDOW"
140 PX = 70: PY=180: GOSUB 170
150 IF INKEY$="" THEN 150
160 GOTO 4030
170 ' PREPARACAO DOS DADOS
180 POKE 65495,0
190 COMP = LEN (TEX$)
200 FOR T = 1 TO COMP
210 T$ = MID$ (TEX$,T,1)
220 GOSUB 320
230 PX = PX + 6
240 NEXT T
250 RETURN
260 PRINT "VALOR DE T:";T$
270 PRINT "VALOR DE C:";C
280 IF INKEY$ = "" THEN 280
290 SCREEN 4,1
300 RETURN
310 ' ROTINA PRINCIPAL
320 IF PX < 1 AND PY = 1 THEN PX = 1
330 IF PX < 1 AND PY > 5 THEN PX = 247: PY = PY - 6
340 IF PY < 1 THEN PY = 1
350 IF PX > 247 THEN PX = 1: PY = PY + 6
360 IF PY > 187 THEN PY = 187
370 C=1: GOSUB 2490
380 C=0
390 ' IR PRA LETRAS
400 GOSUB 3570
410 'IR PARA CARACTERES ESPECIAIS
420 IF T$ = CHR$(32) THEN GOSUB 2490
430 PLAY "O1;L255;C;"
440 RETURN
450 'A
460 PSET (PX+2,PY)
470 PSET (PX+1,PY+1): PSET (PX+3,PY+1)
480 PSET (PX,PY+2): PSET (PX+4,PY+2)
490 PSET (PX,PY+3): PSET (PX+1,PY+3): PSET (PX+2,PY+3):PSET (PX+3,PY+3): PSET (PX+4,PY+3)
500 PSET (PX,PY+4): PSET (PX+4,PY+4)
510 RETURN
520 'B
530 PSET (PX,PY): PSET (PX+1,PY): PSET (PX+2,PY): PSET (PX+3,PY)
540 PSET (PX,PY+1): PSET (PX+4,PY+1)
550 PSET (PX,PY+2): PSET (PX+1,PY+2): PSET (PX+2,PY+2): PSET (PX+3,PY+2)
560 PSET (PX,PY+3): PSET (PX+4,PY+3)
570 PSET (PX,PY+4): PSET (PX+1,PY+4): PSET (PX+2,PY+4): PSET (PX+3,PY+4)
580 RETURN
590 'C
600 PSET (PX+1,PY): PSET (PX+2,PY): PSET (PX+3,PY)
610 PSET (PX,PY+1): PSET (PX+4,PY+1)
620 PSET (PX,PY+2)
630 PSET (PX,PY+3): PSET (PX+4,PY+3)
640 PSET (PX+1,PY+4): PSET (PX+2,PY+4):PSET (PX+3,PY+4)
650 RETURN
660 'D
670 PSET (PX,PY): PSET (PX+1,PY): PSET (PX+2,PY): PSET (PX+3,PY)
680 PSET (PX,PY+1): PSET (PX+4,PY+1)
690 PSET (PX,PY+2): PSET (PX+4,PY+2)
700 PSET (PX,PY+3): PSET (PX+4,PY+3)
710 PSET (PX,PY+4): PSET (PX+1,PY+4): PSET (PX+2,PY+4):PSET (PX+3,PY+4)
720 RETURN
730 'E
740 PSET (PX,PY): PSET (PX+1,PY): PSET (PX+2,PY): PSET (PX+3,PY): PSET (PX+4,PY)
750 PSET (PX,PY+1)
760 PSET (PX,PY+2): PSET (PX+1,PY+2): PSET (PX+2,PY+2):PSET (PX+3,PY+2)
770 PSET (PX,PY+3)
780 PSET (PX,PY+4): PSET (PX+1,PY+4): PSET (PX+2,PY+4):PSET (PX+3,PY+4): PSET (PX+4,PY+4)
790 RETURN
800 'F
810 PSET (PX,PY): PSET (PX+1,PY): PSET (PX+2,PY): PSET (PX+3,PY): PSET (PX+4,PY)
820 PSET (PX,PY+1)
830 PSET (PX,PY+2): PSET (PX+1,PY+2): PSET (PX+2,PY+2):PSET (PX+3,PY+2)
840 PSET (PX,PY+3)
850 PSET (PX,PY+4)
860 RETURN
870 'G
880 PSET (PX+1,PY): PSET (PX+2,PY): PSET (PX+3,PY)
890 PSET (PX,PY+1)
900 PSET (PX,PY+2): PSET (PX+2,PY+2):PSET (PX+3,PY+2)
910 PSET (PX,PY+3): PSET (PX+3,PY+3):PSET (PX+4,PY+3)
920 PSET (PX+1,PY+4): PSET (PX+2,PY+4):PSET (PX+3,PY+4)
930 RETURN
940 'H
950 PSET (PX,PY): PSET (PX+4,PY)
960 PSET (PX,PY+1): PSET (PX+4,PY+1)
970 PSET (PX,PY+2): PSET (PX+1,PY+2): PSET (PX+2,PY+2):PSET (PX+3,PY+2): PSET (PX+4,PY+2)
980 PSET (PX,PY+3): PSET (PX+4,PY+3)
990 PSET (PX,PY+4): PSET (PX+4,PY+4)
1000 RETURN
1010 ' I
1020 PSET (PX+1,PY): PSET (PX+2,PY): PSET (PX+3,PY)
1030 PSET (PX+2,PY+1)
1040 PSET (PX+2,PY+2)
1050 PSET (PX+2,PY+3)
1060 PSET (PX+1,PY+4): PSET (PX+2,PY+4):PSET (PX+3,PY+4)
1070 RETURN
1080 'J
1090 PSET (PX,PY): PSET (PX+1,PY): PSET (PX+2,PY): PSET (PX+3,PY): PSET (PX+4,PY)
1100 PSET (PX+2,PY+1)
1110 PSET (PX+2,PY+2)
1120 PSET (PX,PY+3): PSET (PX+2,PY+3)
1130 PSET (PX+1,PY+4)
1140 RETURN
1150 'K
1160 PSET (PX,PY): PSET (PX+4,PY)
1170 PSET (PX,PY+1):PSET (PX+3,PY+1)
1180 PSET (PX,PY+2): PSET (PX+1,PY+2): PSET (PX+2,PY+2)
1190 PSET (PX,PY+3):PSET (PX+3,PY+3)
1200 PSET (PX,PY+4): PSET (PX+4,PY+4)
1210 RETURN
1220 'L
1230 PSET (PX,PY)
1240 PSET (PX,PY+1)
1250 PSET (PX,PY+2)
1260 PSET (PX,PY+3)
1270 PSET (PX,PY+4): PSET (PX+1,PY+4): PSET (PX+2,PY+4):PSET (PX+3,PY+4): PSET (PX+4,PY+4)
1280 RETURN
1290 'M
1300 PSET (PX,PY): PSET (PX+4,PY)
1310 PSET (PX,PY+1): PSET (PX+1,PY+1):PSET (PX+3,PY+1): PSET (PX+4,PY+1)
1320 PSET (PX,PY+2): PSET (PX+2,PY+2): PSET (PX+4,PY+2)
1330 PSET (PX,PY+3): PSET (PX+4,PY+3)
1340 PSET (PX,PY+4): PSET (PX+4,PY+4)
1350 RETURN
1360 'N
1370 PSET (PX,PY): PSET (PX+4,PY)
1380 PSET (PX,PY+1): PSET (PX+1,PY+1): PSET (PX+4,PY+1)
1390 PSET (PX,PY+2): PSET (PX+2,PY+2): PSET (PX+4,PY+2)
1400 PSET (PX,PY+3): PSET (PX+3,PY+3): PSET (PX+4,PY+3)
1410 PSET (PX,PY+4): PSET (PX+4,PY+4)
1420 RETURN
1430 'O
1440 PSET (PX+1,PY): PSET (PX+2,PY): PSET (PX+3,PY)
1450 PSET (PX,PY+1): PSET (PX+4,PY+1)
1460 PSET (PX,PY+2): PSET (PX+4,PY+2)
1470 PSET (PX,PY+3): PSET (PX+4,PY+3)
1480 PSET (PX+1,PY+4): PSET (PX+2,PY+4):PSET (PX+3,PY+4)
1490 RETURN
1500 'P
1510 PSET (PX,PY): PSET (PX+1,PY): PSET (PX+2,PY): PSET (PX+3,PY)
1520 PSET (PX,PY+1): PSET (PX+4,PY+1)
1530 PSET (PX,PY+2): PSET (PX+1,PY+2): PSET (PX+2,PY+2):PSET (PX+3,PY+2)
1540 PSET (PX,PY+3)
1550 PSET (PX,PY+4)
1560 RETURN
1570 'Q
1580 PSET (PX+1,PY): PSET (PX+2,PY): PSET (PX+3,PY)
1590 PSET (PX,PY+1): PSET (PX+4,PY+1)
1600 PSET (PX,PY+2): PSET (PX+4,PY+2)
1610 PSET (PX,PY+3): PSET(PX+2,PY+3): PSET (PX+4,PY+3)
1620 PSET (PX+1,PY+4): PSET (PX+2,PY+4):PSET (PX+3,PY+4)
1630 PSET (PX+3,PY+5): PSET (PX+4,PY+5)
1640 RETURN
1650 'R
1660 PSET (PX,PY): PSET (PX+1,PY): PSET (PX+2,PY): PSET (PX+3,PY)
1670 PSET (PX,PY+1): PSET (PX+4,PY+1)
1680 PSET (PX,PY+2): PSET (PX+1,PY+2): PSET (PX+2,PY+2):PSET (PX+3,PY+2)
1690 PSET (PX,PY+3):PSET (PX+3,PY+3)
1700 PSET (PX,PY+4): PSET (PX+4,PY+4)
1710 RETURN
1720 'S
1730 PSET (PX+1,PY): PSET (PX+2,PY): PSET (PX+3,PY): PSET (PX+4,PY)
1740 PSET (PX,PY+1)
1750 PSET (PX+1,PY+2): PSET (PX+2,PY+2):PSET (PX+3,PY+2)
1760 PSET (PX+4,PY+3)
1770 PSET (PX,PY+4): PSET (PX+1,PY+4): PSET (PX+2,PY+4):PSET (PX+3,PY+4)
1780 RETURN
1790 'T
1800 PSET (PX,PY): PSET (PX+1,PY): PSET (PX+2,PY): PSET (PX+3,PY): PSET (PX+4,PY)
1810 PSET (PX+2,PY+1)
1820 PSET (PX+2,PY+2)
1830 PSET (PX+2,PY+3)
1840 PSET (PX+2,PY+4)
1850 RETURN
1860 'U
1870 PSET (PX,PY): PSET (PX+4,PY)
1880 PSET (PX,PY+1): PSET (PX+4,PY+1)
1890 PSET (PX,PY+2): PSET (PX+4,PY+2)
1900 PSET (PX,PY+3): PSET (PX+4,PY+3)
1910 PSET (PX+1,PY+4): PSET (PX+2,PY+4):PSET (PX+3,PY+4)
1920 RETURN
1930 'V
1940 PSET (PX,PY): PSET (PX+4,PY)
1950 PSET (PX,PY+1): PSET (PX+4,PY+1)
1960 PSET (PX,PY+2): PSET (PX+4,PY+2)
1970 PSET (PX+1,PY+3):PSET (PX+3,PY+3)
1980 PSET (PX+2,PY+4)
1990 RETURN
2000 'W
2010 PSET (PX,PY): PSET (PX+4,PY)
2020 PSET (PX,PY+1): PSET (PX+4,PY+1)
2030 PSET (PX,PY+2): PSET (PX+2,PY+2): PSET (PX+4,PY+2)
2040 PSET (PX,PY+3): PSET (PX+1,PY+3):PSET (PX+3,PY+3): PSET (PX+4,PY+3)
2050 PSET (PX,PY+4): PSET (PX+4,PY+4)
2060 RETURN
2070 'X
2080 PSET (PX,PY): PSET (PX+4,PY)
2090 PSET (PX+1,PY+1):PSET (PX+3,PY+1)
2100 PSET (PX+2,PY+2)
2110 PSET (PX+1,PY+3):PSET (PX+3,PY+3)
2120 PSET (PX,PY+4): PSET (PX+4,PY+4)
2130 RETURN
2140 'Y
2150 PSET (PX,PY): PSET (PX+4,PY)
2160 PSET (PX+1,PY+1):PSET (PX+3,PY+1)
2170 PSET (PX+2,PY+2)
2180 PSET (PX+2,PY+3)
2190 PSET (PX+2,PY+4)
2200 RETURN
2210 'Z
2220 PSET (PX,PY): PSET (PX+1,PY): PSET (PX+2,PY): PSET (PX+3,PY): PSET (PX+4,PY)
2230 PSET (PX+3,PY+1)
2240 PSET (PX+2,PY+2)
2250 PSET (PX+1,PY+3)
2260 PSET (PX,PY+4): PSET (PX+1,PY+4): PSET (PX+2,PY+4):PSET (PX+3,PY+4): PSET (PX+4,PY+4)
2270 RETURN
2280 '1
2290 PSET (PX+2,PY)
2300 PSET (PX+1,PY+1): PSET (PX+2,PY+1)
2310 PSET (PX+2,PY+2)
2320 PSET (PX+2,PY+3)
2330 PSET (PX+1,PY+4): PSET (PX+2,PY+4): PSET (PX+3,PY+4)
2340 RETURN
2350 '2
2360 PSET (PX+1,PY): PSET (PX+2,PY): PSET (PX+3,PY)
2370 PSET (PX,PY+1): PSET (PX+4,PY+1)
2380 PSET (PX+2,PY+2):PSET (PX+3,PY+2)
2390 PSET (PX+1,PY+3)
2400 PSET (PX,PY+4): PSET (PX+1,PY+4): PSET (PX+2,PY+4):PSET (PX+3,PY+4): PSET (PX+4,PY+4)
2410 RETURN
2420 '3
2430 PSET (PX+1,PY): PSET (PX+2,PY): PSET (PX+3,PY)
2440 PSET (PX,PY+1): PSET (PX+4,PY+1)
2450 PSET (PX+2,PY+2):PSET (PX+3,PY+2)
2460 PSET (PX,PY+3): PSET (PX+4,PY+3)
2470 PSET (PX+1,PY+4): PSET (PX+2,PY+4):PSET (PX+3,PY+4)
2480 RETURN
2490 'QUADRADO 
2500 IF C=1 THEN LINE (PX,PY)-(PX+4,PY+4),PSET,BF
2510 IF C=0 THEN LINE (PX,PY)-(PX+5,PY+5),PRESET,BF
2520 ' GOSUB 200
2530 RETURN
2540 '4
2550 PSET (PX,PY): PSET (PX+4,PY)
2560 PSET (PX,PY+1): PSET (PX+4,PY+1)
2570 PSET (PX+1,PY+2): PSET (PX+2,PY+2):PSET (PX+3,PY+2): PSET (PX+4,PY+2)
2580 PSET (PX+4,PY+3)
2590 PSET (PX+4,PY+4)
2600 RETURN
2610 '5
2620 PSET (PX,PY): PSET (PX+1,PY): PSET (PX+2,PY): PSET (PX+3,PY): PSET (PX+4,PY)
2630 PSET (PX,PY+1)
2640 PSET (PX,PY+2): PSET (PX+1,PY+2): PSET (PX+2,PY+2):PSET (PX+3,PY+2)
2650 PSET (PX+4,PY+3)
2660 PSET (PX,PY+4): PSET (PX+1,PY+4): PSET (PX+2,PY+4):PSET (PX+3,PY+4)
2670 RETURN
2680 '6
2690 PSET (PX+1,PY): PSET (PX+2,PY): PSET (PX+3,PY)
2700 PSET (PX,PY+1)
2710 PSET (PX,PY+2): PSET (PX+1,PY+2): PSET (PX+2,PY+2):PSET (PX+3,PY+2)
2720 PSET (PX,PY+3): PSET (PX+4,PY+3)
2730 PSET (PX+1,PY+4): PSET (PX+2,PY+4):PSET (PX+3,PY+4)
2740 RETURN
2750 '7
2760 PSET (PX,PY): PSET (PX+1,PY): PSET (PX+2,PY): PSET (PX+3,PY): PSET (PX+4,PY)
2770 PSET (PX+4,PY+1)
2780 PSET (PX+2,PY+2):PSET (PX+3,PY+2)
2790 PSET (PX+1,PY+3): PSET (PX+2,PY+3)
2800 PSET (PX+1,PY+4)
2810 RETURN
2820 '8
2830 PSET (PX+1,PY): PSET (PX+2,PY): PSET (PX+3,PY)
2840 PSET (PX,PY+1): PSET (PX+4,PY+1)
2850 PSET (PX+1,PY+2): PSET (PX+2,PY+2):PSET (PX+3,PY+2)
2860 PSET (PX,PY+3): PSET (PX+4,PY+3)
2870 PSET (PX+1,PY+4): PSET (PX+2,PY+4):PSET (PX+3,PY+4)
2880 RETURN
2890 '9
2900 PSET (PX+1,PY): PSET (PX+2,PY): PSET (PX+3,PY)
2910 PSET (PX,PY+1): PSET (PX+4,PY+1)
2920 PSET (PX+1,PY+2): PSET (PX+2,PY+2):PSET (PX+3,PY+2)
2930 PSET (PX+4,PY+3)
2940 PSET (PX+1,PY+4): PSET (PX+2,PY+4):PSET (PX+3,PY+4)
2950 RETURN
2960 '0
2970 PSET (PX+1,PY): PSET (PX+2,PY): PSET (PX+3,PY)
2980 PSET (PX,PY+1): PSET (PX+3,PY+1): PSET (PX+4,PY+1)
2990 PSET (PX,PY+2): PSET (PX+2,PY+2): PSET (PX+4,PY+2)
3000 PSET (PX,PY+3): PSET (PX+1,PY+3): PSET (PX+4,PY+3)
3010 PSET (PX+1,PY+4): PSET (PX+2,PY+4):PSET (PX+3,PY+4)
3020 RETURN
3030 'PONTO
3040 PSET (PX+2,PY+3)
3050 PSET (PX+2,PY+4)
3060 RETURN
3070 'VIRGULA
3080 PSET (PX+2,PY+3)
3090 PSET (PX+2,PY+4)
3100 PSET (PX+1,PY+5)
3110 RETURN
3120 REM HIFEN/MENOS
3130 PSET (PX+1,PY+2): PSET (PX+2,PY+2):PSET (PX+3,PY+2) 
3140 RETURN
3150 REM MAIS
3160 PSET (PX+2,PY): 
3170 PSET (PX+2,PY+1) 
3180 PSET (PX,PY+2): PSET (PX+1,PY+2): PSET (PX+2,PY+2):PSET (PX+3,PY+2): PSET (PX+4,PY+2)
3190 PSET (PX+2,PY+3) 
3200 PSET (PX+2,PY+4) 
3210 RETURN
3220 'DOLAR
3230 PSET (PX+1,PY): PSET (PX+2,PY): PSET (PX+3,PY): PSET (PX+4,PY)
3240 PSET (PX,PY+1): PSET (PX+2,PY+1)
3250 PSET (PX+1,PY+2): PSET (PX+2,PY+2):PSET (PX+3,PY+2)
3260 PSET (PX+2,PY+3): PSET (PX+4,PY+3)
3270 PSET (PX,PY+4): PSET (PX+1,PY+4): PSET (PX+2,PY+4):PSET (PX+3,PY+4)
3280 PSET (PX+2,PY+5)
3290 RETURN
3300 'INTERROGA
3310 PSET (PX+1,PY): PSET (PX+2,PY): PSET (PX+3,PY)
3320 PSET (PX,PY+1): PSET (PX+4,PY+1)
3330 PSET (PX+2,PY+2):PSET (PX+3,PY+2)
3340 ' PSET (PX+2,PY+3)
3350 PSET (PX+2,PY+4)
3360 RETURN
3370 'EXCLAMA
3380 PSET (PX+2,PY)
3390 PSET (PX+2,PY+1)
3400 PSET (PX+2,PY+2)
3410 PSET (PX+2,PY+4)
3420 RETURN
3430 'ASTERISCO
3440 PSET (PX,PY): PSET (PX+2,PY): PSET (PX+4,PY)
3450 PSET (PX+1,PY+1): PSET (PX+2,PY+1):PSET (PX+3,PY+1)
3460 PSET (PX,PY+2): PSET (PX+1,PY+2): PSET (PX+2,PY+2):PSET (PX+3,PY+2): PSET (PX+4,PY+2)
3470 PSET (PX+1,PY+3): PSET (PX+2,PY+3):PSET (PX+3,PY+3)
3480 PSET (PX,PY+4): PSET (PX+2,PY+4): PSET (PX+4,PY+4)
3490 RETURN
3500 'MATRIZ
3510 PSET (PX,PY): PSET (PX+1,PY): PSET (PX+2,PY): PSET (PX+3,PY): PSET (PX+4,PY)
3520 PSET (PX,PY+1): PSET (PX+1,PY+1): PSET (PX+2,PY+1):PSET (PX+3,PY+1): PSET (PX+4,PY+1)
3530 PSET (PX,PY+2): PSET (PX+1,PY+2): PSET (PX+2,PY+2):PSET (PX+3,PY+2): PSET (PX+4,PY+2)
3540 PSET (PX,PY+3): PSET (PX+1,PY+3): PSET (PX+2,PY+3):PSET (PX+3,PY+3): PSET (PX+4,PY+3)
3550 PSET (PX,PY+4): PSET (PX+1,PY+4): PSET (PX+2,PY+4):PSET (PX+3,PY+4): PSET (PX+4,PY+4)
3560 RETURN
3570 ' VERIFICACAO LETRAS
3580 IF T$ = "A" THEN GOSUB 2490 :GOSUB 450
3590 IF T$ = "B" THEN GOSUB 2490 :GOSUB 520
3600 IF T$ = "C" THEN GOSUB 2490 :GOSUB 590
3610 IF T$ = "D" THEN GOSUB 2490 :GOSUB 660
3620 IF T$ = "E" THEN GOSUB 2490 :GOSUB 730
3630 IF T$ = "F" THEN GOSUB 2490 :GOSUB 800
3640 IF T$ = "G" THEN GOSUB 2490 :GOSUB 870
3650 IF T$ = "H" THEN GOSUB 2490 :GOSUB 940
3660 IF T$ = "I" THEN GOSUB 2490 :GOSUB 1010
3670 IF T$ = "J" THEN GOSUB 2490 :GOSUB 1080
3680 IF T$ = "K" THEN GOSUB 2490 :GOSUB 1150
3690 IF T$ = "L" THEN GOSUB 2490 :GOSUB 1220
3700 IF T$ = "M" THEN GOSUB 2490 :GOSUB 1290
3710 IF T$ = "N" THEN GOSUB 2490 :GOSUB 1360
3720 IF T$ = "O" THEN GOSUB 2490 :GOSUB 1430
3730 IF T$ = "P" THEN GOSUB 2490 :GOSUB 1500
3740 IF T$ = "Q" THEN GOSUB 2490 :GOSUB 1570
3750 IF T$ = "R" THEN GOSUB 2490 :GOSUB 1650
3760 IF T$ = "S" THEN GOSUB 2490 :GOSUB 1720
3770 IF T$ = "T" THEN GOSUB 2490 :GOSUB 1790
3780 IF T$ = "U" THEN GOSUB 2490 :GOSUB 1860
3790 IF T$ = "V" THEN GOSUB 2490 :GOSUB 1930
3800 IF T$ = "W" THEN GOSUB 2490 :GOSUB 2000
3810 IF T$ = "X" THEN GOSUB 2490 :GOSUB 2070
3820 IF T$ = "Y" THEN GOSUB 2490 :GOSUB 2140
3830 IF T$ = "Z" THEN GOSUB 2490 :GOSUB 2210
3840 IF T$ = "1" THEN GOSUB 2490 :GOSUB 2280
3850 IF T$ = "2" THEN GOSUB 2490 :GOSUB 2350
3860 IF T$ = "3" THEN GOSUB 2490 :GOSUB 2420
3870 IF T$ = "4" THEN GOSUB 2490 :GOSUB 2540
3880 IF T$ = "5" THEN GOSUB 2490 :GOSUB 2610
3890 IF T$ = "6" THEN GOSUB 2490 :GOSUB 2680
3900 IF T$ = "7" THEN GOSUB 2490 :GOSUB 2750
3910 IF T$ = "8" THEN GOSUB 2490 :GOSUB 2820
3920 IF T$ = "9" THEN GOSUB 2490 :GOSUB 2890
3930 IF T$ = "0" THEN GOSUB 2490 :GOSUB 2960
3940 IF T$ = "." THEN GOSUB 2490 :GOSUB 3030
3950 IF T$ = "," THEN GOSUB 2490 :GOSUB 3070
3960 IF T$ = "-" THEN GOSUB 2490 :GOSUB 3120
3970 IF T$ = "+" THEN GOSUB 2490 :GOSUB 3150
3980 IF T$ = "$" THEN GOSUB 2490 :GOSUB 3220
3990 IF T$ = "!" THEN GOSUB 2490 :GOSUB 3300
4000 IF T$ = "?" THEN GOSUB 2490 :GOSUB 3370
4010 IF T$ = "*" THEN GOSUB 2490 :GOSUB 3430
4020 RETURN
4030 ' FIM
4040 IF INKEY$ = "" THEN 4040
4050 POKE 65494,0
4060 END

