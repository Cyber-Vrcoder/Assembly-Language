.model small                                     
.data
num1 db '2156'
len db $-num1
num2 db '5'  
quo db len dup(?)
len1 db $-quo
rem db ?

   
.code
main proc near
    mov ax,@data
    mov ds,ax 
      
    mov ax,0h 
      
    lea si,num1
    lea di,quo
    mov bl,num2
    and bl,00fh  
           
    l1:
    dec len          
    mov al,[si]  
    and al,00fh
    aad
    div bl 
    or al,30h
    mov [di],al
    inc di
    inc si
    cmp len,00h 
    je over
    jmp l1
    
    over:
    or ah,30h
    mov rem,ah
        
    mov ax,04ch
    int 21h
endp 
end          









