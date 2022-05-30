.model small


.data

mulResult dw ?    ;variable we use it for take the result of the mulopeartion
msg db 13,"The result : ",'$'

.code


jmp toStart   ;for don't read the macro functions at the beginning

mulOpeation macro num1,num2    ;two parameters
   
   ;for keep the registers and flags values 
   pusha
   pushf
   
    
   mov al, num1
   mov dl, num2 
   
   mul dl    ; the result will be in ax
   
   
   
   mov mulResult, ax 
    
   
   ;for return the registers and flags values 
   popf
   popa 
    
    
   mulOpeation endm    





printMsg macro msg  ;one parameter
    
   pusha
   pushf
   
  
   lea dx,msg
   
   mov ah,09h
   int 21h
   
   
   popf
   popa 
    
    
   printMsg endm  


toStart:

main proc
    
    
   
     mov cl,3
     mov dl,2  
     
     
     printMsg msg
     
     mulOpeation cl,dl
     
     
     mov dx, mulResult  
     
     add dx,30h
     
     mov ah,2h
     int 21h
     
          
    
    
    
    main endp
    
    
    
    
    end main