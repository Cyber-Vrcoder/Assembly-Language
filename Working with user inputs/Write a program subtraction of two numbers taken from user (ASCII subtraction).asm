.model small
.data
label db "Enter number number:- $"
a db 3,0,2 dup(?)
b db 3,0,2 dup(?)
r db 3 dup (?)
len dw $-r
looping db ? 
result db "Result:- $" 
  
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
    lea dx,a
    mov ah,0ah
    int 21h
    Space
    Enter
    lea dx,b
    mov ah,0ah
    int 21h
    
    lea si,a
    lea di,b
              
    inc si
    mov cl,[si]
    mov looping,cl                 
    loop1:
    inc si 
    loop loop1
    
    inc di
    mov cl,[di]
    loop2:
    inc di
    loop loop2
    
    mov ax,0h
    mov bx,0h
    mov dx,0h 
    
    lea bx,r  
    dec bx
    add bx,len
    mov [bx],"$"
    dec bx
    
    mov cl,looping
    
    l1:                            
    mov al,[si]
    mov dl,[di]
    cmp ah,00h
    je skip 
    mov ah,0h
    dec al                
    skip:
        sub al,dl
        aaa    
        or al,30h
        mov [bx],al
        dec bx 
        dec si
        dec di
        loop l1 
    cmp ah,00h
    je over
    mov [bx],31h
    jmp finish
    over:
    mov [bx],30h
    finish:  
    Space
    lea dx,result
    mov ah,09h
    int 21h
    lea dx,r
    mov ah,09h
    int 21h
     
    mov ax,04ch
    int 21h
endp
end
