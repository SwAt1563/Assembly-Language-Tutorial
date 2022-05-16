.model small

.data 



.code


COMMENT !

;ADC Instruction

adc  destination, source  ; destination =  destination + source  + CF


ITS LIKE ADD OPEARTION IN ADDITION TO ADD THE CARRY (CF) ON THE DESTINATION  




;the benfits of the instruction  
; if we add some number togther and we have carry  then to don't ignore it we add it


;as


mov al,num1
add al,num2
adc ah,00h  ;to put the carry in ah   

mov sum, ax


!



main proc  
    
 
  ;when put hex value start with charater in anything we should first put ( 0 ) before the charater   
  ;  mov al,FFh : error    the correct one   move al,0FFh 
  
  
 ;these opeartion to let the CF equal to 1   
 mov al,0FFh
 add al,01h 
 
 
 ;CF = 1
 
 ;here the initial value of dl = 0h
 mov dl,00h 
 
 ;the i will add 02h to the (dl)  in addition of (CF)
 adc dl,02h
 
  ;THEN THE RESULT OF dl equal to ( 03h )
    
    
  
 
 
 
 ;these opeartion to let the CF equal to 1   
 mov al,0FFh
 add al,01h 
  
 ;CF = 1  
  
 mov dl,0FFh  ;here the initial value of dl = 0FFh 
 adc dl,0FFh  ;the i will add 0FFh to the (dl) to let it equal to (0FEh) in addition of (CF=1)  then it will be equal to (0FFh)
   
    
            
              
 
    
    main endp


end main