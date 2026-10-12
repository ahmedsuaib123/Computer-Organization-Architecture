.model small

.stack 100h

.data

.code
 main proc
  
  mov dl,'A'  
  mov cx,8
  
PRINT:
  mov ah,2
  int 21h
  
  inc dl
  
  LOOP PRINT 
  
  mov ah,2
  mov dl,10
  int 21h
  mov dl,13
  int 21h
  
  mov dl,'a'  
  mov cx,8
  
PRINT1:
  mov ah,2
  int 21h
  
  inc dl
  
  LOOP PRINT1
  
  mov ah,2
  mov dl,10
  int 21h
  mov dl,13
  int 21h
  
  mov dl,'K'  
  mov cx,10
  
PRINT2:
  mov ah,2
  int 21h
  
  LOOP PRINT2
  
  mov ah,2
  mov dl,10
  int 21h
  mov dl,13
  int 21h
  
  mov ah,1 
  int 21h
  mov bl,al
  
  OR bl,20h ;Upper To Lower
  
  mov ah,2
  mov dl,bl
  int 21h
  
  AND bl,0DFH 
  
  
  
  mov ah,2
  mov dl,bl
  int 21h
  
    
  mov ah,4ch
  int 21h
 main endp
end main