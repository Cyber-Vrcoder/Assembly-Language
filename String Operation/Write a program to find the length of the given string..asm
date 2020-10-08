.model small
.data
str db "What we know is a Drop;What we don't know is an Ocean$"
len db 0
b db "$"

.code
main proc near
    mov ax,@data
    mov ds,ax
    
    lea si,str
    mov bl,b
    
    l1:
        mov al,[si]
        cmp al,bl
        je Over
        inc len
        inc si
        jmp l1
    Over:
    
    mov ah,04ch
    int 21h
endp
end