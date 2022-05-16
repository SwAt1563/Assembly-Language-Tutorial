.model small
.data
.code
main proc
;Exp:
mov cx, 4
mov ax, 8
mov dx, 4
mov bx, 3  
add cx,ax
add dx,bx 
mov ax,dx  ; we move it to <ax> cuz the DAA instruction work on <ax>
daa  ;let the addition between (dx and bx> after mov it on ax  bcd addition                                    
mov dx,ax  ;return the bcd result of the addition to <dx>
jnc skip   ;if the addition of dx and bx not make carry then skip this  
add cx, 1  ;if there carry from dx then add it to cx
skip:
mov ax,cx
daa         ;let the addition after mov it on ax  bcd addition 
mov cx,ax   ;return the bcd result of the addition to <cx>
main endp
end main