;Writeaprogramtoperformsubtractionoftwon-wordarrays
.model small
.data
a dw 0F111h,1111h,1111h
b dw 1FFFh,5678h,9ABCh
c dw 03 dup(?)   
   
.code
main proc near
    mov ax,@data
    mov ds,ax
    
    mov ax,a+4
    mov bx,b+4
    sub ax,bx
    mov c,ax 
    
    mov ax,a+2
    mov bx,b+2
    sbb ax,bx
    mov c+2,ax
              
    mov ax,a
    mov bx,b
    sbb ax,bx
    mov c+4,ax          
    
    mov ax,04ch
    int 21h
endp
end