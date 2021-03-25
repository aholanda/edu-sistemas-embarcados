; valores iniciais na RAM
; @10 <- 41
; @25 <- 50
; @30 <- 99
PUSH 10H ; incrementa SP para 0x08 e escreve o valor contido em 10H em SP
PUSH 25H ; incrementa SP para 0x09 e escreve o valor contido em 25H em SP
PUSH 30H ; incrementa SP para 0x0A e escreve o valor contido em 30H em SP
;
;
;
POP 30H ; escreve o valor contido em SP em 30H e decrementa SP para 0x09 
POP 25H ; escreve o valor contido em SP em 25H e decrementa SP para 0x08
POP 10H ; escreve o valor contido em SP em 10H e decrementa SP para 0x07
