.model small
.data
str db "What we know is a Drop$"
len db ?
rev db 100 dup (?)
b db "$"

.code
main proc near
    mov ax,@data
    mov ds,ax
    
    lea si,str
    mov bl,b
    
    l1:
        mov al,[si]
        cmp al,b
        je Over
        inc len
        inc si
        jmp l1
    Over:   
    
    lea di,rev
    lea si,str+15h
    mov cx,0000h
    mov cl,len
    l2:
        mov al,[si]
        mov [di],al
        dec si
        inc di  
        loop l2:
    mov ah,04ch
    int 21h
endp
end
