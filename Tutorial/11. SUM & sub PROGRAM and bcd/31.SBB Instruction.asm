.model small

.data 



.code


COMMENT !

;SBB Instruction

sbb  destination, source  ; destination =  destination - source  - CF


ITS LIKE SUB OPEARTION IN ADDITION TO SUB THE CARRY (CF) FROM THE DESTINATION  




;the benfits of the instruction  
; if we sub some number togther and we have carry  then to don't ignore it we sub it


;as


mov al,num1
sub al,num2
sbb ah,00h  ;to sub CF from ah    

mov result, ax


!



main proc  
    
 
 
 mov al, 6h
 
 mov dl, 3h
 
 sub dl, 4h    ; THEN dl will equal (FEh) and the CF = 1
 
 sbb al, 00h   ; the (al) will become to 5h cuz we sub (CF = 1) FROM IT 
            
              
 
    
    main endp


end main