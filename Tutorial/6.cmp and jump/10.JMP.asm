.model small

.data

.code

main proc
    
 
;JMP INSTRUCTION
 
; WE CAN START IT WITH (  LABEL:  )    AND FOR JUMP TO THIS LABEL JUST WRITE JMP NAME  < jmp LABEL >  

 

COMMENT ! 
 
 ;this while loop don't stop
 ;it's print all characters  
 mov dl,0

 characters:  ;topic name for some instructions 
 

inc dl

mov ah,2h
int 21h

jmp characters   ; to jump on characters instructions 



!



NUM3:


mov dl,30h
add dl,3

mov ah,2h
int 21h 

jmp NUM7  ;it will skip num5 and print just 3 and 7 then finish the program 

        
NUM5:

mov dl,30h
add dl,5

mov ah,2h
int 21h   

NUM7:

mov dl,30h
add dl,7

mov ah,2h
int 21h       

    
    
endp

end main
