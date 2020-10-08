.model small
.data                       
str db "aba$"
input db "ababababababababa$" 
len db ?     
N db ?

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
    
    dec len
    mov dl,len
    mov dh,00h
    lea si,input
    lea di,str
    mov ah,"$" 
    l1:
        cld       
        lodsb
        mov bl,[di]
        cmp al,bl
        je l2
        lea di,str
        mov dl,len
        cmp al,ah
        je over
        jmp l1
    l2:
        inc di
        dec dl
        cmp dl,dh
        je l3
        jmp l1
    l3:
        lea di,str
        mov dl,len
        inc N
        jmp l1
                 
    
    over:
    
       
        
    mov ax,04ch
    int 21h
endp
end