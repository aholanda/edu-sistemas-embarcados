# Exercícios
## Operações de Memória

1. Converta para a linguagem Assembly as operações a seguir:
    a. Mover o valor 5 para o acumulador A.
    
    b. Mover o valor 8 para o acumulador A e depois para o registrador R1.
    
    c. Atribuir o valor 30 para o endereço de memória 4 na RAM, copiar o valor deste endereço para o acumulador A e depois para o registrador R4.
    
    d. Copiar o valor contido no endereço de memória RAM armazenado no registrador R4 para o registrador R1.

2. Teste os trechos de Assembly no EdSim51. Descreva a operação que cada instrução realiza.

a.
```
MOV A, #4
```

b.
```
MOV A, #3
MOV R0, A
```

c.
```
MOV A, 4
MOV R4, A
; Atribua um valor qualquer no endereço 4 da RAM
```

d.
```
MOV 32, #10
MOV R7, 32
```

e.
```
MOV R1, #7
MOV 0, @R1
MOV 4, R1
; Atribua um valor qualquer no endereço 7 da RAM
```