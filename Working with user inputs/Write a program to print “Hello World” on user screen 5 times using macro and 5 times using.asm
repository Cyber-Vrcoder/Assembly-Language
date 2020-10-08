.model small
.data
a db "If you don't pay for the product,You are the product",10,13,"$" 
b db "Macro excuted",10,13,"$"
c db "Procedure excuted",10,13,"$" 
count db 05h

.code 


main proc near
 mov ax,@data
 mov ds,ax
 mov es,ax  
 
 
 First_Macro macro i1,i2,i3
    lea dx,i3
    mov ah,09h
    int 21h  
    
    mov cl,i2 
    local l1 
    l1:
    lea dx,i1
    mov ah,09h
    int 21h
    loop l1  
 endm       

 First_Macro a,count,b 
                                
 call FirstProc 
  
 mov ax,04ch
 int 21h
endp             

FirstProc proc 
    lea dx,c
    mov ah,09h
    int 21h
    mov cl,05h 
    l1:
    lea dx,a
    mov ah,09h
    int 21h
    loop l1
    
    ret 
    
FirstProc endp
  