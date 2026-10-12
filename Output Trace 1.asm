.MODEL SMALL
.STACK 100H

.DATA

msg     DB 'Result', 0DH, 0AH, '$'
newline DB 0DH, 0AH, '$'
num     DB 4

.CODE

MAIN PROC

    MOV AX, @DATA
    MOV DS, AX

    ; --------------------------------
    ; Display "Result"
    ; --------------------------------
    MOV AH, 09H
    LEA DX, msg
    INT 21H

    ; --------------------------------
    ; AL = num = 4
    ; --------------------------------
    MOV AL, num

    ; AL = AL × 2
    ; 4 × 2 = 8
    SHL AL, 1

    ; Go to P1 to display AL
    JMP P1


; ==================================
; B1
; ==================================
B1:
    ; Divide AL by 2
    ; 8 / 2 = 4
    SHR AL, 1

    ; Display AL using P2
    JMP P2


; ==================================
; B2
; ==================================
B2:
    ; Add 5 to AL
    ; 4 + 5 = 9
    ADD AL, 5

    ; Display AL using P3
    JMP P3


; ==================================
; B3
; ==================================
B3:
    ; Exit program
    MOV AH, 4CH
    INT 21H


; ==================================
; P1
; Display AL
; ==================================
P1:

    MOV BL, AL

    ; Compare BL with 10
    CMP BL, 10

    ; If BL < 10, go to O1
    JB O1

    ; If BL >= 10, print '1'
    MOV DL, '1'
    MOV AH, 02H
    INT 21H

    ; Remove 10
    SUB BL, 10


O1:
    ; Convert number to ASCII
    ADD BL, '0'

    ; Print the digit
    MOV DL, BL
    MOV AH, 02H
    INT 21H

    ; Print newline
    MOV AH, 09H
    LEA DX, newline
    INT 21H

    ; Go to B1
    JMP B1


; ==================================
; P2
; Display AL
; ==================================
P2:

    MOV BL, AL

    CMP BL, 10

    JB O2

    MOV DL, '1'
    MOV AH, 02H
    INT 21H

    SUB BL, 10


O2:
    ADD BL, '0'

    MOV DL, BL
    MOV AH, 02H
    INT 21H

    MOV AH, 09H
    LEA DX, newline
    INT 21H

    JMP B2


; ==================================
; P3
; Display AL
; ==================================
P3:

    MOV BL, AL

    CMP BL, 10

    JB O3

    MOV DL, '1'
    MOV AH, 02H
    INT 21H

    SUB BL, 10


O3:
    ADD BL, '0'

    MOV DL, BL
    MOV AH, 02H
    INT 21H

    MOV AH, 09H
    LEA DX, newline
    INT 21H

    JMP B3


MAIN ENDP
END MAIN