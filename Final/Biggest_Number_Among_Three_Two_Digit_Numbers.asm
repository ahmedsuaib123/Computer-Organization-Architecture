.MODEL SMALL
.STACK 100H

.DATA

.CODE

MAIN PROC

    MOV AL, 5       ; First number
    MOV BL, 8       ; Second number
    MOV CL, 13      ; Third number

    CMP AL, BL
    JG CHECK_C

    CMP BL, CL
    JG BIG_B

    MOV AL, CL
    JMP PRINT

CHECK_C:
    CMP AL, CL
    JG PRINT

    MOV AL, CL
    JMP PRINT

BIG_B:
    MOV AL, BL

PRINT:
    MOV AH, 0
    MOV BL, 10
    DIV BL          ; AL / 10
                    ; AL = quotient (tens)
                    ; AH = remainder (ones)

    MOV BH, AH      ; Save ones digit

    ADD AL, 30H     ; Convert tens to ASCII
    MOV DL, AL
    MOV AH, 2
    INT 21H

    MOV AL, BH      ; Get ones digit
    ADD AL, 30H     ; Convert to ASCII
    MOV DL, AL
    MOV AH, 2
    INT 21H

    MOV AH, 4CH
    INT 21H

MAIN ENDP
END MAIN