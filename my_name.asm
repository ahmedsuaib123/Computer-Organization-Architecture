.MODEL SMALL

.STACK 100H 

.DATA

A DB "A $" 
B DB "B" 
 
NEWLINE DB 0AH,0DH,'$'
NEW DB 10,13,'$' 

.CODE

MAIN PROC 
    
    
    MOV AX,@DATA
    MOV DS, AX 
    
    MOV AH,9  
    LEA DX,A
    INT 21H   
    
    ;mov ah,9
    ;mov dx,NEWLINE
    ;int 21h
    
   ; MOV AH,2
   ; MOV DL,0AH ;10/0AH
   ; INT 21H
   ; MOV DL,0DH ;13 / 0DH
   ; INT 21H  
    
    MOV AH,9
    LEA DX,B
    INT 21H  
    
    MOV AH,9
    LEA DX,NEWLINE
    INT 21H
    
    MOV AH,1
    INT 21H 
    
    MOV BH,AL 
   
    MOV AH,9
    LEA DX,NEW
    INT 21H
    
    MOV AH,1 
    INT 21H
    MOV CH,AL 
    
    MOV AH,9
    LEA DX,NEW
    INT 21H
    
    ;MOV AH,2;
    ;MOV DL,BH
    ;INT 21H
    
    ;MOV AH,2
    ;MOV DL,CH
    ;INT 21H 
    
    ADD BH,CH 
    sub bh,48  
   
    
    MOV AH,9
    LEA DX,NEWLINE
    INT 21H 
    
    MOV AH,2
    MOV DL,BH
    INT 21H
     
       
       ;EXIT
    MOV AH,4CH
    INT 21H
    MAIN ENDP 

END MAIN
    
