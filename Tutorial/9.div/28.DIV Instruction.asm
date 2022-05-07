.model small

.data

.code


COMMENT !

  DIV INSTRUCTION
  
  
  DIV REGISTER  OR DIV MEMORY   OR DIV IMIDvalue
  
  THE DIV HAPPEND BY  DIVIDEND THE DIVISOR(OPERAND) BY  AX(FOR 8-BIT)   OR DX:AX(FOR 16-BIT)
  
  IF THE OPEARND WITH   8-BIT  THEN THE DIV WILL HAPPEND ON AX    AND THE RESULT WILL PUT IT IN  AL   AND THE REMAINDER IN AH
  
  IF THE OPEARND WITH   16-BIT  THEN THE DIV WILL HAPPEND ON DX:AX    AND THE RESULT WILL PUT IT IN  AX  AND THE REMAINDER IN DX
  
  
  
  BE CARFULLY  BY DIV  -> IF U USE THE OPERAND 8-BIT  THEN THE RESULT(QUOTIENT) OF THE DIV SHOULD BE AT MAX  8-BIT OTHERWISE WILL HAPPEN OVERFLOW
  BE CARFULLY  BY DIV  -> IF U USE THE OPERAND 16-BIT  THEN THE RESULT(QUOTIENT) OF THE DIV SHOULD BE AT MAX  16-BIT OTHERWISE WILL HAPPEN OVERFLOW
                                    
                                    
                                
                                 HERE 
                                 WE 
                                 PUT
                                 THE 
                                 RESULT:
                                     
                                    
  
  DIVIDEND      DIVISOR         Quotient        Remainder
  
  
      AX        REG/MEM8          AL               AH
      
      DX:AX     REG/MEM16         AX               DX
    

! 





 


main proc
 
 
 
 ;8-BIT OF BINARY   = 2 DIGIT OF HEX     
  
  
  
 
  mov ax, 0083h
  
  mov dl, 2h
  
  
  div dl  ;the Quotient in al = 41h     and the  Remainder  in ah = 01h  
  
  
  
  
 
 
 
 mov ax, 0010h
 
 mov bl, 50h
 
 div bl   ;the Quotient in al = 00h    and the  Remainder  in ah =  10h 
 
 
 
 
 
 
 ;16-BIT OF BINARY   = 4 DIGIT OF HEX 
 
 
 
 
 mov ax, 0060h
 
 mov dx, 0030h
 
 
 mov bx, 40h
 
 
 div bx    ;the Quotient in ax =  C001h   and the  Remainder  in dx =  0020h  
     
  
   
    
    main endp


end main