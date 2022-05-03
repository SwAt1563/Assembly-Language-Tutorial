.model small

.data

.code
  
COMMENT !

 
 JE  -> JUMP IF EQUAL (BY CMP)  LIKE JZ BUT ITS JUST LOOK AT OPEARENDS(SOURCE AND DESTINATION) NOT ON THE FLAGS 
 
 JNE ->  JUMP IF NOT EQUAL (BY CMP)  LIKE JNZ BUT ITS JUST LOOK AT OPEARENDS(SOURCE AND DESTINATION) NOT ON THE FLAGS  
 
 JCXZ  -> JUMP IF CX=0   ITS JUST LOOK AT CX NOT ON THE FLAGS  


!

main proc
           
  


;je


  
  mov ah,30h
  mov dl,30h
  
  
  cmp dl,ah
  
  je print5 
  
  inc dl
  
             
      
      
   print5: 
   
   add dl,5
   
   mov ah,2h
   int 21h   
                        
   
   
   
;jne  
   
               
                 
  mov ah,35h
  mov dl,30h
  
  
  cmp dl,ah
  
  jne print3 
  
  inc dl
  
             
      
      
   print3: 
   
   add dl,3
   
   mov ah,2h
   int 21h   
               
               
               
                                 
    
   
   
;jcxz  
   
               
                 
  mov cx,5
  mov dl,30h
  
  
  sub cx,5
  
  jcxz print2 
  
  inc dl
  
             
      
      
   print2: 
   
   add dl,2
   
   mov ah,2h
   int 21h   
               
               
               
                             
                        
                        
      
      
      
    
    
    main endp


end main