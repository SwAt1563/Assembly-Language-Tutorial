.model small

.data
     
 

   
.code

main proc   
 
 
 
 
          
          
    mov dl,30h 
    mov cx,5
                
                
     ;here will print from 0 to 4           
    
    print:
    
     mov ah,2h
     int 21h
     
     inc dl
     
   
       
    
    
    
    loop print   ; if the cx==0 then stop the loop else contine ;every loop will sub one from cx until it's equal to zero

    
endp


end main