.model small
.data
;Exp: 
UP dw 0
DOWN dw 0
Lest db 0E0h DUP(3h),20H DUP(60h)      ;100h : the number of address in the lest   
msg  db 10,13,"founded $" 
.code
main proc
mov ax,data
mov ds,ax
mov cx,100h
mov di, 0
check: 
cmp Lest[di],42h
ja skipUp   ;if the value more than 42h
jna skipDown ;if the value less than 42h 
skipUp: 
inc UP 
jmp toEnd
skipDown:
INC DOWN 
toEnd:  
INC DI
loop check
main endp
end main