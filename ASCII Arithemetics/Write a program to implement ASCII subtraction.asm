.model small
.data
a db '9934'
len1 db $-a
b db '9876'
len2 db $-b
result db 04 dup(?)
len3 db $-result  

.code
main proc near
    mov ax,@data
    mov ds,ax
                        
    lea bx,a
    add bl,len1
    mov si,bx
    
    lea bx,b
    add bl,len2
    mov di,bx
    
    dec si
    dec di
    dec len3
               
    lea bx,result
    add bl,len3
                 
    mov cl,len1  
    mov ax,0h
    
 l1:                            
    mov al,[si]
    mov dl,[di]
    cmp ah,00h
    je skip
    dec al
    mov ah,00h                
    skip:
        sub al,dl
        aas 
           
        or al,30h
        mov [bx],al
        dec bx 
        dec si
        dec di
        loop l1 
            
    mov ax,04ch
    int 21h
endp 
end