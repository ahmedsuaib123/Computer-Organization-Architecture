.MODEL SMALL
.STACK 100H

.DATA

.CODE

MAIN PROC

    MOV AL, 5       ; First number
    MOV BL, 8       ; Second number
    MOV CL, 9       ; Third number

    CMP AL, BL
    JG CHECK_C

    ; BL is bigger than AL
    CMP BL, CL
    JG BIG_B

    ; CL is biggest
    MOV AL, CL
    JMP PRINT

CHECK_C:
    ; AL is bigger than BL
    CMP AL, CL
    JG PRINT

    ; CL is biggest
    MOV AL, CL
    JMP PRINT

BIG_B:
    ; BL is biggest
    MOV AL, BL

PRINT:
    ADD AL, 30H     ; Convert number to ASCII
    MOV DL, AL
    MOV AH, 2
    INT 21H         ; Print biggest number

    MOV AH, 4CH
    INT 21H

MAIN ENDP
END MAIN