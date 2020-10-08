.model small
.data
label db "Enter number number:- $"
a db 3,0,2 dup(?)
b db 2,0,1 dup(?)
r db 4 dup (?)
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
    mov cx,0h
    
    lea bx,r  
    add bx,len
    dec bx
    mov [bx],"$"
    dec bx
    
    mov cl,looping
    
    
    mov dl,[di] 
    and dl,0fh
    
    lo2: 
    mov al,[si]
    and al,0fh
    mul dl 
    aam 
    add al,dh 
    aaa
    mov dh,ah      
    or al,30h
    mov [bx],al
    dec bx
    dec si
    loop lo2:
    over:  
    
    or dh,30h         
    mov [bx],dh 
    
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
