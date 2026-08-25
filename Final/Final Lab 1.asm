.model small

.stack 100h
 
.data
 
   MES DB 'Enter a letter: $'

   v   DB 10,13,'Vowel$'
   C   DB 10,13,'Consonant$'
   I   DB 10,13,'INVALID$'

.code
 
MAIN PROC

    MOV AX,@DATA
    MOV DS, AX

    ; Display message

    MOV ah,9
    LEA DX, MES
    INT 21h

    ;take one character input
    mov ah,1
    int 21h
    mov bl,al

    ;check uppercase a-z

    cmp bl,'A'

    jl inv

    cmp bl, 'Z'

    jle check_vowel

    ;check lowercase

    cmp bl, 'a'

    jl inv

    cmp bl, 'z'

    jg inv

check_vowel: 

    cmp bl, 'A'

    je vol

    cmp bl, 'E'

    je vol

    cmp bl, 'I'

    je vol

    cmp bl, 'O'

    je vol

    cmp bl, 'U'

    je vol   

    cmp bl, 'a'

    je vol

    cmp bl, 'e'

    je vol

    cmp bl, 'i'

    je vol

    cmp bl, 'o'

    je vol

    cmp bl, 'u'

    je vol

   ;otherwise consonant

   mov ah,9

   lea dx,c

   int 21h

   jmp EXIT

vol: 

    mov ah,9

   lea dx,v

   int 21h

   jmp EXIT

inv:

   mov ah,9

   lea dx,i

   int 21h

EXIT:

   mov ah,4ch

   int 21h

MAIN ENDP

END MAIN
 