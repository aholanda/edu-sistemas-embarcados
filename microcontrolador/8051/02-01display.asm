; Multiplexa o padrão 1234 no display 
; de 4 segmentos.
; Baseado no exemplo https://www.edsim51.com/examples.html#prog3
start:
	CALL clean
	SETB P3.3		; |
	SETB P3.4		; | habilita display 3
	MOV P1, #11111001B	; padrão para o 1 no display
	CALL clean
	CLR P3.3		; habilita display 2
	MOV P1, #10100100B	; put pattern for 2 no display
	CALL clean
	CLR P3.4		; |
	SETB P3.3		; | habilita display 1
	MOV P1, #10110000B	; padrão para o 3 no display
	CALL clean
	CLR P3.3		; habilita display 0
	MOV P1, #10011001B	; padrão para o 4 no display
	JMP start		; jump back to start

; limpa o display
clean:
	MOV P1, #11111111B
	RET