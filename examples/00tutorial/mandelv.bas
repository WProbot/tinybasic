10 REM "Caculate the mandelbrot set"
20 REM "The iteration cutoff, threshold, and resolution"
30 N=24
40 T=4
50 R=100
100 C0=0: C1=0
110 CLS
200 REM "walk through the grid"
210 FOR J=2*R+1 TO 1 STEP -1
220 FOR I=1 TO 3*R+1
230 C0=-2+(I-1)/R: C1=-1+(J-1)/R
240 GOSUB 4000
250 GOSUB 5000
280 NEXT
300 NEXT
999 END
4000 REM "do an iteration on c"
4010 Z0=C0: Z1=C1
4020 FOR K=1 TO N
4030 S0=Z0*Z0: S1=Z1*Z1
4040 IF S0+S1>T THEN BREAK
4050 X0=S0-S1+C0
4060 X1=2*Z0*Z1+C1
4070 Z0=X0: Z1=X1
4080 NEXT
4090 RETURN
5000 REM "plot a point"
5010 IF K>N: COLOR 0: PLOT I,J: RETURN
5020 COLOR 255-INT(K/N*255)
5030 PLOT I,J
5040 RETURN
