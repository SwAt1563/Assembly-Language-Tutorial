.model small

.data



.code


;THE main Procedure DIFFERNT THAN ANOTHERS IT'S DON'T HAVE ret:return 

main proc  ;proc = Procedure  :fucntion
    

mov dl,30h

add dl,5


call change  ; TO USE THE CHANGE FUNCTION

mov ah,2h
int 21h

 
 
    
    
    
main endp  ;let's write like this better than old form
     
     
     
     
     
jmp toEnd  ; to don't let the program read these function again  




change proc     ;Label proc  : fucntionName  Procedure    
    
    
    
             
             
    add dl,2   ;the opeartion in this fucntion
    
    
    
    
    
    
    
    
    ret   ;to return to the main function

   change endp   ;to end this function
 
 
 
    
    
    
    
 
toEnd:   ;after finish the main the pointer will jump on this position

end main