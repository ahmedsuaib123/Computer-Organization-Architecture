.model small

.stack 100h

.data 
  
  a db "23-50723-1 $"  
  
  newline db 0dh,0ah,"$" 
  
  num1 db 5
  num2 db 2

.code
  main proc
    
    mov ax,@data  
    mov ds,ax
    
    mov ah,09h
    lea dx,a
    int 21h
    
    
    ;Newline
    mov ah,02h
    mov dl,0dh
    int 21h
    
    mov dl,0ah
    int 21h
    
    mov ah,02h  ; Read single character
    mov dl,'A'
    int 21h 
    
    ;Newline
    mov ah,02h
    mov dl,0dh
    int 21h
    
    mov dl,0ah
    int 21h
    
    mov ah,02h
    mov dl,5h
    int 21h
    
    ;Newline
    mov ah,02h
    mov dl,0dh
    int 21h
    
    mov dl,0ah
    int 21h
    
    mov ah,02h
    mov dl,5h 
    add dl,30h
    int 21h
    
    ;Newline
    mov ah,02h
    mov dl,0dh
    int 21h
    
    mov dl,0ah
    int 21h
    
    mov ah,02h
    mov dl,5h 
    add dl,48
    int 21h 
    
    ;Newline
    mov ah,09h
    lea dx,newline
    int 21h
    
    mov ah,02h
    mov dl,8h
    add dl,30h
    int 21h
    
    ;Newline
    mov ah,09h
    lea dx,newline
    int 21h
    
    mov al,3
    add al,2 
    add al,30h
    
    mov ah,02h
    mov dl,al
    int 21h
    
    ;Newline
    mov ah,09h
    lea dx,newline
    int 21h
    
    mov al,10
    add al,9
    add al,48   
    
    mov ah,02h
    mov dl,al
    int 21h 
    
    ;Newline
    mov ah,09h
    lea dx,newline
    int 21h
    
    mov al,num1
    add al,num2
    add al,30h
    
    mov ah,02h
    mov dl,al
    int 21h   
    
    ;Newline
    mov ah,09h
    lea dx,newline
    int 21h
    
    mov al,num1
    add al,num2
    add al,48
    
    mov ah,02h
    mov dl,al
    int 21h 
    
    ;Newline
    mov ah,09h
    lea dx,newline
    int 21h
    
    mov al,2
    add al,4
    ;add al,30h
    
    mov ah,02h
    mov dl,al
    int 21h  
    
    ;Newline
    mov ah,09h
    lea dx,newline
    int 21h
    
    mov al,num1
    sub al,num2
    add al,30h
    
    mov ah,02h
    mov dl,al
    int 21h  

    
    mov ah,4ch ;exit
    int 21h
  main endp
end main