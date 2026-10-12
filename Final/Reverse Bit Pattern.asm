.MODEL SMALL
.STACK 100H

.DATA

    msg1 DB 'Original : $'
    msg2 DB 13,10,'Reversed : $'

.CODE

MAIN PROC

    MOV AX, @DATA
    MOV DS, AX

    ; =====================================
    ; Original value
    ; =====================================

    MOV AL, 11011100B

    ; Display "Original :"
    LEA DX, msg1
    MOV AH, 09H
    INT 21H

    MOV BH, AL ; Make a copy of AL because we need AL later for reversal

    ; We need to print 8 bits
    MOV CX, 8

PRINT_ORIGINAL:

    ROL BH, 1 ; MSB goes into CF

    JC PRINT_1_ORIGINAL  ; If CF = 1, print 1
    

    ; CF = 0, print 0
    MOV DL, '0'
    MOV AH, 02H
    INT 21H

    JMP NEXT_ORIGINAL

PRINT_1_ORIGINAL:

    MOV DL, '1'
    MOV AH, 02H
    INT 21H

NEXT_ORIGINAL:

    LOOP PRINT_ORIGINAL


    ; =====================================
    ; Reverse the bit pattern
    ; =====================================

    ; Original value again
    MOV AL, 11011100B

    ; BL will contain reversed result
    MOV BL, 00000000B

    ; Repeat 8 times
    MOV CX, 8

REVERSE:

    ; Shift left AL
    ; MSB of AL goes into CF
    SHL AL, 1

    ; Move CF into MSB of BL
    RCR BL, 1

    LOOP REVERSE


    ; =====================================
    ; Display reversed value
    ; =====================================

    LEA DX, msg2
    MOV AH, 09H
    INT 21H

    ; Make a copy of reversed value
    MOV BH, BL

    ; Print 8 bits
    MOV CX, 8

PRINT_REVERSED:

    ; MSB goes into CF
    ROL BH, 1

    ; If CF = 1, print 1
    JC PRINT_1_REVERSED

    ; CF = 0
    MOV DL, '0'
    MOV AH, 02H
    INT 21H

    JMP NEXT_REVERSED

PRINT_1_REVERSED:

    MOV DL, '1'
    MOV AH, 02H
    INT 21H

NEXT_REVERSED:

    LOOP PRINT_REVERSED


    ; =====================================
    ; Exit
    ; =====================================

    MOV AH, 4CH
    INT 21H

MAIN ENDP
END MAIN