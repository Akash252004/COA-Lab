ORG 100h           ; Origin, to specify that the program starts at 100h (COM file format)

; Display message "Two-digit number is: "
MOV DX, OFFSET msg_output   ; Load the address of the message
MOV AH, 09h                 ; Function 09h of INT 21h is used to display a string
INT 21h                     ; Call DOS interrupt to print the message

; Set two-digit number in the program
MOV AL, '3'     ; First digit (tens place)
MOV BL, '4'     ; Second digit (ones place)

; Display first digit (tens place)
MOV DL, AL      ; Load first digit (AL) into DL for printing
MOV AH, 02h     ; Function 02h of INT 21h to print a character
INT 21h         ; Call DOS interrupt to display the first digit

; Display second digit (ones place)
MOV DL, BL      ; Load second digit (BL) into DL for printing
MOV AH, 02h     ; Function 02h of INT 21h to print a character
INT 21h         ; Call DOS interrupt to display the second digit

EndProgram:
MOV AH, 4Ch     ; Function 4Ch of INT 21h terminates the program
INT 21h         ; Call DOS interrupt to exit

msg_output DB 'Two-digit number is: $'