.model small

.data

.code


COMMENT !

  MUL INSTRUCTION
  
  
  MUL REGISTER  OR MUL MEMORY   OR MUL IMIDvalue
  
  THE OPEARTION WILL HAPPEND BY MULTI THE OPEARND WITH  AL OR AX 
  
  IF THE OPEARND WITH   8-BIT  THEN THE MUL WILL HAPPEND ON AL    AND THE RESULT WILL PUT IT IN  AX   ( IF THE RESULT MORE THAN 8-BIT  THEN THE CF=1 >
  
  IF THE OPEARND WITH   16-BIT  THEN THE MUL WILL HAPPEND ON AX    AND THE RESULT WILL PUT IT IN  DX : AX  ( IF THE RESULT MORE THAN 16-BIT  THEN THE CF=1 >
  
  FOR 16- BIT THE HIGHEST DIGITS OF THE RESULT WILL PUT IT IN DX   AND THE LOWEST DIGITS WILL PUT IT IN  AX
  
                                    
                                    
                                    
                                     HERE 
                                     WE 
                                     PUT
                                     THE 
                                     RESULT:
                                     
                                    
  
  MULTPLICAND      MULTIPLIER       PRODUCT
  
  
      AL            REG/MEM8          AX
      
      AX            REG/MEM16        DX:AX
    

! 





 


main proc
 
 
 
 ;8-BIT OF BINARY   = 2 DIGIT OF HEX          
     
     
 ;MUL BY  8-BIT    
 
 mov al,20h
 
 mov bl ,10h
 
 
 mul bl  ; it will mult   al * bl  = 0200 h   this result will be on ax  and the (CF=1  CUZ THE RESULT MORE THAN 8-BIT) 
     
    
    


 
 mov al,20h
 
 mov bl ,2h
 
 
 mul bl  ; it will mult   al * bl  = 0040 h   this result will be on ax  and the (CF=0  CUZ THE RESULT LESS THAN 8-BIT) 
     
    
       
    
    
    
 ;MUL BY  16-BIT    
    
    
    
  
  
  mov ax, 4030h
  
  mov bx, 4000h  
    
    
  mul bx  ;it will mult  ax * bx =  100C 0000 h  this result will be on dx( dx = 100C h ) and ax ( ax = 0000 h )  and the (CF=1  CUZ THE RESULT MORE THAN 16-BIT)
    
    
      
  
  
   
  mov ax, 0010h
  
  mov bx, 3h  
    
    
  mul bx  ;it will mult  ax * bx =  0000 0030 h  this result will be on dx( dx = 0000 h ) and ax ( ax = 0030 h )  and the (CF=0  CUZ THE RESULT LESS THAN 16-BIT)
      
    
    main endp


end main