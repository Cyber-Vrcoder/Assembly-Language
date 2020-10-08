.model small
.data
a db 25h
b db ?  
r db 07 dup (?)
r1 db 02 dup(?) 

.code
main proc near
    mov ax,@data
    mov ds,ax
    
    lea si,r
    mov cl,00h
    mov ax,0000h
    mov al,a
    mov bx,0002h
    loop1:
    div bl 
    mov b,al  
    mov [si],ah
    cmp al,cl
    je loop2
    inc si
    mov ax,0000h 
    mov bx,0002h
    mov al,b
    jmp loop1
    loop2:                              
    
    lea si, r
    lea di,r1
    mov cx,0003h   
    LoopM:
    mov ax,0000h 
    mov ax,[si]
    cmp ax,0000h
    je next1
    cmp ax,0001h
    je next2
    cmp ax,0100h
    je next3
    cmp ax,0101h
    je next4
    next1:
        mov [di],al
        jmp next
    next2:
        mov [di],al
        jmp next
    next3:
        mov al,10h
        mov [di],al
        jmp next
    next4:
        mov al,11h
        mov [di],al
        jmp next
    next:
        inc si
        inc si  
        inc di  
        dec cx
        cmp cx,0000h
        je over
        jmp LoopM
    over:
     
            
    mov ax,04ch
    int 21h
endp
end