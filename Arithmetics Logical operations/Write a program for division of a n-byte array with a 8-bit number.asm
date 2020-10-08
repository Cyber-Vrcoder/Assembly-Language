;Write a program for division of a n-byte array with n 8-bitnumber
.model small
.data
a db 12h,34h,56h,78h
b db 10h
q db 03 dup(?)
d db ?

.code
main proc near
    mov ax,@data
    mov ds,ax
    
    mov ah,a
    mov al,a+1
    mov bl,b
    div bx
    mov q+3,ah
    mov q+2,al
    
    mov ah,a+2
    mov al,a+3
    div bx
    mov q+1,ah
    mov q,al 
    mov d,dl
  

    mov ax,04ch
    int 21h
endp
end