.model small
.data
a dw 01h,02h,01h,03h,01h,04h,01h,05h,01h,01h
len dw $-a
o db 01h  
count db ?  
d dw 0002h

.code
main proc near
    mov ax,@data
    mov ds,ax
            
    mov ax,len
    div d        
    mov bl,o
    lea si,a
    mov cx,ax
    l1:
        mov al,[si]
        cmp al,bl
        jne skip
        inc count
    skip:
         inc si
         inc si
         loop l1
    
    mov ax,04ch
    int 21h
endp
end