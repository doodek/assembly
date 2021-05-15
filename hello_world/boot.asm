org 0x7c00
bits 16

init:
    cli
    mov si, msg
    mov ah, 0x0e
.loop: 
    lodsb
    cmp al, 0
    je end
    int 0x10
    jmp .fin

fin:
    hlt
msg:
    db "Hello, World!", 0


times 510 - ($ - $$) db 0
dw 0xAA55


