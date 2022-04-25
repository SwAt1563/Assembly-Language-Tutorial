.model small

.data
     
 
 num1 dw 160 
 
 num2 dw 64
   
.code

main proc
          
   mov ax,data
   mov ds , ax  
   
   ; we use cx : for count  easy to add and sub 
   
   
   
  ;put the initital value in cx
  mov cx,num1  
  
  
  ;add the second value on cx
  add cx , num2
              
              
  ;mov the cx value to dx             
  mov dx, cx   
      
      
   
  ;print dl   
  mov ah,2h
  int 21h     
       
    
endp


end main