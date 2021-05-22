;; Simulação Assembly 8051 usando EdSim51
;; Autor: Adriano J. Holanda
;; Programa para fazer o motor
;; no sentido horário e após
;; uma contagem, inverte para o 
;; sentido anti-horário, e após
;; outra contagem, o motor para, 
;; repetindo este ciclo indefinidamente.
start:
	; sentido horário
	SETB P3.0	; |  liga P3.0
	CLR  P3.1 ; |_ desliga P3.1
	CALL delay
	; sentido anti-horário
	CLR P3.0	; |  desliga 	P3.0
	SETB P3.1 	; |_ liga 	P3.1
	CALL delay
	; para motor
	CLR P3.0	; |  desliga P3.0
	CLR P3.1 	; |_ desliga P3.1
	CALL delay
	JMP 	start

delay:
	MOV A,#16
loop:
	SUBB A,#1
	JNZ  loop
	RET
