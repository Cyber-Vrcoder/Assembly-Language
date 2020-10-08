.model small
.data
a db ?  

.code
main proc near
    mov ax,@data
    mov ds,ax
           
    mov ah,01h
    int 21h
              
    mov a,al  
    
    ; Changing the line but at same position at which it was in above line       
    
    mov dl,10
    mov ah,02h
    int 21h            
    
    ; moving Cursor at start of line
    
    mov dl,13
    mov ah,02h
    int 21h
    
    mov dl,a                        
    mov ah,02h
    int 21h  
           
    mov ax,04ch
    int 21h 
endp
end