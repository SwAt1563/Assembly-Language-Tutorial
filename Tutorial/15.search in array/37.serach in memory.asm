.model small
.data
;Exp: 
Lest db 290h DUP(0),66h,6Fh DUP(0)    ;300h : the number of address in the lest  
msg  db 10,13,"founded $" 
.code
main proc
jmp start
print:
mov ax, data
mov ds, ax
lea dx, msg
mov ah, 9h
int 21h  
jmp toend 
start:
mov cx,300h
mov di,0   
check:
cmp Lest[di], 66h
je print  
inc di
loop check
toend:
main endp
end main