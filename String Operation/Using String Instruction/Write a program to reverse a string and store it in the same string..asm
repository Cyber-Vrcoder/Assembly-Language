.model small
.data
str db "I am vrcoder$"  
len dw ?

.code
main proc near 
    mov ax,@data
    mov ds,ax
    mov es,ax
              
    mov al,'$'
    lea di,str
    repnz scasb 
    mov ax,di 
    mov len,ax
    
    mov bx,0002h
    div bx
    mov cl,al
    mov ch,00h
    dec len
    
    lea bx,str
    add bx,len
    mov si,bx 
    lea di,str
    
    l1: 
        mov bl,[di] 
        std
        lodsb
        cld
        stosb 
        inc si
        mov [si],bl
        dec si
        loop l1
        
    mov ax,04ch
    int 21h
endp
end