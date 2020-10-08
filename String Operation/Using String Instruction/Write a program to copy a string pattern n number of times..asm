.model small
.data                       
str db "%#@$"
output db 50 dup(?) 
len db ?     
N db 3

.code
main proc near 
    mov ax,@data
    mov ds,ax
    mov es,ax
        
    mov ax,0000h
    mov al,'$'
    lea di,str
    repnz scasb 
    mov bx,di
    mov len,bl
    
    
    mov al,len
    mov bl,N
    
    mul bl
    
    mov cx,ax
    
    lea di,output
    lea si,str
   l1: 
      movsb
      loop l1
            
    mov ax,04ch
    int 21h
endp
end