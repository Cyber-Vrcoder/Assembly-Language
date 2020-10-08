   ;Writeaprogramtoperformadditionoftwo32-bitnumbers
   .model small
   .data
   a dd 98765432h  
   b dd 789ABCDEh
   c dd ?
   
   .code
   main proc near
    mov ax,@data
    mov ds,ax
    
    mov ax,a
    mov bx,b
    add ax,bx
    mov c,ax
    
    mov ax,a+2
    mov bx,b+2
    adc ax,bx
    mov c+2,ax
    
    mov ax,04ch
    int 21h  
   endp
   end