.model small
.data
a dw 1111h   
r1 dw 02 dup(?)
r  dw 03 dup(?)

.code
main proc near
    mov ax,@data
    mov ds,ax
     
    mov ax,a
    mov bx,a
    mul bx    
    mov r1+2,dx
    mov r1,ax
    
    mov ax,r1
    mul bx
    mov r,ax
    mov cx,dx
    mov ax,r1+2
    mul bx
    add ax,cx
    mov r+2,ax
    mov r+4,dx
    
    mov ax,04ch
    int 21h
endp
end
