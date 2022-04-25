.model 

.data

 
 num db 48    ;db : 8-bit
 
.code

main proc      
    
   mov ax,data
   mov ds,ax
              
;for put small value in big value      

;ax : 16- bit
              
   mov ax,0   ;we should put this to let another bit turn to zero 
   mov al,num   ; al : 8-bit
   
   mov dl,al
   
   mov ah,2h
   int 21h
    
endp


end main