.model small
.data
    A db 7Fh     
    B db 0FBh   

.code
main:
    mov ax, @data
    mov ds, ax

    
    mov al, A   
    sub al, 5  
    mov bl, B   
    add bl, 3        
    mov ah, 0        
    mul bl           
    mov A, al   

end main
