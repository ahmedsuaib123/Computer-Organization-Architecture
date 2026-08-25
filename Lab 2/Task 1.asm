.MODEL SMALL
.STACK 100H
.DATA

A DB "My name is : $"
B DB "Suaib Ahmed Nafees$" 

C DB "Student ID: $"
D DB "23-50723-1$"

NEWLINE DB 0AH,0DH,'$'
NEW DB 10,13,'$'

.CODE

MAIN PROC
    
    MOV AX, @DATA
    MOV DS, AX
    
    MOV AH,9 ;string input
    LEA DX,A
    INT 21H
   
    mov ah,9 ;string input
    lea dx,B
    int 21h   
    
    MOV AH,9 ;string input
    LEA DX,NEWLINE 
    INT 21H
    
    mov ah,9 ;string input
    lea dx,C
    int 21h
    
    mov ah,9 ;string input
    lea dx,D
    int 21h
    
    
    
      ;EXIT
    MOV AH,4CH
    INT 21H
    MAIN ENDP

END MAIN