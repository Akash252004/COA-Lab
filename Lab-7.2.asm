ORG 100h           ; Origin, to specify that the program starts at 100h (COM file format)

; Display message "Enter an uppercase letter: "
MOV DX, OFFSET msg_input  ; Load the address of the message
MOV AH, 09h        ; Function 09h of INT 21h is used to display a string
INT 21h            ; Call DOS interrupt to print the message

; Read a 1st single character from the user
MOV AH, 01h        ; Function 01h of INT 21h is used to read a character
INT 21h            ; Call DOS interrupt to get the character
MOV BL, AL         ; Store the input character in AL

; Check if the character is an uppercase letter (A-Z)
CMP AL, '0'        ; Compare AL with 'A'
JL NotDigit    ; If the input is less than 'A', it is not uppercase
CMP AL, '9'        ; Compare AL with 'Z'
JG NotDigit    ; If the input is greater than 'Z', it is not uppercase


MOV DX, OFFSET msg_input1  ; Load the address of the message
MOV AH, 09h        ; Function 09h of INT 21h is used to display a string
INT 21h            ; Call DOS interrupt to print the message


; Read a 2nd single character from the user
MOV AH, 01h        ; Function 01h of INT 21h is used to read a character
INT 21h            ; Call DOS interrupt to get the character
MOV cL, AL         ; Store the input character in AL          

; Check if the character is an uppercase letter (A-Z)
CMP AL, '0'        ; Compare AL with 'A'
JL NotDigit1    ; If the input is less than 'A', it is not uppercase
CMP AL, '9'        ; Compare AL with 'Z'
JG NotDigit1    ; If the input is greater than 'Z', it is not uppercase      
                              
                                                               
;sub
sub bl,cl  
add bl, 30h

;print the offset result
MOV DX, OFFSET msg_res  ; Load the address of the output message
MOV AH, 09h        ; Function 09h of INT 21h is used to display a string
INT 21h
                                                                                                       
;print res
mov dl,bl  
mov ah,02h
int 21h  
JMP EndProgram     ; Jump to the end of the program 


NotDigit:
; If the input is not an uppercase letter, display an error message
MOV DX, OFFSET msg_error  ; Load the address of the error message
MOV AH, 09h        ; Function 09h of INT 21h is used to display a string
INT 21h            ; Call DOS interrupt to print the error message
JMP EndProgram


                                    
NotDigit1:
; If the input is not an uppercase letter, display an error message
MOV DX, OFFSET msg_error1  ; Load the address of the error message
MOV AH, 09h        ; Function 09h of INT 21h is used to display a string
INT 21h            ; Call DOS interrupt to print the error message                                                                       
 
                                                                        
EndProgram:
; Terminate the program
MOV AH, 4Ch        ; Function 4Ch of INT 21h terminates the program
INT 21h            ; Call DOS interrupt to exit

msg_input  DB 'Enter a 1st digit: $'
msg_output DB 0Dh, 0Ah, 'The entered digit is: $'  ; Output message
msg_error  DB 0Dh, 0Ah, 'Error:First digit is not an integer $'  ; Error message           


msg_input1  DB 0Dh, 0Ah , 'Enter a 2nd digit: $'
msg_output1 DB 0Dh, 0Ah, 'The entered digit is: $'  ; Output message
msg_error1  DB 0Dh, 0Ah, 'Error: Second digit is not an integer $'  ; Error message  

msg_res DB 0Dh, 0Ah, 'The result: $'

END                ; End of program