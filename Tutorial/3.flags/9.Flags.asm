.model small 


.data

.code


main proc  
    
    mov ax,data
    mov ds,ax  
    
    
    ;flags   
    ;ALL EXAMPLES FOR 8-BIT REGISTERS 
    
    
    ;1_carry flag (CF)
    ;set to 1 when there is an unsigned overflow  
    ;exp : we have 255 : 1111111  if we add  1 to it then it will equal to 1 0000 0000 this called carry flag (for 8-bits ) the range 0-255   
    
    
    mov cl,255
    ;inc cl  ; check it another time will it's not work like add 1 to cl
    add cl,1
    
    mov dl,cl
    
    mov ah,2h   ;will not print cuz the value over than 255
    int 21h
    
    
    
    
    ;2_parity flag (PF)
    ;set to 1 when there is an even number of one bits in result
    ;exp : we have 3 : 11 it's have 2 bit even (1) 
    
    
    mov cl,2
    inc cl   ;let it equal 3:11  even
    
    mov dl,cl
    
    mov ah,2h
    int 21h  
    
    
    
    ;3_auxiliary flag (AF)
    ;set to 1 when there is an unsigned overflow for lower 4-bit 
    ;exp : we have 15 : 00001111 if we add 1 to it then it will be 16:0001000  this make overflow for 4_bit 
    ;or we can add any number make it larger than 00001111  exp  8 add 9 it's equal 17 more than 15
    
    
    
      
    mov cl,15
    inc cl   ;let it equal 16  
    
    mov dl,cl
    
    mov ah,2h
    int 21h  
    
    
    ;4_zero flag (ZF)
    ;set to 1 when result is zero 
    ;exp : 0000000
    
     
    mov cl,0
   
    
    mov dl,cl
    
    mov ah,2h
    int 21h  
             
             
             
    ;5_sign flag (SF)
    ;set to 1 when result is negative  ; which take the value of the most signifinet bit 
    ;exp : 10000111  the most signficent equal one  
    ;the range for signed numbers      -128 to 127    for 8-bit    
       
    mov cl,5
    add cl,-6
    
    mov dl,cl
    
    mov ah,2h
    int 21h        
    
    
    
    ;6_overflow flag (OF)
    ;set to 1 when there is a signed overflow  which range for the number from  -128 to 127 
    ;exp :  127 : 0111 1111  when add one to it  128 :  1000 0000  
    
    mov cl,127
    inc cl
    
    mov dl,cl
    
    mov ah,2h
    int 21h    
    
    
    
    
    ;they are two more flags
    
    
    ;7_interrupt flag (IF)
    ;when this flag is set to 1 CPU reacts to interrupts from external devices
    
    
    ;8_direction flag (DF)
    ;this flag is used by some instructions to process data chains, when this flag is set to 0 - the processing is done forward
    ;, when this flag is set to 1 the processing is done backward.
    
    
endp


end main

 COMMENT  !
 
    Carry Flag (CF) - this flag is set to 1 when there is an unsigned overflow. For example when you add bytes 255 + 1 (result is not in range 0...255). When there is no overflow this flag is set to 0. 
    
    Parity Flag (PF) - this flag is set to 1 when there is even number of one bits in result, and to 0 when there is odd number of one bits.
    
    Auxiliary Flag (AF) - set to 1 when there is an unsigned overflow for low nibble (4 bits).
    
    Zero Flag (ZF) - set to 1 when result is zero. For non-zero result this flag is set to 0.
    
    Sign Flag (SF) - set to 1 when result is negative. When result is positive it is set to 0. (This flag takes the value of the most significant bit.)
    
    Trap Flag (TF) - Used for on-chip debugging.
    
    Interrupt enable Flag (IF) - when this flag is set to 1 CPU reacts to interrupts from external devices.
    
    Direction Flag (DF) - this flag is used by some instructions to process data chains, when this flag is set to 0 - the processing is done forward, when this flag is set to 1 the processing is done backward.
   
    Overflow Flag (OF) - set to 1 when there is a signed overflow. For example, when you add bytes 100 + 50 (result is not in range -128...127).




! 