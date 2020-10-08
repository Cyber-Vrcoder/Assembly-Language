;Write a program for division of a n-word array witha 16-bitnumber.
.model small
.data
a dw 1234h,5678h,9ABCh
b dw 1111h
q dw 03 dup(?)
d dw ?

.code
main proc near
    mov ax,@data
    mov ds,ax
    
    mov ax,a
    mov bx,b
    div bx
    mov q+4,ax
    
    mov ax,a+2
    div bx
    mov q+2,ax
    
    mov ax,a+4
    div bx
    mov q,ax  
    mov d,dx

    mov ax,04ch
    int 21h
endp
end
