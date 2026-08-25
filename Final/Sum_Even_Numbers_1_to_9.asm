.MODEL SMALL
.STACK 100H

.DATA

.CODE

MAIN PROC

    MOV CX, 4       ; 4 even numbers
    MOV BL, 2       ; Start from 2
    MOV AL, 0       ; AL = sum

SUM_LOOP:

    ADD AL, BL
    ADD BL, 2

    DEC CX
    JNZ SUM_LOOP

    ; AL = 20

    MOV AH, 0
    MOV DL, 10
    DIV DL          ; AL = tens, AH = remainder

    MOV BH, AH      ; Save ones digit

    ; Print tens digit
    ADD AL, '0'
    MOV DL, AL
    MOV AH, 2
    INT 21H

    ; Print ones digit
    MOV DL, BH
    ADD DL, '0'
    MOV AH, 2
    INT 21H

    MOV AH, 4CH
    INT 21H

MAIN ENDP

END MAIN