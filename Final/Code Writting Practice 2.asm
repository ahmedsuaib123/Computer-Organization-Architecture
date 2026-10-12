.model small
.stack 100h

.data

 msg1 db '@$'
 msg2 db 'Enter Two Char: $'
 msg3 db 'The Correct Order is: $'  
 
 var1 db ?
 var2 db ?

.code
  main proc
    mov ax,@data
    mov ds,ax
    
    mov cx,5
    
LOOPA:
    mov ah,9
    lea dx,msg1
    int 21h 
    
    ;LOOP LOOPA   
    
    dec cx
    JNZ LOOPA 
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h

ENTER_INPUT:
    mov ah,9
    lea dx,msg2
    int 21h
    
    mov ah,1
    int 21h
    mov var1,al
        
    mov ah,1
    int 21h
    mov var2,al
    
    mov al,var1
    cmp al,var2 
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    JL P_VAR1_VAR2
    
P_VAR2_VAR1:
    mov ah,9
    lea dx,msg3
    int 21h
    
    mov ah,2
    mov dl,var2
    int 21h
    
    mov ah,2
    mov dl,var1
    int 21h
    
    JMP RETURN 


P_VAR1_VAR2:
    mov ah,9
    lea dx,msg3
    int 21h 
    
    mov ah,2
    mov dl,var1
    int 21h
    
    mov ah,2
    mov dl,var2
    int 21h
    
    JMP RETURN


RETURN: 
    mov ah,4ch
    int 21h
    
    
  main endp
endp main