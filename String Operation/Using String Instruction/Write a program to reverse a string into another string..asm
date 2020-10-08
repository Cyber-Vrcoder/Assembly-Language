.model small
.data
str db "I am vrcoder$"  
len dw ?
rev db 50 dup (?)

.code
main proc near 
    mov ax,@data
    mov ds,ax
    mov es,ax
              
    mov al,'$'
    lea di,str
    repnz scasb 
    mov bx,di
    mov len,bx
    dec len
    
    lea bx,str
    add bx,len   
                        
    lea si,bx
    lea di,rev 
    mov cx,len
    inc cx
    l1:   
        std
        lodsb
        cld
        stosb
        loop l1  
        
    mov ax,04ch
    int 21h
endp
end