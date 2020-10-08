.model small
.data  
nam db "Enetr name:-$" 
age db "Enetr age:-$"            
bu1 db 10,0,9 dup(?) 
bu2 db 4,0,3 dup(?)   
nam1 db "Your name:-$" 
age2 db "Your age:-$" 

.code
main proc near
    mov ax,@data
    mov ds,ax
    mov es,ax
          
    Space macro
        mov dx,10
        mov ah,02h
        int 21h  
        mov dx,13
        mov ah,02h
        int 21h
    endm
          
    lea dx,nam
    mov ah,09h
    int 21h
    
    lea dx,bu1
    mov ah,0ah
    int 21h  
    
    Space
               
    lea dx,age
    mov ah,09h
    int 21h 
    
    lea dx,bu2
    mov ah,0ah
    int 21h 
    
    lea si,bu1        
    inc si
    lea di,bu1
    mov cl,[si]
    inc si
    l1:
        movsb 
        cld
        loop l1
    mov [di],"$"
      
    lea si,bu2        
    inc si
    lea di,bu2
    mov cl,[si]
    inc si
    l2:
        movsb 
        cld
        loop l2
    mov [di],"$"
    
    Space
                        
    lea dx,nam1
    mov ah,09h
    int 21h    
    lea dx,bu1
    mov ah,09h
    int 21h
    
    Space
    
    lea dx,age2
    mov ah,09h
    int 21h 
    lea dx,bu2
    mov ah,09h
    int 21h
           
    mov ax,04ch
    int 21h
endp


    