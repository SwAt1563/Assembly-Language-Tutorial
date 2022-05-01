.model small
.data
.code

main proc
    
    
    
    mov cx,5  
    mov bx,cx  ;index register for move ; we put the value of counter in it  
    ; we can ignore bx
  
  l1:
  
     mov dl,30h
     inc dl
     
     mov ah,2h
     int 21h
    
     
    ;push cx   ; to save it value in stack 
    mov cx,3   ;make another counter for the inside loop
    
    l2:
    
    
     mov dl,30h
     add dl,2
     
     mov ah,2h
     int 21h
    
    
    
    loop l2 
    
    
     
    
    ;dec bx   ; it will print 4 times 
    mov cx,bx
    dec bx ; for print 5 times not 4 times  
   
  
    ; we can ignore bx
    ; pop cx  ; to return it's value 
  
      
  
  loop l1  
  
        
    
  
    
    
endp


end main  


   
   
   

COMMENT !  



     mov cx,5
  
  l1:
  
     mov dl,30h
     inc dl
     
     mov ah,2h
     int 21h
    
    
    
    l2:
    
    
     mov dl,30h
     add dl,2
     
     mov ah,2h
     int 21h
    
    
    
    loop l2
  
     
  
      
  
  loop l1  
  

 ;THE LOOP CONTIUNE AND DON'T STOP BECUASE
 ;WHEN CX = 0   THEN THE LOOP READ 0  THEN WILL SUB (1) FROM ZERO SO IT WILL BE EQUAL FF=255  
 ;THEN THE LOOP NOT FINISH
 ;SO THE BEFORE THE LOOP CX SHOULD BE EQUAL TO 1 AT LAST MISSION TO SUB ONE FROM IT TO LET IT ZERO THEN FINISH THE LOOP


!