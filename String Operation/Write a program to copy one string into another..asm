.model small
.data
str db "What we know is a Drop$"
copy db 100 dup (?)
b db "$"

.code
main proc near
    mov ax,@data
    mov ds,ax
    
    lea si,str
    lea di,copy
    mov bl,b
    
    l1:
        mov al,[si]
        mov [di],al
        cmp al,b
        je Over
        inc di
        inc si
        jmp l1
    Over:
    
    mov ah,04ch
    int 21h
endp
end
