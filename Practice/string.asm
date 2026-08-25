.model small

.stack 100h

.data   
    
  a db "Suaib Ahmmed Nafees $"

.code 
  main proc
    
    mov ax,@data
    mov ds,ax
    
    mov ah,09h
    lea dx,a
    int 21h
    
    mov ah,4ch
    int 21h
    
  main endp 
end main