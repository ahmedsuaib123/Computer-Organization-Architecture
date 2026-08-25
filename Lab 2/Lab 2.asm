.MODEL SMALL
.STACK 100H
.DATA

A DB "My name is : $"
B DB "Suaib Ahmed Nafees$"

NEWLINE DB 0AH,0DH,'$'
NEW DB 10,13,'$'

.CODE

MAIN PROC
    
    MOV AX, @DATA
    MOV DS, AX
    
    MOV AH,9 ;string
    LEA DX,A
    INT 21H
    
    ;MOV AH,2
    ;MOV DL,0AH  ;10
    ;INT 21H
    ;MOV DL,0DH  ;13
    ;INT 21H
    
    ;MOV AH,9
    ;LEA DX,NEWLINE 
    ;INT 21H  
    
    mov ah,9
    lea dx,B
    int 21h 
    
    MOV AH,9
    LEA DX,NEWLINE 
    INT 21H 
    
    MOV AH,1 ; single input
    INT 21H  
    
    MOV BH,AL 
    
    MOV AH,1
    INT 21H  
    
    MOV CH,AL
    
    MOV AH,9
    LEA DX,NEW
    INT 21H
    
    ;MOV AH,2
    ;MOV DL,BH
    ;INT 21H
    
    ;MOV AH,2
    ;MOV DL,CH
    ;INT 21H
    
    ADD BH,CH
    SUB BH,48
    
    MOV AH,9
    LEA DX,NEWLINE
    
    MOV AH,2
    MOV DL,BH
    INT 21H
    
      ;EXIT
      MOV AH,4CH
      INT 21H
      MAIN ENDP

END MAIN
    
      