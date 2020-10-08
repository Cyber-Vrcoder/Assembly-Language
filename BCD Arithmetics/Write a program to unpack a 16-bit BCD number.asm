.model small
.data
a dw 1234h
b db ?
c db ?
d db ?
e db ?

.code
main proc near
    mov ax,@data
    mov ds,ax
    
    mov ax,a
    AND ax,000fh
    mov b,al
    
    mov ax,00f0h
    AND ax,a
    ROR ax,4
    mov c,al
    
    mov ax,0f00h
    AND ax,a
    ROR ax,8
    mov d,al
    
    mov ax,0f000h
    AND ax,a
    ROR ax,12
    mov e,al
    
    mov ax,04ch
    int 21h
endp
end