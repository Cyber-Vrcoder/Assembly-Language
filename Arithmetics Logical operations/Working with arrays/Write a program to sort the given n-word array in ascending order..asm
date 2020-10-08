.model small
.data
a dw 1115h,1112h,1113h,1114h
len db $-a  
c db 00h
c1 db 00h        
c2 db 00h
c3 db 07h   
r dw 03 dup(?)
     
.code
main proc near
    mov ax,@data
    mov ds,ax
     
    mov ah,00h
    mov al,len
    mov bl,02h
    div bx
    mov len,al
    
    lea si,a
    mov dl,len
    mov dh,len
    mov c,dl
    mov cx,0000h
    outer:
        inc c2   
        inc c2                
        mov bl,[si]
        mov bh,[si+1]
        mov cl,len
        iner: 
            mov al,[si]
            mov ah,[si+1]   
            cmp ax,bx  
            ja skip
            xchg bl,[si]
            xchg bh,[si+1]
        skip:             
            inc si
            inc si
            loop iner
        mov r+c3,bx
        dec c3
        dec c3
        xchg bl,[si]
        xchg bh,[si+1]  
        lea si,a
        inc si+c2 
        mov len,dh  
        mov dl,c
        cmp dl,c1
        je skip1 
        dec c
        jmp outer
        skip1:
    
    mov ax,04ch
    int 21h
endp
end