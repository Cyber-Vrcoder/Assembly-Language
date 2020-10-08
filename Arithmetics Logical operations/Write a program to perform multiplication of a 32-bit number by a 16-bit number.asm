;Writeaprogramtoperformmultiplicationofa32-bitnumberbya16-bitnumber
.model small
.data
a dw 1234h,5678h
b dw 1000h
c dw 03 dup(?)

.code
main proc near
    mov ax,@data
    mov ds,ax
    
    mov ax,a+2
    mov bx,b
    mul bx
    mov c,ax
    mov cx,dx
    
    mov ax,a
    mul bx
    add ax,cx
    mov c+2,ax
    mov c+4,dx
    
    mov ax,04ch
    int 21h
endp
end