.MODEL SMALL
.STACK 100H

.DATA

.CODE

MAIN PROC

    MOV CX, 9       ; Loop 9 times
    MOV BL, 1       ; Start from 1
    MOV AL, 0       ; AL = sum

SUM_LOOP:

    ADD AL, BL      ; Add number to sum
    INC BL          ; Next number

    DEC CX
    JNZ SUM_LOOP

    ; AL = 45
    ; Print 45

    MOV AH, 0
    MOV BL, 10
    DIV BL          ; AL = quotient, AH = remainder

    MOV BH, AH      ; Save remainder

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