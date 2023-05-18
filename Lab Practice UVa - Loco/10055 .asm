.model small
.stack 100h
.data

hash dw ?
ans dw ?

.code

main proc
    mov ah,1
    int 21h
    
    mov hash,ax
    
    mov ah,2
    mov dx,10
    int 21h
    mov dx,13
    int 21h
    
    mov ah,1
    int 21h
    mov dx,ax
    sub dx,hash
    add dx,48
    mov ans,dx
    
    mov ah,2
    mov dx,10
    int 21h
    mov dx,13
    int 21h
    
    mov ah,2
    mov dx,ans
    int 21h
    
    mov ah,2
    mov dx,10
    int 21h
    mov dx,13
    int 21h
    
    main endp
end main
    