.model small
.data                       
str db "abcbcabacdsgd$"
f db "c" 
len dw ?     
Last dw ?

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
    mov len,bx
     
    mov bx,0000h           
               
    lea bx,str
    add bx,len           
    mov si,bx 
    dec si   
    mov cx,len           
    l1:
       std           
       lodsb
       mov bl,f
       cmp al,bl
       je over
       loop l1
    over:   
        inc si
        inc si
        mov Last,si    
            
    mov ax,04ch
    int 21h
endp
end