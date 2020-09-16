# Exercícios
## Operações de E/S [Display de 7 Segmentos]

1. Primeiro descreva a função de cada instrução e depois teste os códigos a seguir no EdSim51.

a.
```assembly
CLR   P3.3 ; P3.3 ← 0
SETB  P3.4 ; P3.4 ← 1
MOV   P1, #10000010B
```

b.
```assembly
CLR   P3.3 ; P3.3 ← 0
CLR   P3.4 ; P3.4  ← 0
MOV   P1, #10000010B
```

c.
```assembly
start:
CALL limpa
CALL seleciona_zero
CALL zerar
JMP start

limpa:
MOV   P1, #11111111B
RET

seleciona_zero:
CLR   P3.3 ; P3.3 ← 0
CLR   P3.4 ; P3.4  ← 0
RET

zerar:
MOV   P1, #11000000B
RET
```

2. Implemente e teste no EdSim51 o código em Assembly que realize os seguintes procedimentos:
    a.  - Escreva o padrão 4 no display 3;
        - Apague o display 3;
        - Escreva o padrão 3 no display 2;
        - Apague o display 2;
        - Escreva o padrão 2 no display 1;
        - Apague o display 1;
        - Escreva o padrão 1 no display 0;
        - Apague o display 0.
    * Obs: utilize uma função para realizar o apagamento.


