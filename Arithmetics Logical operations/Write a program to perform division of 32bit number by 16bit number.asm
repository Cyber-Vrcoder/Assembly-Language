;Writeaprogramtoperformdivisionof32bitnumberby16bitnumber
.model small
.data
a dw 1234h,5678h
b dw 1000h
q dd ?
r dw ?

.code
main proc near
    mov ax,@data
    mov ds,ax
    
    mov ax,a
    mov bx,b
    div bx
    mov q+2,ax
    
    
    mov ax,a+2
    div bx
    mov q,ax
    mov r,dx
    
    mov ax,04ch
    int 21h
endp
end