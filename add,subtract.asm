
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here  


mov ax,75
mov bx,41


mov cx,10
sub ax,5
sub cx,bx
mov bx,cx
mov dx,30
add dx,ax
sub dx,bx


ret




