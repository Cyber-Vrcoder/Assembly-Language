.modelsmall
.data
a dw 2010h
b dw 3000h
c dw ?    

.code
main proc near
    movax,@data
    movds,ax
    movax,a
    movbx,b
    addax,bx
    movc,ax
    movax,4ch
    int21h
endpmain
endmain