# Exercícios
## Operações de Memória

1. Converta para a linguagem Assembly do 8051 as seguintes operações:
    a. Mover o valor 5 para o acumulador A.

    b. Mover o valor 8 para o acumulador A e depois para o registrador R1.

    c. Atribuir o valor 30 para o endereço de memória 4 na RAM, copiar o valor deste endereço para o acumulador A e depois para o registrador R4.

    d. Copiar o valor contido no endereço de memória RAM armazenado no registrador R4 para o registrador R1.

2. Teste os seguintes trechos de Assembly 8051 no [EdSim51](https://www.edsim51.com/). Descreva a operação que cada instrução realiza.

a.
```assembly
MOV A, #4
```

b.
```assembly
MOV A, #3
MOV R0, A
```

c.
```assembly
MOV A, 4
MOV R4, A
; Atribua um valor qualquer no endereço 4 da RAM
```

d.
```assembly
MOV 32, #10
MOV R7, 32
```

e.
```assembly
MOV R1, #7
MOV 0, @R1
MOV 4, R1
; Atribua um valor qualquer no endereço 7 da RAM
```
