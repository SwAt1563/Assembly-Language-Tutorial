.model small
 
 
 ;https://www.youtube.com/watch?v=iJ9IQ_c7BMU
 
 ;4-bit : 0-255  
 
.data 

;reg1  db  ? 
;reg2  db  ? 
;reg3  db  ? 
;reg4  db  ?  

reg   db  4 DUP (?)

result db ?

.code


main proc  
    
    mov ax,data
    mov ds,ax
    
    mov dl, 01111001b   ; dl = 121
    
    
    call square
    
    
    
    
    
    
    main endp  
   
   
   jmp toEnd

square proc
       
      ;DL : FOR PUT THE GENRAL VALUE WHICH WE WANT TO SQUARE IT AND WE WILL NOT CHANGE IT  
      ;CL : COUNTER FOR LOOP
      ;BL : FOR TAKE THE Current values OF CL AND MAKE SOME CHANGE ON IT TO MAKE MULTIPLICTION WITH <AL>
      ;AL : FOR TAKE THE VALUE OF MULTICTION WITH BL THEN COMPARE THE VALUE WITH (DL) IF IT'S SMALL OR EQUAL THEN THE JUMP WORK
      
      mov result, 0 
      mov bl, 0 
      mov al, bl
      
      
      ;for shift1
      mov reg[0], 11011111b
      mov reg[1], 00010000b 
      
      ;for shift2
      mov reg[2], 00100000b 
      mov reg[3], 00010000b 
      
      call Opeartion1 
      call Shift2
      
      mov cx,4   ;cuz the number should be at max 4-bit
      
      lop:
     
    
      mul bl  
      
      cmp al, dl       
      JBE j1   ;if al <= dl  then jump 
      
      
      call Opeartion1 
      call Shift2
      jmp j2  
      
      j1:
      call Opeartion2
      call Shift1
      
      j2:
      
      
      loop lop
      
      
      ret
    
      
    
    
    
    
    square endp  
    
    
      Shift1 proc 
      
      ;not for reg1  cuz it's values (1)  
      not reg[0]
      shr reg[0],1
      not reg[0]
      
      shr reg[1],1
   
        
    
    
    ret
    Shift1 endp  
      
      
      
      Shift2 proc 
      
      
      shr reg[2],1
      shr reg[3],1
  
    
    ret
    Shift2 endp    
    
    
    
    
    Opeartion1 proc 
        
        
      
      
     
     call Shift1
    
    
            
      and bl, reg[0]
      or bl, reg[1] 
      or  bl, result
      mov al, bl 
        
    
    
    ret
    Opeartion1 endp    
    
    
    
    
    
     Opeartion2 proc 
        
        
      call Shift2  
    
    
      mov ah, reg[2]      
      or result, ah  
      or bl, reg[3]
      mov al, bl  
    
    
    
    ret
    Opeartion2 endp
    
    

   
   
   toEnd:

end main  

   
   
   

COMMENT !
 ; TO EXPLIAN
 
 
 
 
 
 .model small
 
 
 ;https://www.youtube.com/watch?v=iJ9IQ_c7BMU
 
 ;4-bit : 0-255  
 
.data

.code


main proc
    
    mov dl, 01111001b   ; dl = 121
    
    
    call square
    
    
    
    
    
    
    main endp  
   
   
   jmp toEnd

square proc
       
      ;DL : FOR PUT THE GENRAL VALUE WHICH WE WANT TO SQUARE IT AND WE WILL NOT CHANGE IT  
      ;CL : FOR PUT THE VALUE OF THE RESULT OF THE SQUARE 
      ;BL : FOR TAKE THE Current values OF CL AND MAKE SOME CHANGE ON IT TO MAKE MULTIPLICTION WITH <AL>
      ;AL : FOR TAKE THE VALUE OF MULTICTION WITH BL THEN COMPARE THE VALUE WITH (DL) IF IT'S SMALL OR EQUAL THEN THE JUMP WORK
      
      mov cl, 0
      
      and bl, 11101111b
      or bl, 00001000b 
      or bl, cl
      mov al, bl 
      mul bl
       
      
      cmp al, dl       
      JBE N1   ;if al <= dl  then jump
      
      ;if it not jump
      and bl, 11110111b
      or bl,  00000100b
      or  bl, cl 
      mov al, bl
      
      
      N1BACK:
      
      
      mul bl
         
      
      cmp al, dl    
      JBE N2  ;if al <= dl  then jump
        
      ;if it not jump  
      and bl, 11111011b
      or bl,  00000010b
      or  bl, cl
      mov al, bl 
      
      
      N2BACK:
            
      
      mul bl
         
      
      cmp al, dl          
      JBE N3 ;if al <= dl  then jump
         
      ;if it not jump 
      and bl, 11111101b   
      or bl, 00000001b
      or  bl, cl 
      mov al, bl   
    
             
             
      N3BACK:
    
          
      
      mul bl
         
      
      cmp al, dl         
      JBE N4   ;if al <= dl  then jump
      
    
      N4BACK:  
      
      ret
    
      
      
      N1:
      
      or cl, 00001000b  
      or bl, 00000100b
      mov al, bl  
      jmp N1BACK
      
      
      
      N2:
      or cl, 00000100b 
      or bl, 00000010b
      mov al, bl 
      jmp N2BACK
      
      
      
      N3:
      or cl, 00000010b 
      or bl, 00000001b
      mov al, bl   
      jmp N3BACK
       
       
       
      N4:
      or cl, 00000001b 
        
      jmp N4BACK
      
      
    
    
    
    
    square endp

   
   
   toEnd:

end main
 
 
 
 
 





!


COMMENT !

.model small
 
 
 
 ;4-bit : 0-255  
 
.data 

 

reg   db  ?
mulX db ? 
regShift db ?


result db ?     
save db ?

.code


mulM macro num1, num2 
    
    pushf
    pusha
    
    
        mov ah,0
        mov al,num1
        mov bl,num2
        mul bl  
        
        mov mulX, al 
        
    popa
    popf
   mulM endm


main proc  
    
    mov ax,data
    mov ds,ax
    
   
   
   
   
    mov dl,9
    
    
    call square  
    
    
    mov dl, result
    mov ah, 2h
    int 21h
    
    
    
    
    
    
    
    main endp  
   
   
   jmp toEnd 
   
   
   
   
   
   
COMMENT!

.model small
 
 
 
 ;4-bit : 0-255  
 
.data 

 
mulX db ?

reg   db  ?
regShift db ?
save db ?

result db ?     


.code


mulM macro num1, num2 
    
    pushf
    pusha
    
    
        mov ah,0
        mov al,num1
        mov bl,num2
        mul bl  
        
        mov mulX, al 
        
    popa
    popf
   mulM endm


main proc  
    
    mov ax,data
    mov ds,ax
    
   
   
   
   
    mov dl,9
    
    
    call square  
    
    
    mov dl, result
    mov ah, 2h
    int 21h
    
    
    
    
    
    
    
    main endp  
   
   
   jmp toEnd 
   
   
   
   
   
   
COMMENT!


 ;When we have as exp : 8bit number 
 ;0000 0000 
 ;to find it's square we should set 1 instead 0  when we make mul  we start from high digit
 ;if that make overflow or the result more than the number then ignore it 
 ;exp : 0000 0100
 
 x= 0000 1001  ; 9
 
 1. 1000 0000 *   1000 0000 : make over flow
 2. 1000 0000 - 0001 0000 : make over flow
 3.now we will see how to make the result less of the square than the number    
 4. 0000 1000 * 0000 1000 =  0100 0000  ignore it more than 0000 1001   
 5. 0000 0100 * 0000 0100 = 0001 0000   ignore it more than 0000 1001   
 6. 0000 0010 * 0000 0010 = 0000 0100    remain (1) cuz it less than 0000 1001  
 7. 0000 0011 * 0000 0011 =  0000 1001 its equal  0000 1001 then remain 1
 
 the result 0000 0011 = 3

!  



square proc
     
    ;  dl : have the value without change
    ;  result : have the square result 
    
    
    mov regShift, 00001000b  ;It keeps right shifting  
    mov reg, 00001000b    ; It keeps track of all steps  
    mov save, 0     ;It save the old value when set the last (1)
     
     
     
     
    mov cx, 4
    lop:
    push cx
    
    
    
    
    
    
    
    mulM reg, reg
    
    cmp mulx, dl  
    ja leave
      
    mov bl, reg  
    or result, bl 
    
    mov bl, result
    or save, bl
    
    shr regShift,1
    
    mov bl, regShift
    or reg, bl 
    
    
    jmp finish
    
    
    
    leave:
    
    shr regShift, 1
    mov bl, save
    mov reg, bl
    
    
    mov bl, regShift
    or reg, bl 
    
    
    

    
    
      
    finish:  
      
    pop cx 
    loop lop  
      
   
      ret
   square endp

   
   
   toEnd:

end main  

   
 
   
 

!