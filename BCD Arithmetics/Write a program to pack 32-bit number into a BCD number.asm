.model small
.data
a dd 01020304h
r dw ? 

.code
main proc near
    mov ax,@data
    mov ds,ax
    
    mov ax,a+2
    and ax,000fh
    ror ax,8 
    mov bx,ax
      
    mov ax,a+2
    and ax,0f00h
    ror ax,12 
    add ax,bx
    mov dx,ax
               
    mov ax,a
    and ax,000fh
    mov bx,0000h
    mov bl,al
    
    mov ax,a
    and ax,0f00h
    ror ax,4
    add ax,bx    
    
    add ax,dx
    mov r,ax       
                
    mov ax,04ch
    int 21h
endp
end    
