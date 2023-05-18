.model small
.stack 100h
.data

v dw 5
t dw 2

.code

main proc
    mov ax,@data
    mov dx,ax
    
    level:
    mov ah,1
    int 21h
    sub ax,48
    mov v,ax
    mov dx,32
    mov ah,2
    int 21h
    mov ah,1
    int 21h
    sub ax,48
    mov t,ax
    mov dx,32
    mov ah,2
    int 21h
    mov dx,61
    int 21h
    mov dx,32
    int 21h
    mov ax,t
    mul v
    mov t,2
    mul t
    mov dx,ax
    add dx,48
    mov ah,2
    int 21h
    mov ah,2
    mov dx,10
    int 21h
    mov dx,13
    int 21h
    jmp level
        
    