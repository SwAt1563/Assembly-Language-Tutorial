.model small

.data



.code


;THE main Procedure DIFFERNT THAN ANOTHERS IT'S DON'T HAVE ret:return 

main proc  ;proc = Procedure  :fucntion
    

mov dl,30h

add dl,5


call addFunction  ; TO USE THE ADD FUNCTION   ;THIS FUNCTION JUST ADD (1) ON dl

mov ah,2h
int 21h

 
 
    
    
    
main endp
     
     
     
     
     
jmp toEnd  ; to don't let the program read these function again  




addFunction proc     ;Label proc  : fucntionName  Procedure    
    
    
    
             
             
    add dl,4   ;the opeartion in this fucntion
    
    
     call   subFunction       ; to call the subFunction
    
    
    
    
    
    ret   ;to return to the main function

addFunction endp    







subFunction proc     ;Label proc  : fucntionName  Procedure    
    
    
    
             
             
    sub dl,3   ;the opeartion in this fucntion
    
    
    
    
    
    
    
    
    ret   ;to return to the main function

subFunction endp



 
 
 
    
    
    
    
 
toEnd:   ;after finish the main the pointer will jump on this position

end main