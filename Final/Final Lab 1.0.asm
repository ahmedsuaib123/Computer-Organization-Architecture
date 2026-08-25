.model small

.stack 100h

.data
  
   mes db 'Enter a letter: $'
   V db 10,13,'Vowel$'
   C db 10,13,'Consonant$'
   I db 10,13,'Invalid$'

.code     

 main proc  
    
    mov ax,@data
    mov ds,ax
    
    ; Display Message
    mov ah,9
    lea dx,mes
    int 21h
    
    ; Take One Character Input
    mov ah,1
    mov bl,al
    int 21h 
    
    ; check uppercase A-Z
    cmp bl ,'A'
    JL inv
    
    cmp bl,'Z'
    JLE CHECK_VOWEL 
    
    ; check lowercase a-z
    cmp bl ,'a'
    JL inv
    
    cmp bl,'z'
    JG inv
    
    CHECK_VOWEL:
        
        cmp bl,'A'
        JE VOL
        cmp bl,'E'
        JE VOL
        cmp bl,'I'
        JE VOL
        cmp bl,'O'
        JE VOL
        cmp bl,'U'
        JE VOL   
        
        cmp bl,'a'
        JE VOL
        cmp bl,'e'
        JE VOL
        cmp bl,'i'
        JE VOL
        cmp bl,'o'
        JE VOL
        cmp bl,'u'
        JE VOL
        
        ; Otherwise Consonant
        mov ah,9
        lea dx,c
        int 21h
        jmp exit
     
    VOL:
        mov ah,9
        lea dx,v
        int 21h
        jmp exit
        
    INV:
        mov ah,9 
        lea dx,i
        int 21h 
        
    EXIT:
        mov ah,4ch
        int 21h
    
    main endp
end main
    
    
        
    