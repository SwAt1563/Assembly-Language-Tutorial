.model small

.data

.code


COMMENT !

     
     SHL  DESTINATION,COUNT  ; THIS WILL CHANGE THE DESTINATION 
     
    VALUE OF DESTINATION  * 2^N = ANSWER(WHAT HAPPENED ON DESTNATION)  ; N : COUNT
    
    
    THE LOWEST BIT WILL BE ZERO 
    THE HIGHEST BIT WILL GIVE ITS VALUE TO  (CF)     
    
    
    
   CF <----- REGISTER 
    
    
  SAL WORK AS SHL  
    

! 







COMMENT !

     
     SHR  DESTINATION,COUNT   ; THIS WILL CHANGE THE DESTINATION 
     
    VALUE OF DESTINATION  / 2^N = ANSWER(WHAT HAPPENED ON DESTNATION)  ; N : COUNT
    
    
    THE HIGHEST BIT WILL BE ZERO 
    THE LOWEST BIT WILL GIVE ITS VALUE TO  (CF)     
    
    
    
     REGISTER  ------> CF
    
    
    
   SAR WORK AS SHR 

!  


main proc
           
     
     
     
     
     ;SHL
     
     
     
 
     ;al = 0000 0001    = 1
     
     
     mov al,1
     
     
     shl al , 1      ;al = 0000 0010  -> CF = 0
     
     ; 0000 0001 ITS VALUE = 1   THE MULTI IT BY 2^1 -> 1*2 = 2 THEN THE ANSWER WILL BE 2(0000 0010)
     
     
     
                           
     ;al = 0000 0110     = 6
     mov al,6
         
     
                    
     shl al , 2     ;al = 0001 1000   -> CF = 0                       
    
     ; 0000 0110 ITS VALUE = 6   THE MULTI IT BY 2^2 -> 6*4 = 24 THEN THE ANSWER WILL BE 24 (0001 1000) : 18 HEX     
     
     
                                
     ;al = 1000 0110     = 86 HEX  = 134 DEC
     mov al,134
         
     
                    
     shl al , 1     ;al = 0000 1100   -> CF = 1   AND   OF= 1                  
    
     ;  1000 0110 ITS VALUE = 134   THE MULTI IT BY 2^1 -> 134 * 2 = 268 THEN THE ANSWER WILL BE 268 (0000 1100) : 10C HEX  
     ;BUT THE CORRECT VALUE IN AL = 0000 1100 = 0C HEX   AND THE CARRY (1) WILL GO TO CF
   

    
    
    
    
    
    
    
    
    
     ;SHR
     
     
     ;al = 0000 0010   = 2
     
     
     mov al,2        
     
     
     shr al,1        ;al = 0000 0001  -> CF = 0
     ; 0000 0010 ITS VALUE = 2   THE DIV IT BY 2^1 -> 2 / 2 = 1 THEN THE ANSWER WILL BE 1 (0000 0001) : 1 HEX 
     
     
     
     
     ;al = 0000 0001   = 1
     
     
     mov al,1        
     
     
     shr al,1        ;al = 0000 0000  -> CF = 1   AND  OF = 0
     ; 0000 0001 ITS VALUE = 1   THE DIV IT BY 2^1 -> 1 / 2 = 0 (IT'S RETURN INTEGER VALUE > THEN THE ANSWER WILL BE 0 (0000 0000) : 0 HEX   
     
     
     
     ;al = 0010 1100  =    44d  = 2C HEX
     
     
     mov al,44
     
     shr al,4    ; al= 0000 0010   -> CF= 1  
     ; 0010 1100  IT'S VALUE = 44  THE DIV IT BY  2^4  -> 44 / 16 = 2  (IT'S RETURN INTEGER VALUE > THEN THE ANSWER WILL BE 2 (0000 0010 ) : 2 HEX
          
     
     
     
     
     
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
      
    
    
    main endp


end main