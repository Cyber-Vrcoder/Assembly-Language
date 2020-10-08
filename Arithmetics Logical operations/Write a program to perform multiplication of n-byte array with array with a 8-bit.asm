;Writeaprogramtoperformmultiplicationofn-bytearraywitharraywithan8-bit number.
.model small
.data
a db 12h,34h,56h,78h,9Ah,0BCh
b db 22h
c dw 04 dup(?)

.code
main proc near
    mov ax,@data
    mov ds,ax
    
    mov al,a+5
    mov ah,a+4
    mov bl,b
    mul bl
    mov c,ax
    mov cx,dx  
    
    mov al,a+3
    mov ah,a+2
    mul bl
    add ax,cx
    mov c+2,ax 
    mov cx,dx  
    
    mov al,a+1
    mov ah,a
    mul bl
    add ax,cx
    mov c+4,ax
    mov c+6,dx
    
    mov ax,04ch
    int 21h
endp
end
    