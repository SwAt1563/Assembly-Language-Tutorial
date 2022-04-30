.model small


.data

.code



main proc
    
 
 
 
 
 mov ax,1
 mov bx,2
 mov cx,3
 
 
 pusha  ;it will put all values of the register on the topic of the stack  
 
 
 COMMENT !
 
  THE REGISTERS :
  
  ax, cx, dx, bx, sp, bp, si, di
  
  when do pusha
  the di will be on the topic of the stack
  and ax will be on the bottom of the stack 
  
  
  so when do popa  
  the di will take the first value from the topic
  and ax will take the last value (at bottom)
 
 
 !
 
 mov ax,6
 mov bx,7
 mov cx,8    
 
 
 COMMENT ! 
 
 ;THESE CODES WILL CHANGE THE VALUES OF THE STACK
 ;THEN THE popa WILL NOT RETURN THE CORRECT VALUES 
 push ax 
 push bx
 push cx
 
 
 !
 
 popa  ;will put in the registers the topic 8 values  registers in the stack 
 
 
     
    
    
endp


end main   


COMMENT !



 WE CAN USE
 
 
 pushad  INSTEND OF pusha 
 popad  INSTEND OF popa   
 
 WHEN WE NEED TO USE  32- BIT REGISTERS


!