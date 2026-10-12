
.model small 
.stack 100h 
 
.data 
 
 msg1 db 'Enter First Number: $'     
 msg2 db 'Enter Second Number: $' 
 msg3 db 'Invalid!Try Again $'  
 msg4 db 'The difference of $' 
 msg5 db ' & $' 
 msg6 db ' is: $' 
  
 num1 db ?  
 num2 db ? 
 
.code 
  main proc 
    mov ax,@data 
    mov ds,ax 
 
I1:     
    mov ah,9 
    lea dx,msg1 
    int 21h 
     
    mov ah,1 
    int 21h 
     
    mov num1,al 

    cmp al,'0'  
    JL ERROR 
     
    cmp al,'9' 
    JG ERROR     
     
     
I2:     
    mov ah,2 
    mov dl,10 
    int 21h 
    mov dl,13 
    int 21h 
     
    mov ah,9 
    lea dx,msg2 
    int 21h 
     
    mov ah,1 
    int 21h  
    mov num2,al 
 
    cmp al,'0' 
    JL ERROR2 
 
    cmp al,'9' 
    JG ERROR2     
     
    JMP DISPLAY 
     
DISPLAY: 
    mov ah,2 
    mov dl,10 
    int 21h 
    mov dl,13 
    int 21h 
     
    mov ah,9 
    lea dx,msg4 
    int 21h  
    
    mov al,num1
    cmp al,num2
    JG NUM1_G_NUM2
     
    JMP NUM2_G_NUM1 
     
NUM2_G_NUM1: 
    mov ah,2 
    mov dl,num2 
    int 21h 
     
    mov ah,9 
    lea dx,msg5  
    int 21h 
     
    mov ah,2 
    mov dl,num1 
    int 21h   
     
    mov ah,9 
    lea dx,msg6 
    int 21h     
     
    mov al,num1     
    sub num2,al 
    add num2,'0' 
    mov ah,2 
    mov dl,num2 
    int 21h 
     
    JMP EXIT     
     
NUM1_G_NUM2: 
    mov ah,2 
    mov dl,num1 
    int 21h 
     
    mov ah,9 
    lea dx,msg5  
    int 21h 
     
    mov ah,2 
    mov dl,num2 
    int 21h   
     
    mov ah,9 
    lea dx,msg6 
    int 21h 
     
    mov al,num2     
    sub num1,al 
    add num1,'0' 
    mov ah,2 
    mov dl,num1 
    int 21h 
     
    JMP EXIT 
     
 
ERROR: 
    mov ah,2 
    mov dl,10 
    int 21h 
    mov dl,13 
    int 21h 
     
    mov ah,9 
    lea dx,msg3 
    int 21h  
     
    JMP I1  
     
ERROR2: 
    mov ah,2 
    mov dl,10 
    int 21h 
    mov dl,13 
    int 21h 
     
    mov ah,9 
    lea dx,msg3 
    int 21h  
     
    JMP I2 
     
     
EXIT: 
    mov ah,4ch 
    int 21h   
  main endp 
end main