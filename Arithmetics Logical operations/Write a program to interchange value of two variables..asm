.modelsmall
.data
a db 50h
b db 60h

.code
main proc near
mov ax,@data
mov ds,ax
mov al,a
mov ah,b
mov a,ah
mov b,al
mov ax,4ch
int 21h
endp main
end main