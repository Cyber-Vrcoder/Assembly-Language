.model small
.data
num db 5,04 dup(?)
Label db "Enter Number:- $"
O db "Given Number is ODD$"
E db "Given Number is EVEN$"

.code
main proc near
    mov ax,@data
    mov ds,ax
    
    Space macro 
        mov dx,10
        mov ah,02h
        int 21h
        
        mov dx,13
        mov ah,02h
        int 21h
    endm
     
    lea dx,Label
    mov ah,09h
    int 21h
     
    lea dx,num
    mov ah,0ah
    int 21h
    
    lea si,num
    inc si
    mov cl,[si]
    last:
        inc si
        loop last
    mov ax,00h
    mov al,[si]
    and al,0fh 
    mov bl,02h
    div bl
    
    cmp ah,00h
    je even
    Space 
    lea dx,O
    mov ah,09h
    int 21h 
    jmp finish
    even:
        Space
        lea dx,E
        mov ah,09h
        int 21h
    finish:  
    
    mov ax,04ch
    int 21h
endp
end
