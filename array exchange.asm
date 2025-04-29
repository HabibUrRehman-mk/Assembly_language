.model small
.stack 100h
.data
    arr db 25 dup(0FFh) 
.code
main proc
    
    mov ax, @data
    mov ds, ax

    
    mov arr[9], 10h      
    mov arr[24], 25h     

    
    mov al, arr[9]
    xchg al, arr[24]
    mov arr[9], al      


main endp
end main