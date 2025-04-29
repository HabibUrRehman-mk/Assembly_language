.model small
.stack 100h
.data
    arr db 25 dup(0FFh) 
.code
main proc
    
    ;array and adressing modes
    mov bx,200h
    mov [0200h],0ffh
    mov ax,[bx]      


main endp
end main                                                                                                           