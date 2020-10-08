.model small
.data
input db "How would it work?$"
o db "o"
n db 0

.code
main proc near
    mov ax,@data
    mov ds,ax
    mov es,dx      
             
    lea si,input
    mov bl,o
    mov ah,"$"
    
    l1:
        mov al,[si]
        cmp al,bl
        je l2
        cmp al,ah
        je over
        inc si
        jmp l1
    l2: inc n
        inc si 
        jmp l1         
    
    over:
          
    mov ax,04ch
    int 21h
endp 
end
