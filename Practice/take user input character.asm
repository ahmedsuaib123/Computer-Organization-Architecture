.model small

.stack 100h

.data   
  a db ?

.code      
  main proc  
    
    mov ax,@data
    mov ds,ax  
    
    mov ah,01h  ; Read character
    lea dx,a 
    int 21h
    
    mov ah,4ch  ; Exit
    int 21h  
  main endp
end main