.model small                                     
.data
num1 db '49'
l1 dw $-num1
num2 db '9'
l2 db $-num2  
result db 03 dup(?)
len db $-result
   
.code
main proc near
    mov ax,@data
    mov ds,ax  
    
    lea bx,num1-1
    add bx,l1
    mov si,bx 
        
    mov bx,0h    
    lea bx,num2-1
    add bl,l2
    mov di,bx
    
    mov ax,0h
    mov cx,0h  
    mov dx,0h
    
    lea bx,result
    add bl,len
    
    mov dl,[di] 
    and dl,0fh
    
    lo2:
    dec l1 
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
    cmp l1,00h  
    je over
    jmp lo2
    over:  
    
    or dh,30h         
    mov [bx],dh
             
    mov ax,04ch
    int 21h
endp 
end