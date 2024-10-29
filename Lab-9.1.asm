org 100h


    mov dx, offset num1
    mov ah, 09h
    int 21h

    
    mov ah, 01h
    int 21h
    sub al, '0'  
    mov bl, al   

   
    mov dx, offset num2
    mov ah, 09h
    int 21h

    
    mov ah, 01h
    int 21h
    sub al, '0'  
    mov bh, al   

   
    cmp bl, bh
    je numbers_equal

    
    mov dx, offset not_equal_msg
    mov ah, 09h
    int 21h
    jmp end_program 

numbers_equal:
    
    mov dx, offset equal_msg
    mov ah, 09h
    int 21h
    jmp end_program 
    

end_program:
    
    mov ah, 4Ch
    int 21h
    
num1 db 0Dh, 0Ah, 'Enter first number: $'
num2 db 0Dh, 0Ah, 'Enter second number: $'  
equal_msg db  0Dh, 0Ah,'The numbers are equal.$' 
not_equal_msg db 0Dh, 0Ah, 'The numbers are not equal.$'