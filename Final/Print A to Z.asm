.MODEL SMALL
.STACK 100H

.CODE
MAIN PROC

    MOV DL, 'A'        ; Start with A
    MOV CX, 26       ; There are 26 capital letters

PRINT:
    MOV AH, 02H        ; Display character
    INT 21H

    INC DL             ; Next letter
    LOOP PRINT         ; CX = CX - 1

    MOV AH, 4CH
    INT 21H

MAIN ENDP
END MAIN