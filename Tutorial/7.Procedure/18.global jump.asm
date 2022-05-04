.model small

.data



.code

COMMENT !

 WHEN I WANT TO CREAT A JUMP POSITION AND I NEED TO USE IT IN ANOTHER PROC(FUCNTION)
 THEN NAME OF IT SHOULD END WITH ::
 
 
 LABEL::
 
 TO BE GLOBEL FOR ALL FUNCTIONS 
 
 IF THE LABEL JUST 
 
 LABEL:
 
 
 IT CAN USE IT JUST IN THE SAME FUCNTION



!

main proc  
    

mov dl,30h

add dl,5


call addFunction  ; TO USE THE ADD FUNCTION   




jmp toPrint


subArea::    ; TO USE THIS JUMP IN ANOTHER FUNCTIONS


sub dl,1


jmp back     ; TO JUMP IN AOTHER FUNCTION



toPrint:


mov ah,2h
int 21h

 
 
    
    
    
main endp
     
     
     
     
     
jmp toEnd  ; to don't let the program read these function again  




addFunction proc     ;Label proc  : fucntionName  Procedure    
    
    
    
    ;the opeartions in this fucntion           
             
    add dl,4   
    
    
    
    jmp subArea  ; TO JUMP IN OTHER FUNCTION
    
    
    
    back::      ; TO USE THIS JUMP IN ANOTHER FUNCTIONS
    
    
    
    
    
    ret   ;to return to the main function

addFunction endp    







 
 
 
    
    
    
    
 
toEnd:   ;after finish the main the pointer will jump on this position

end main