.model small

.data



.code

   COMMENT !
    
  ;CMP Instruction
  ;cmd destination, source
  ;it will not change the value of the destination 
  ;it just change the value of flags    
  
  
  ;THE CMP INSTRUCTION WILL SUB SOURCE FROM THE DESTINATION 
  
  ;IF THE RESULT = 0   THEN THEY R EQUAL  -> ZF=1  , CF =0
  ;IF THE RESULT = +ve  THEN DESTIANTION > SOURCE   -> ZF,CF = 0
  ;IF THE RESULT  =-ve  THEN DESTIANTION < SOURCE   -> CF = 1 , ZF =0
   
   
                         ZERO FLAG      CARRY FLAG
   IF                        ZF             CF      
   
  destinaton > source  :      0              0 
  
  destinaton < source  :      0              1
   
  destinaton = source  :      1              0
  
  
  
  ! 

main proc 
    




  mov ax,260
  mov dx,300
  
  
  cmp ax,dx  ;CF=1
  
  cmp dx,ax  ;CF=ZF=0
  
  add ax,40
  
  
  cmp ax,dx  ;ZF=1
  
  





  
    
    
main endp
     
     
     
     
     
jmp toEnd  ; to don't let the program read these function again  




 
 
 
    
    
    
    
 
toEnd:   ;after finish the main the pointer will jump on this position

end main