10 REM "NICOMA from 101 BASIC games"
20 REM "Ported to Stefan's BASIC in 2021"
30 REM
100 PRINT "BOOMERANG PUZZLE FROM ARITHMETICA OF NICOMACHUS -- A.D. 90!"
110 PRINT
200 FOR I
210 PRINT "PLEASE THINK OF A NUMBER BETWEEN 1 AND 100."
220 PRINT "YOUR NUMBER DIVIDED BY 3 HAS A REMAINDER OF ";
230 INPUT A
240 PRINT "YOUR NUMBER DIVIDED BY 5 HAS A REMAINDER OF ";
250 INPUT B
260 PRINT "YOUR NUMBER DIVIDED BY 7 HAS A REMAINDER OF ";
270 INPUT C
280 PRINT
290 PRINT "LET ME THINK A MOMENT..."
300 PRINT
310 DELAY 1000
320 D=70*INT(A)+21*INT(B)+15*INT(C)
330 IF D>105 THEN D=D-105: GOTO 330
340 PRINT "YOUR NUMBER WAS",D,", RIGHT";
350 INPUT A$
360 IF A$="YES" OR A$="yes" THEN PRINT "HOW ABOUT THAT!!": GOTO 500
370 IF A$="NO" OR A$="no" THEN PRINT "I FEEL YOUR ARITHMETIC IS IN ERROR.": GOTO 500
380 IF A$="END" OR A$="end" THEN END
390 PRINT "I DON'T UNDERSTAND '",A$,"'  TRY 'YES', 'NO' OR 'END'."
400 GOTO 350
500 PRINT "LET'S TRY ANOTHER."
510 NEXT
900 END
