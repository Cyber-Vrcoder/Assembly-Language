.model small
.data
str db "I am vrcoder$"
len db ?

.code
main proc near 
    mov ax,@data
    mov ds,ax
    mov es,ax
        
    mov ax,0000h
    mov al,'$'
    lea di,str
    repnz scasb 
    mov bx,di
    mov len,bl   
        
    mov ax,04ch
    int 21h
endp
end