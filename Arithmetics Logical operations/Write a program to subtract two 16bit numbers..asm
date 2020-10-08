.modelsmall
.data

a dw 5427h
b dw 2536h
c dw ?  

.code
main proc near
    mov ax,@data
    mov ds,ax
    mov ax,a
    mov bx,b
    add ax,ax
    mov c,ax
    mov ax,4ch
    int 21h
endp main
end main