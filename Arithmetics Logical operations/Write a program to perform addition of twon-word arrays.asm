;Writeaprogramtoperformadditionoftwon-wordarrays
.model small
.data
a dw 0FEDCh,0BA98h,7654h
b dw 1234h,5678h,9ABCh
c dw 03 dup(?)   
   
.code
main proc near
    mov ax,@data
    mov ds,ax
    
    mov ax,a+4
    mov bx,b+4
    add ax,bx
    mov c,ax 
    
    mov ax,a+2
    mov bx,b+2
    adc ax,bx
    mov c+2,ax
              
    mov ax,a
    mov bx,b
    adc ax,bx
    mov c+4,ax          
    
    mov ax,04ch
    int 21h
endp
end