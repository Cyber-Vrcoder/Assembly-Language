.model small
.data
num1 dw 1500
num2 dw 2500
hcf dw ?
lcm dw ? 

.code
main proc near
    mov ax,@data
    mov ds,ax
   
    mov ax,num1
    mov bx,num2
    while:
          mov dx,0
          mov cx,bx
          div bx
          mov bx,dx
          mov ax,cx
          cmp bx,0                                   
          jne while
    mov hcf,ax
    mov cx,ax
    mov ax,num1
    mov bx,num2
    mul bx
    div cx
    mov lcm,ax
    
    mov ax,04ch
    int 21h
endp
end