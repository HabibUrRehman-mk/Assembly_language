
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; general register to general register   
mov ax,55
mov bx,35
mov dx,ax
mov cx,bx  

xchg ax,bx 

;general register to memory location

mov [200h],ax  

;;general register to constant

mov 5,ax ;not correct


mov [300h],20

;memory location to general register 
mov ax,[300h]

;memory location to memory location    

;mov [400h],[300h]   not possible  


;memory location to constant
                  
;mov 5,[300h]        not possible  


;constant to general register
mov ax,55


;constant to memory location
mov [300h],20


;constant to constant
mov 55,56           ;not correct  


; Move 5 integers at 5 memory locations
mov [0x661],0C0h
mov [662h],35d
mov [663h],0FAh  
mov [664h],89h
mov [665h],11001101b

ret




