.model small
.data                       
str db "abcbcabacdsgd$"
r db "c"
new db 40 dup(?) 
len dw ?     

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
     
    lea di,new
    lea si,str
    
    mov cx,len
    l1:        
        lodsb
        cmp al,r
        je l2:  
        stosb 
        l2:
            loop l1           
               
            
    mov ax,04ch
    int 21h
endp
end