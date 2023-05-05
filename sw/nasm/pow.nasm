; Arquivo: Pow.nasm
; Curso: Elementos de Sistemas
; Criado por: Luciano Soares
; Data: 27/03/2017

; Eleva ao quadrado o valor da RAM[1] e armazena o resultado na RAM[0].
; Só funciona com números positivos

PREPARANDO:
    leaw $0, %A
    movw $0, (%A)

    leaw $1, %A
    movw (%A), %D
    leaw $2, %A
    movw %D, (%A) 

WHILE:

    ; verifica se o contador zerou
    leaw $2, %A
    movw (%A), %D
    leaw $END, %A
    je 
    nop

    ; soma RAM[1] + RAM[0] e guarda em RAM[0]

    leaw $1, %A
    movw (%A), %D
    leaw $0, %A
    addw (%A), %D, %D
    movw %D, (%A)

    ; subtrai 1 da RAM[0] --> funciona como contador
    leaw $2, %A
    subw (%A), $1, %D
    movw %D, (%A)

    leaw $WHILE, %A
    jmp
    nop

END:
