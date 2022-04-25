   
 .model small
 
 .data
 
 num db 5
 
 
 .code
 
 
 main proc  
    
    
 mov ax,data
 mov ds,ax


 mov cl,num
 
 neg cl  ; to let 5 to 2's complement 
 
 
 mov dl,cl
 
 mov ah,2h
 int 21h    
    
    
    
 endp
 
 
 end main