.model small                                     
.data
num1 db 5,0,4 dup(?)
len db ?
num2 db ?  
quo db 04 dup(?)
len1 db ?
rem db ?
Label db "Enetr Number:- $"
Label1 db "Quocient:- $"
Label2 db "Remender:- $"
   
.code
main proc near
    mov ax,@data
    mov ds,ax     
    
    Enter macro      
        lea dx,label
        mov ah,09h
        int 21h
    endm
    
    Space macro
        mov dx,13
        mov ah,02h
        int 21h
        
        mov dx,10
        mov ah,02h
        int 21h
    endm
    
    Enter
    lea dx,num1
    mov ah,0ah
    int 21h
    Space
    Enter
    mov ah,01h
    int 21h
     
    mov num2,al           
               
    lea si,num1
    inc si
    mov al,[si]
    mov len,al
    inc si
    
    lea di,quo
    mov bl,num2
    and bl,00fh  
    mov ax,0h       
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
    
    mov [di],"$" 
    Space
    lea dx,Label1
    mov ah,09h
    int 21h
    lea dx,quo
    mov ah,09h
    int 21h 
    
    Space
    lea dx,Label2
    mov ah,09h
    int 21h 
    mov dl,rem
    mov ah,02h
    int 21h
        
    mov ax,04ch
    int 21h
endp 
end          









