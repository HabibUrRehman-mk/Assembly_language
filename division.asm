
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov ax, 20    
mov bx, 5     
div bx        
mov bx, ax 



mov ax, 50    
sub ax, 10    
mov bx, 8    
div bx        
mov bx, ax  
   


ret




