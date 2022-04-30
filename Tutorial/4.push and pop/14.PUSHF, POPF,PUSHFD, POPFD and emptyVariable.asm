.model small 

.data


saveFlags dw ?  ;dw:cuz the data size in stack 16-bit  ; ? : it's for put value in it later

.code

 
 main proc
    
    
    ;some opeation to change the flags
    ;change 1
   
       
    mov cl,5
    add cl,-6
    
    mov dl,cl
    
    mov ah,2h
    int 21h  
    
          
  
    
    pushf ;to push the imiditly flags to the topic of the stack
    
    pop saveFlags    ;to pop the topic of the stack(which contain the information of flags) in saveFlags
    
    
    
    ;some opeation to change the flags 
    ;change 2
    
    mov cl,255
    
    
    mov dl,cl
    
    
    mov ah,2h
    int 21h
    
    
    mov cl,127
    inc cl
    
    mov dl,cl
    
    mov ah,2h
    int 21h   
    
    
    
    
    
    
    
    ;after change 2 the flags not same as after change 1 so we will return the flags as the change 1
    
    
    
    push saveFlags    ;we push the required flags to the topic of stack
    
    popf             ; we take (pop) the flags from the topic of the stack and put the values in the flags
   
    
                                   
    
 endp
 
 
 end main


COMMENT !


 WE CAN USE
 
 
 PUSHFD  INSTEND OF PUSHF 
 POPFD  INSTEND OF POPF   
 
 WHEN WE NEED TO USE  32- BIT REGISTERS



! 