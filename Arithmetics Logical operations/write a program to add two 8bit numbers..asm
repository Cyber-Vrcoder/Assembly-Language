.modelsmall
.data
a db 20h
b db 10h
cdb?

.code 
main proc near
    movax,@data
    movds,ax
    moval,a
    movah,b
    addal,ah
    movc,al
    movax,4ch
    int21h
endpmain
endmain