.model small                                                                             .MODEL SMALL
.STACK 100H
.DATA

A DB "A $"
B DB "AA$" 

C DB "AAA $"
D DB "AAAA$"

NEWLINE DB 0AH,0DH,'$'
NEW DB 10,13,'$'

.CODE

MAIN PROC
    
    MOV AX, @DATA
    MOV DS, AX
    
    MOV AH,9 
    LEA DX,A
    INT 21H   
    
    MOV AH,9 
    LEA DX,NEWLINE 
    INT 21H
   
    mov ah,9 
    lea dx,B
    int 21h   
    
    MOV AH,9 
    LEA DX,NEWLINE 
    INT 21H
    
    mov ah,9 
    lea dx,C
    int 21h   
    
    MOV AH,9 
    LEA DX,NEWLINE 
    INT 21H
    
    mov ah,9 
    lea dx,D
    int 21h
    
    
    
      ;EXIT
    MOV AH,4CH
    INT 21H
    MAIN ENDP

END MAIN