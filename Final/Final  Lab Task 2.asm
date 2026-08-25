.model small

.stack 100h
 
.data
 
   MES DB 'Enter an input: $'

   d db 10,13,'Digit$'
   i db 10,13,'INVALID$' 
   v db 10,13,'Valid$'

.code
 
MAIN PROC

    MOV AX,@DATA
    MOV DS, AX

    ; Display message
    MOV ah,9
    LEA DX, MES
    INT 21h

    ;take one input
    mov ah,1
    int 21h
    mov bl,al

    ;check character

    cmp bl,'A'
    jl inv

    cmp bl, 'Z'
    jle check_digit 
    


check_digit: 

    cmp bl, '0'
    je digit
    cmp bl, '1'
    je digit
    cmp bl, '2'
    je digit
    cmp bl, '3'
    je digit
    cmp bl, '4'
    je digit
    cmp bl, '5'
    je digit
    cmp bl, '6'
    je digit
    cmp bl, '7'
    je digit
    cmp bl, '8'
    je digit
    cmp bl, '9'
    je digit
    

   ;otherwise valid
   mov ah,9
   lea dx,v
   int 21h
   jmp EXIT

digit:
   mov ah,9
   lea dx,d
   int 21h
   jmp exit 
   
inv: 
    mov ah,9
    lea dx,i
    int 21h

EXIT:

   mov ah,4ch

   int 21h

MAIN ENDP

END MAIN
 