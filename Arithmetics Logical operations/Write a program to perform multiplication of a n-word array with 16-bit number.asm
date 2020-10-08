;Writeaprogramtoperformmultiplicationofann-wordarraywith16-bitnumber
.model small
.data
a dw 1234h,5678h,9ABCh
b dw 2000h
c dw 04 dup(?) 


.code
main proc near
    mov ax,@data
    mov ds,ax
    
    mov ax,a+4
    mov bx,b
    mul bx
    mov c,ax
    mov cx,dx  
    
    mov ax,a+2
    mul bx
    add ax,cx
    mov c+2,ax 
    mov cx,dx  
    
    mov ax,a
    mul bx
    add ax,cx
    mov c+4,ax
    mov c+6,dx  
    

    mov ax,04ch
    int 21h
endp
end