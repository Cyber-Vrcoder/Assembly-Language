.modelsmall
.data 

a dw 1010h
b db 11h
c dw ?

.code
main proc near
mov ax,@data
mov ds,ax
mov ax,a
mov bl,b
div bl
mov c,ax
mov ax,4ch
int 21h
endp main
end main