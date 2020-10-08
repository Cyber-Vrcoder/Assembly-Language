.model small
.data
a db 01h,02h,03h,04h
len db $-a
r dw ? 


.code
main proc near
    mov ax,@data
    mov ds,ax
            
    mov ax,0000h
    mov cx,0000h
    mov cl,04        
    lea si,a
    loop1:
          mov al,[si]
          ror ax,cl
          add ax,bx
          mov bx,ax
          inc si
          mov ax,0000h
          inc cl
          inc cl
          inc cl
          inc cl 
          cmp len,dl
          je loop2 
          dec len
          jmp loop1
    loop2:mov r,bx
      
    mov ax,04ch
    int 21h
endp
end