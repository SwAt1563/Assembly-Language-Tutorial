.model small

.data

.code


COMMENT !

BY USING CMP WE WILL COMPARE BETWEEN TO SIDES FOR JUMPING  

CMP  LEFTop, RIGHTop

N:NOT
A:ABOVE
B:BELOW
E:EQUAL
J:JUMP

op:opearnd 



JA ->    JUMP IF ABOVE ( IF LEFTop >RIGHTop )

JNBE ->  JUMP IF NOT BELOW OR EQUAL (SMAE AS JA)


JAE ->  JUMP IF ABOVE OR EQUAL (IF LEFTop >= RIGHTop )

JNB ->  JUMP IF NOT BELOW (SMAE AS JAE)


JB ->  JUMP IF BELOW ( IF LEFTop < RIGHTop )

JNAE ->  JUMP IF NOT ABOVE OR EQUAL (SAME AS JB)


JBE ->   JUMP IF BELOW OR EQUAL ( IF LEFTop <= RIGHTop )

JNA ->  JUMP IF NOT ABOVE ( SAME AS JBE )


!  


main proc
           
  
 
 ;EXP FOR JNAE = JB
 
 
   mov al ,2h
   mov dl ,30h
   
   
   cmp al, dl
   
   jnae print5
   
   
   add dl,5
   
   
   
   print5:
   
   
   mov ah,2h
   int 21h
 

               
                                 
    
   
   

      
    
    
    main endp


end main