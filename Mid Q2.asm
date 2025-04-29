;stirng initialize with HABIB  and write cown two different assembly langyage programs to cinvert it to lowercase letter using two different ways 
.model small
.stack 100h
.data       
msg db 'HABIB'

.code
main proc
    mov ax, @data
    mov ds, ax

;using OR bit masking
    lea si, msg
    mov cx, 5         
top1:
    or [si], 20h
    inc si
    loop top1

;using add method
    lea si, msg       
    mov cx, 5
top2:
    add [si], 20h
    inc si
    loop top2

    mov ah, 4ch
    int 21h
main endp
end main
