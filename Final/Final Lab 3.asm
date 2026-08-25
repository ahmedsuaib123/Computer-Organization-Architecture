.model small

.stack 100h
 
.data

.code
 
MAIN PROC

   MOV AX,@DATA
   MOV DS, AX

   mov cx,3
   JCXZ SKIP
   
   TOP:
    mov ah,2
    mov dl,'*'
    int 21h
   
   loop top 
   
   SKIP:
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h 
      
   mov cx,3
   
   TOP1:
    mov ah,2
    mov dl,'A'
    int 21h
   
   loop top1 

   mov ah,4ch
   int 21h

 MAIN ENDP

END MAIN
 