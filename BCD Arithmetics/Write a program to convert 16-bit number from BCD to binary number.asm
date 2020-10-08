.model small
.data
a dw 2525h
b dw ?  
r db 08 dup (?)

.code
main proc near
    mov ax,@data
    mov ds,ax
    
    lea si,r
    mov cl,0000h
    mov ax,0000h
    mov ax,a
    mov bx,0002h
    loop1:
    div bx 
    mov b,ax  
    mov [si],dl
    cmp ax,cx
    je loop2
    inc si
    mov ax,0000h 
    mov bx,0002h
    mov ax,b
    jmp loop1
    loop2:                              
          

            
    mov ax,04ch
    int 21h
endp
end