.modelsmall
.data
adb100
bdb50
cdb10h
ddb2bh
edb39h
fdb30h
gdb40h 

.code

main proc near
    mov ax,@data
    mov ds,ax
    mov al,a
    mov ah,b
    add al,ah
    mov al,c
    mov ah,c
    sub al,ah
    mov al,d
    mov ah,e
    add al,ah
    mov al,f
    mov ah,g
    sub al,ah
    mov ax,4ch
    int 21h
endp main
end main