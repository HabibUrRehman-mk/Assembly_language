;user input
.model small
.stack 100h
.data

.code
main proc
    mov ax,@data
    mov ds,ax
    mov ah,1
    int 21h
    
    sub al,30h ;30h is subtracted beacause when we take single character input it converts it to ascii  and to work with character we do it.if we enter 4 it will convert it ot 34 so we subtract 30 to convert back to 4
    mov bl,10d
    mul bl
    main endp
end main           



;output display
.model small
.stack 100h
.data


.code
main proc
    mov dl,41h
    mov ah,2
    int 21h
    main endp
end main           



; data segment output
.model small
.stack 100h
.data
ch_1 db 'H'
.code
main proc
    mov ax,@data
    mov ds,ax
    mov dl,ch_1
    mov ah,2
    int 21h 
    
    main endp
end main  



;user input display
.model small
.stack 100h
.data

.code
main proc
    mov ax,@data
    mov ds,ax
    mov ah,1
    int 21h
    
    mov dl,al
    mov ah,2
    int 21h 
    
    main endp
end main   


;string output
.model small
.stack 100h
.data
str_1 db 'Habib$'
.code
main proc
    mov ax,@data
    mov ds,ax
    LEA dx,str_1
    mov ah,9
    int 21h 
    
    main endp
end main   


;string output  in new line
.model small
.stack 100h
.data
str_1 db 'Habib$'
str_2 db 0ah,0dh,' ur rehman$'
.code
main proc
    mov ax,@data
    mov ds,ax
    LEA dx,str_1
    mov ah,9
    int 21h 
    LEA dx,str_2
    mov ah,9
    int 21h 
    
    main endp
end main

;lab task > take single bit decimal number input and multiply by 10d
.model small
.stack 100h
.data
str_1 db 'enter first number$'
str_2 db 0ah,0dh,'$'

.code
main proc 
    mov ax,@data
    mov ds,ax
    LEA dx,str_1
    mov ah,9
    int 21h
    
    LEA dx,str_2
    mov ah,9
    int 21h  
    
    mov ah,1
    int 21h   
    
    mov bl,al 
    
    LEA dx,str_2
    mov ah,9
    int 21h
    
    mov dl,bl
    mov ah,2
    int 21h
    
    
    main endp
end main 
