.model small
.data 
a db 10h,11h,12h,13h,14h
len_byte_array db $-a
b dw 1111h,1112h,1113h,1114h
c dw 1115h
len_word_array dw ? 
d dw 0002h

.code
main proc near
    mov ax,@data
    mov ds,ax
    
    lea ax,c
    lea bx,b
    sub ax,bx 
    mov bx,d
    div bx
    mov len_word_array,ax
    
    mov ax,04ch
    int 21h
endp
end