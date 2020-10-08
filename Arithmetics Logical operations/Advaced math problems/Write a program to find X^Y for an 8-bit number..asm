.model small
.data
a db 06h
b db 04h
c dw ? 

.code
small proc near
    mov ax,@data
    mov ds,ax
     
    dec b
    mov cl,b
    mov al,a
    mov bl,a
    loop1:
        mul bl       
        loop loop1
    mov c,ax
    mov ax,04ch
    int 21h
endp
end