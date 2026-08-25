.model small

.stack 100h
 
.data

.code
 
MAIN PROC

   MOV AX,@DATA
   MOV DS, AX

   mov cx,5
   
   TOP:
    mov ah,2
    mov dl,'*'
    int 21h
   
   loop top 

   mov ah,4ch
   int 21h

 MAIN ENDP

END MAIN
 