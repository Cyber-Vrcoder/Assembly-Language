.model small
.data
str db "What we know is a Drop$"
len dw ?
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
                   
    dec len 
    
    lea si,str 
    lea bx,str
    add bx,len
    mov di,bx 
    
    mov bx,0002h
    mov cx,0000h
    
    mov ax,len
    div bx 
    mov cl,al
                   
    l2: 
    mov al,[si]
    mov bl,[di]
    mov [si],bl
    mov [di],al
    inc si
    dec di
    loop l2:
    
    mov ah,04ch
    int 21h
endp
end