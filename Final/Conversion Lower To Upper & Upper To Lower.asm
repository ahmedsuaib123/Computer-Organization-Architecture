.model small
.stack 100h

.data
 msg1 db 'Enter a lowercase: $'  
 msg2 db 'Original: $'
 msg3 db 'Uppercase: $'
 msg4 db 'Lowercase: $'
 

.code
 main proc  
  mov ax,@data
  mov ds,ax
  
  mov ah,9
  lea dx,msg1 ; Print msg1
  int 21h
  
  mov ah,1 ; Take Input 
  int 21h  
  
  mov bl,al ; Save the input
  
  mov ah,2
  mov dl,10
  int 21h
  mov dl,13
  int 21h  
          
  mov ah,9
  lea dx,msg2
  int 21h  
  
  mov ah,2
  mov dl,bl
  int 21h
  
  mov ah,2
  mov dl,10
  int 21h
  mov dl,13
  int 21h  
          
          
  AND BL,0DFh  ; Convert to Uppercase
  
  mov ah,9
  lea dx,msg3
  int 21h  
  
  mov ah,2
  mov dl,bl
  int 21h
  
  mov ah,2
  mov dl,10
  int 21h
  mov dl,13
  int 21h 
  
  OR bl,20h    ; Convert to Lowercase
  
  mov ah,9
  lea dx,msg4
  int 21h 
  
  mov ah,2
  mov dl,bl
  int 21h 
   
  
  mov ah,4ch
  int 21h
 
 main endp
endp main