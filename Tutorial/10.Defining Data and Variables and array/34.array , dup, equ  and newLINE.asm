.model small



PRINTMSG EQU <0Dh,0Ah,"enter the numbers :",0Dh,0Ah,"$">   ;constant

.data


msg    dw  PRINTMSG    ;MOVE THE CONSTANT VALUE TO THIS VARIABLE
array1 db  1,2,3,4,5,6
array2 db  6 dup (?)  ; array2 db  ?,?,?,?,?,?

; if we write ;array2 db  ?,?,'a',?,?,?   ;when read from user we can change the value of 'a'



.code


main proc  
 
  
  mov ax, data
  mov ds, ax
  
  
  mov si, 0    ; as counter for array
  mov cx, 6    ; as counter for loop
  
  
  
  Print: 
  
   mov ah,2h
  
   mov dl, array1[si]
   add dl, 30h
   
   
   inc si
   
   int 21h
  
  
  
  loop print   
  
  
  
  
  
  ;print string
  
  
  lea dx,msg
  
  mov ah,9h
  int 21h
  
  
  
    
  mov si, 0
  mov cx, 6
 

 
  Read:
  
   mov ah,1h  
   
   int 21h  
   
   
   
   mov dl, al 
   
   sub dl, 30h  ; to let it in deciaml  
   
  
   mov array2[si], dl
   
   
   inc si
   
    
  
  loop read  
  
  
  
  
  
      
  mov si, 0
  mov cx, 6
 
  
  
    
  Print2: 
  
   mov ah,2h
  
   mov dl, array2[si]
   add dl, 30h
   
   
   inc si
   
   int 21h
  
  
  
  loop print2 
  
  


  

    
    main endp


end main