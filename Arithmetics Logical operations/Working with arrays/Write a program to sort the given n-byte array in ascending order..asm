.model small
.data
a db 06h,02h,05h,04h,03h,07h,01h,08h
len db $-a  
c db 00h
c1 db 00h        
c2 db 00h
c3 db 07h   
r db 01h,02h,03h,04h,05h,06h,07h,08h
     
.code
main proc near
    mov ax,@data
    mov ds,ax
    
    
    lea si,a
    mov dl,len
    mov dh,len
    mov c,dl
    mov cx,0000h
    outer:
        inc c2                   
        mov bl,[si]
        mov cl,len
        iner: 
            mov al,[si]   
            cmp [si],bl  
            ja skip
            xchg bl,[si]
        skip: 
            inc si
            loop iner
        mov r+c3,bl
        dec c3
        xchg bl,[si]  
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