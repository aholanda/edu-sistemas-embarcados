start:
	call enableDisplay	
	CLR P0.3
	call row3
	SETB P0.3
	CLR P0.2
	call row2
	SETB P0.2
	CLR P0.1
	call row1
	SETB P0.1
	CLR P0.0
	call row0	

enableDisplay:
 	MOV P1, #11111111B	; limpa o display
 	SETB P3.3               ; |
        SETB P3.4               ; | habilita display 3
	RET

row3: 
	JNB P0.4, setCol0
	JNB P0.5, setCol1
	JNB P0.6, setCol2
	RET

row2: 
	JNB P0.4, setCol0
	JNB P0.5, setCol1
	JNB P0.6, setCol2
	RET

row1: 
	JNB P0.4, setCol0
	JNB P0.5, setCol1
	JNB P0.6, setCol2
	RET

row0: 
	JNB P0.4, setCol0
	JNB P0.5, setCol1
	JNB P0.6, setCol2
	RET

setCol0:
	JNB P0.3, set3	
	JNB P0.2, set6
	JNB P0.1, set9	
	JNB P0.0, seth

setCol1:
	JNB P0.3, set2	
	JNB P0.2, set5
	JNB P0.1, set8	
	JNB P0.0, set0

setCol2:
	JNB P0.3, set1	
	JNB P0.2, set4
	JNB P0.1, set7	
	JNB P0.0, seta

set0:	

set1:
	MOV P1, #11111001B
	JMP exit
set2:
	MOV P1, #10100100B
	JMP exit
set3: 
	MOV P1, #10110000B
	JMP exit
set4:
	MOV P1, #10011001B
	JMP exit
set5:
	MOV P1,#10010010B
	JMP exit
set6:
	MOV P1,#10000010B
	JMP exit

set7:
	MOV P1,#11111000B
	JMP exit

set8:
	MOV P1,#10000000B
	JMP exit

set9:
	MOV P1,#10010000B
	JMP exit

seth:
	MOV P1,#10011100B
	JMP exit

seta:
	MOV P1,#10100011B
	JMP exit

exit:
