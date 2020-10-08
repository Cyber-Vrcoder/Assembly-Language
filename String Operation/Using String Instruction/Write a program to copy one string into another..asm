.model small
.data
str db "I am vrcoder$"
copy db 50 dup (?)

.code
main proc near 
    mov ax,@data
    mov ds,ax
    mov es,ax
        
    lea si,str
    lea di,copy
    repnz movsb   
        
    mov ax,04ch
    int 21h
endp
end