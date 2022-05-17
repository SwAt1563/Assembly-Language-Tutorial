.model small

.data 



.code


COMMENT !

 ;AAA INSTRUCTION
 
 AFTER SCAN ASCII VALUES FROM USER AND PUT IT IN THE MEMORY
 WE CAN ADD THESE VALUES TOGTHER THEN WRITE AAA
 THE ADD WILL HEPPEND IN DECIAML
 AFTER ADDITION WE WILL RETURN THE RESULT IN ACSII CODE
 BY WRITE
 OR AX, 3030h
 
 
 NOTE : THE ADDITION OPEARTION SHOUD BE ON AX REGITSER 


!



main proc  
    



mov ah, 0
mov al, '9'
add al, '8'

aaa  ; it's will change ax ascii values to decimal  

;the value in ax = 01 07 h 

;this opeartion to return the value of ax to ascii to print it 
or ax, 3030h      ;ax will become (3137h)    


;for print the value

mov bx, ax 

mov dl, bh

mov ah,2h
int 21h     


mov dl, bl

mov ah,2h
int 21h
         
              


;one of the values can be more than 9 and less than 99 but the second value shoud be less or equal 9

mov ax, '56'
add ax, '8'

aaa  ; it's will change ax ascii values to decimal  



;this opeartion to return the value of ax to ascii to print it 
or ax, 3030h      ;ax will become (3634h)    




;for print the value 

mov bx, ax 

mov dl, bh

mov ah,2h
int 21h     


mov dl, bl

mov ah,2h
int 21h
         
      
 
    
    main endp


end main