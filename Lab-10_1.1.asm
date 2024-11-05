ORG 100h           

MOV CX, 10        
MOV AL, '0'        

PrintLoop:
    MOV DL, AL     
    MOV AH, 02h    
    INT 21h        

    inc AL         
    LOOP PrintLoop 

MOV AH, 4Ch        
INT 21h            
