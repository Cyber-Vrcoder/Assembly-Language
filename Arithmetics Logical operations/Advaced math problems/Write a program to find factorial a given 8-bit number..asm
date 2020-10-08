.model small
.data
a dw 008h 
b db 07h  
c dw ?

.code
main proc near
    mov ax,@data
    mov ds,ax
    
    mov ax,a
    mov cl,b
    l1: 
        mul cx 
        loop l1
    mov c,ax
    mov ax,04ch
    int 21h
endp
end
