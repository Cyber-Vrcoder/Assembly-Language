modelsmall
.data

a db 11,33,22,10,44
n db 4
b db 0
max db ?


.code

main proc near
    mov ax,@data
    mov ds,ax
    
    mov bh,b
    lea si,a
    mov bl,[si]
    flagthree:
    inc si
    mov al,[si]
    cmp bl,al
    ja flagone
    mov bl,al
    flagone:
    mov ah,n
    cmp ah,bh
    je flagtwo
    dec n
    jmp flagthree
    flagtwo:
    mov max,bl
    
    mov ax,4ch
    int 21h
endpmain
endmain