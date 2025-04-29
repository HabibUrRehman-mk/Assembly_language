.model small
.stack 100h
.data       
msg db 'HABIB'

.code
main proc
    mov ax,@data
    mov ds,ax
    
    
    LEA si,msg 
    mov cx ,11
    
    top:
    OR [si],20h  
    ;add [si],20h 
    ;sub [si],20h        ;for lower to upper
    inc si
    loop top
    
    main endp
end main            