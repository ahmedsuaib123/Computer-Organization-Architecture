.model small
.stack 100h

.data 

 msg1 db "Even $"
 msg2 db "Odd $"

.code 
 main proc
 
  mov ax,@data
  mov ds,ax
  
  mov al,8
  
  TEST al,01h
  JZ Even
  
  mov ah,9
  lea dx,msg2
  int 21h 
  
  JMP Exit
  
Even:
  mov ah,9
  lea dx,msg1
  int 21h 
  
  JMP Exit 

Exit:
 mov ah,4ch
 int 21h  
   
 main endp
end main