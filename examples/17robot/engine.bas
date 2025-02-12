100 REM "Setup of engine variables"
110 REM "I1-4: drive control, EA, EB speed of engine A and B"
110 I1=13: I2=12: I3=11: I4=10
130 EA=2: EB=3
140 V0=255
9999 END
10000 REM "Process an engine command"
10010 IF EC<1 OR EC>4 THEN GOSUB 11000: RETURN
10020 ON EC GOSUB 11100, 11200, 11300, 11400
10030 DELAY 500
10040 GOSUB 11000
10050 RETURN
11000 REM "Reset engines, all off"
11010 PINM I1,1: DWRITE I1,0
11020 PINM I2,1: DWRITE I2,0
11030 PINM I3,1: DWRITE I3,0
11040 PINM I4,1 DWRITE I4,0
11050 PINM EA,1: AWRITE EA,0
11060 PINM EB,1: AWRITE EB,0
11070 RETURN
11100 REM "Drive backward - speed v0"
11110 DWRITE I1,1: DWRITE I2,0: DWRITE I3,1: DWRITE I4,0
11120 AWRITE EA,V0: AWRITE EB,V0
11130 RETURN
11200 REM "Drive forward - speed v0"
11210 DWRITE I1,0: DWRITE I2,1: DWRITE I3,0: DWRITE I4,1
11220 AWRITE EA,V0: AWRITE EB,V0
11230 RETURN
11300 REM "turn left"
11310 DWRITE I1,0: DWRITE I2,1: DWRITE I3,1: DWRITE I4,0
11320 AWRITE EA,V0: AWRITE EB,V0
11330 RETURN
11400 REM "turn right"
11410 DWRITE I1,1: DWRITE I2,0: DWRITE I3,0: DWRITE I4,1
11420 AWRITE EA,V0: AWRITE EB,V0
11430 RETURN
