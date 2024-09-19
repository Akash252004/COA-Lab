org 100h        
mov al,'a'     
sub al,20h     
mov dl,al      
mov ah,02h     
int 21h         
mov ah,4Ch     
int 21h         
ret
