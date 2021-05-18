; Autor: Adriano J. Holanda
; Licença: Unilicense
; Programa em Assembly 8051 para simular no EdSim51 a entrada do keypad com 
; saída no quarto display.

start:
	call enableDisplay	; habilita o display 4
	CLR P0.3    		; desliga linha 3
	CALL checkCols		; chama função para tratamento das colunas
	SETB P0.3   		; liga linha 3
	CLR P0.2    		; desliga linha 2
	CALL checkCols		; chama função para tratamento das colunas
	SETB P0.2		; liga linha 2
	CLR P0.1		; desliga linha 1
	CALL checkCols		; chama função para tratamento das colunas
	SETB P0.1		; liga linha 2
	CLR P0.0		; liga linha 0
	CALL checkCols		; chama função para tratamento das colunas

enableDisplay:
 	MOV P1, #11111111B	; limpa o display
 	SETB P3.3               ; |
        SETB P3.4               ; | habilita o display 3
	RET

checkCols: 
	JNB P0.4, setCol0	; coluna 0 desligada (ativa)
	JNB P0.5, setCol1	; coluna 1 desligada (ativa)
	JNB P0.6, setCol2	; coluna 2 desligada (ativa)
	RET

setCol0:
	JNB P0.3, set3		; desvia o fluxo para a escrita do padrão "3"
	JNB P0.2, set6		; desvia o fluxo para a escrita do padrão "6"
	JNB P0.1, set9		; desvia o fluxo para a escrita do padrão "9"
	JNB P0.0, seth		; desvia o fluxo para a escrita do padrão mapeado para a cerquilha

setCol1:
	JNB P0.3, set2		; desvia o fluxo para a escrita do padrão "2"
	JNB P0.2, set5		; desvia o fluxo para a escrita do padrão "5"
	JNB P0.1, set8		; desvia o fluxo para a escrita do padrão "8"
	JNB P0.0, set0		; desvia o fluxo para a escrita do padrão "0"

setCol2:
	JNB P0.3, set1		; desvia o fluxo para a escrita do padrão "1"
	JNB P0.2, set4		; desvia o fluxo para a escrita do padrão "4"
	JNB P0.1, set7		; desvia o fluxo para a escrita do padrão "7"
	JNB P0.0, seta		; desvia o fluxo para a escrita do padrão mapeado para o asterisco

set0:	
	MOV P1, #11000000B	; liga os segmentos que representam o padrão "0"
	JMP exit
set1:
	MOV P1, #11111001B	; liga os segmentos que representam o padrão "1"
	JMP exit
set2:
	MOV P1, #10100100B	; liga os segmentos que representam o padrão "2"
	JMP exit
set3: 
	MOV P1, #10110000B	; liga os segmentos que representam o padrão "3"
	JMP exit
set4:
	MOV P1, #10011001B	; liga os segmentos que representam o padrão "4"
	JMP exit
set5:
	MOV P1,#10010010B	; liga os segmentos que representam o padrão "5"
	JMP exit
set6:
	MOV P1,#10000010B	; liga os segmentos que representam o padrão "6"
	JMP exit
set7:
	MOV P1,#11111000B	; liga os segmentos que representam o padrão "7"
	JMP exit
set8:
	MOV P1,#10000000B	; liga os segmentos que representam o padrão "8"
	JMP exit
set9:
	MOV P1,#10010000B	; liga os segmentos que representam o padrão "9"
	JMP exit
seth:
	MOV P1,#10011100B	; liga os segmentos que representam o padrão que mapeia a cerquilha
	JMP exit
seta:
	MOV P1,#10100011B	; liga os segmentos que representam o padrão que mapeia o asterisco
	JMP exit

exit:
