.MODEL SMALL
.STACK 100H

.DATA

.CODE

MAIN PROC

    MOV AX, -5       ; Number to check

    CMP AX, 0
    JL NEGATIVE      ; If AX < 0

    JE ZERO          ; If AX = 0

    ; Otherwise AX > 0
    MOV DL, 'P'
    JMP PRINT

NEGATIVE:
    MOV DL, 'N'
    JMP PRINT

ZERO:
    MOV DL, 'Z'

PRINT:
    MOV AH, 2
    INT 21H

    MOV AH, 4CH
    INT 21H

MAIN ENDP
END MAIN