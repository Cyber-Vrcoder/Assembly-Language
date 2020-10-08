modelsmall
.data 

a db 75h
b db 30h
c db ?

.code

main proc near
    mov ax,@data
    mov ds,ax
    mov al,a
    mov ah,b
    sub al,ah
    mov c,al
    mov ax,4ch
    int 21h
endpmain
endmain