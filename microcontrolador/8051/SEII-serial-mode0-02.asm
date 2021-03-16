CLR SM0
CLR SM1       ; porta serial no modo zero
MOV SBUF,#9   ; envia do inteiro 9 para a porta serial
JNB TI,$      ; espera pela interrupção que sinaliza o fim do envio
CLR TI        ; desliga/zera a interrupção que foi alterada pelo hardware
              ; o desligamento da interrupção deve ser feito pelo programa
MOV SBUF,#12  ; envia o inteiro 12 para a porta serial
