.model small 
.data
string db 7,0,6 dup (?)
a db ?
ye db 10,13,'It is palindrome$'
no db 10,13,'It is not palindrome$'

.code
main proc near
    mov ax,@data
    mov ds,ax
    mov es,ax
    
    mov cx,00h   
       
    lea dx,string
    mov ah,0ah
    int 21h
   
    lea si,string
    inc si     
    mov cl,[si]
    
    inc cl 
    inc si
    
    lea bx,string
    add bx,cx 
    mov di,bx
    dec cl 
    mov bx,02h
    mov ax,cx
    div bl
    mov cl,al
    l1:   
    mov al,[si]
    mov bl,[di]
    cmp al,bl
    jne over
    mov [di],al
    mov [si],bl
    inc si
    dec di
    loop l1
    jmp okey
    over:
         lea dx,no
         mov ah,09h
         int 21h 
         jmp bye
    okey:
         lea dx,ye
         mov ah,09h
         int 21h      
    bye:
    mov ax,04ch
    int 21h
endp
end