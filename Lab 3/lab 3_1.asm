         
         
.model small

.stack 100h

.data  

a db 4h

.code

main proc
  
  mov dx,@data
  mov ax,dx
            
  mov ah,2
  ;mov dl,4h
  ;mov dl,4h
  mov dl,a
  ;add dl,30h
  int 21h 
  
  
  mov ah,4ch
  int 21h
  
main endp
end main