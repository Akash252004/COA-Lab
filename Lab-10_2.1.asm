ORG 100h         

MOV CX, 10         
MOV AL, '9'       

PrintLoop:
    MOV DL, AL     
    MOV AH, 02h   
    INT 21h        

    dec AL        
    LOOP PrintLoop 

MOV AH, 4Ch        
INT 21h            
