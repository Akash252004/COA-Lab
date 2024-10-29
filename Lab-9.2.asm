org 100h

mov dx, offset msg_input
mov ah, 09h
int 21h

mov ah, 01h
int 21h
sub al, '0'
mov bl, al

mov ah, 00h
mov al, bl
mov cl, 02
div cl

cmp ah, 00h
je is_even

mov dx, offset odd_msg
mov ah, 09h
int 21h
jmp end_program

is_even:
mov dx, offset even_msg
mov ah, 09h
int 21h

end_program:
mov ah, 4Ch
int 21h

msg_input db 0Dh, 0Ah, 'Enter a single-digit number: $'
even_msg db 0Dh, 0Ah, 'The number is even.$', 0Dh, 0Ah
odd_msg db 0Dh, 0Ah, 'The number is odd.$', 0Dh, 0Ah