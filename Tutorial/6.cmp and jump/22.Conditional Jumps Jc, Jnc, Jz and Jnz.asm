.model small

.data

.code
  
  
  
  COMMENT !
  
    jc ->   jump if carry(CF = 1)
    
    jnc ->   jump if not carry(CF = 0)
    
    jz ->  jump if zero (ZF=1)
    
    jnz ->     jump if not zero (ZF=0)  
    
    
    we can use cmp  for change the flags to make condition statments
  
  
  
  !

main proc
           
           
      ;jz
      
      mov dl,30h
      mov al,30h
      
      
      cmp al,dl   ;ZF =1
      
      jz print5   ;THEN WILL JUMP TO PRINT5
      
      add dl,3
      mov ah,2h
      int 21h 
       
      
      print5:
      add dl,5
      mov ah,2h
      int 21h     
      
      
      ;jnz
      
      
      
      mov dl,30h
      mov al,34h
      
      
      cmp al,dl   ;ZF =0
      
      jnz print3   ;THEN WILL JUMP TO PRINT3
      
      add dl,3
      mov ah,2h
      int 21h 
       
      
      print3:
      add dl,3
      mov ah,2h
      int 21h                 
      
      
      
            
      ;jc
      
      
      
      mov dl,30h
      mov al,34h
      
      
      cmp dl,al   ;CF = 1
      
      jc print2   ;THEN WILL JUMP TO PRINT2
      
      add dl,3
      mov ah,2h
      int 21h 
       
      
      print2:
      add dl,2
      mov ah,2h
      int 21h   
                        
                        
                        
                        
                                    
      ;jnc
      
      
      
      mov dl,30h
      mov al,34h
      
      
      cmp al,dl   ;CF = 0
      
      jnz print1   ;THEN WILL JUMP TO PRINT1
      
      add dl,3
      mov ah,2h
      int 21h 
       
      
      print1:
      add dl,1
      mov ah,2h
      int 21h   
      
      
     
      
      
      
      
      
      
      
    
    
    main endp


end main