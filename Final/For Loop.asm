.model small
.stack 100h

.data

 msg1 db 'Suaib Ahmmed Nafees $'

.code
  main proc
    mov ax,@data
    mov ds,ax
    
    mov cx,5
    
LOOPA:
    mov ah,9
    lea dx,msg1
    int 21h 
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    ;LOOP LOOPA   
    
    dec cx
    JNZ LOOPA
    
    mov ah,4ch
    int 21h
    
  main endp
endp main