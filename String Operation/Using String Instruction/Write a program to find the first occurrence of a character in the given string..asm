.model small
.data                       
str db "!@#%^&*abcsd$"
O db "c" 
len db ?     
First dw ?

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
    
    lea si,str
    mov cl,len
    l1:
       cld    
       lodsb
       cmp al,O
       je over
       loop l1:
   
    over:
         mov First,si    
            
    mov ax,04ch
    int 21h
endp
end