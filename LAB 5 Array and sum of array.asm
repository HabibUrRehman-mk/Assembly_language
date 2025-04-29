.model small
.stack 100h  
.data
    arr db 10, 20, 30, 40,50, 5 dup (40)  
    len equ $-arr                       
    sum db 0                            
.code
main proc    
    
    mov ax, @data
    mov ds, ax

    
    mov cx, len        
    mov si, 0          
    mov al, 0          

sum_loop:
    mov bl, arr[si]    
    add al, bl         
    inc si             
    loop sum_loop      


    mov sum, al

main endp
end main