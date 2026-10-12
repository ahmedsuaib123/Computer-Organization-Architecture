.model small
.stack 100h

.data

.code
 main proc
    
  mov dl,'a'
  mov cx,26
     
PRINT:
  mov ah,2
  int 21h
  
  inc dl 
  
  LOOP PRINT 
  
  mov ah,4ch
  int 21h
    
 main endp
end main