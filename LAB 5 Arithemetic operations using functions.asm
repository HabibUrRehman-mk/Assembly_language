;functions performing some arthimetic operations
.model small
.stack 100h  
.data

A db 80h
B db 20h
C db ?
.code
main proc
    mov ax,@data
    mov DS,ax
    mov ah ,0
add ah , A
add ah , B
mov C , ah
main endp
end main  




.model small
.stack 100h  
.data

     ;b = 3 * b + 7
B db 20h
.code
main proc
    mov ax,@data
    mov DS,ax
    mov ah ,0    
   
mov ah , B
mul 3
add ah, 7
mov B,ah
  main endp
end main




.model small
.stack 100h  
.data

A db 20h
B db 80h
C db ?
.code
main proc    
    ;A=B-A-1
    mov ax,@data
    mov DS,ax
    mov ah ,0
mov ah , B
sub ah,A
sub ah,1
mov C , ah
main endp
end main



.model small
.stack 100h  
.data

A db 20h
B db 80h
C db ?
.code
main proc    
    ;A=B-A-1
    mov ax,@data
    mov DS,ax
    mov ah ,0
mov ah , B
sub ah,A
sub ah,1
mov C , ah
main endp
end main



