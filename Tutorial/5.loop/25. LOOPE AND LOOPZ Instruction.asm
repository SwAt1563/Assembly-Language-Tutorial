.model small

.data

.code


COMMENT !

  LOOPZ DESTINATION   or   LOOPE DESTINATION  - >  ARE SAME
  
  
  IF ECX OR CX > 0  AND ZF=1  THEN JUMP TO DESTINATION  
  
  BE CARFULL WE NEED TWO CONDITION HERE HAPPENS

!  


main proc
           
  
 
     mov cx,5
     mov bx,5 
     
    ; cmp bx, cx    ; to let the ZF=1
    ;if we want loope or loopz make as loop then make the ZF=1 BEFORE THAE LOOP

 print:
 
 
   
   mov dl ,30h
   
   
   
   
   
   mov ah,2h
   int 21h  
   
   
    cmp bx,cx   ;to let's it just look at counter of cx  COMPARE IT WITH bx       
             
 loope print             

               
                                 
    
   
   

      
    
    
    main endp


end main