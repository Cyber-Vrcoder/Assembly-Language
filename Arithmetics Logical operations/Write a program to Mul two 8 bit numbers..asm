.modelsmall
.data
a db 50
b db 60
c dw ?   

.code
main proc near
mov ax,@data
mov ds,ax
mov al,a
mov bl,b
mul bl
mov c,ax
mov ax,4ch
int 21h
endp main
end main