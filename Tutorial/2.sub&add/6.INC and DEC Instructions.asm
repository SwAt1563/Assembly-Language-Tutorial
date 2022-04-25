.model small

.data
     
   
.code

main proc
          
          
     ;INC and DEC Instructions   
     ;inc : for add 1
     ;dec : for sub 1  
     
     
     ;before use inc or dec we should define inital value for "dl" or sth what we want to change 
          
      mov dl,30h    ; here we define the inital value    0 decimal
      
       
       inc dl     ; add 1 to dl
      
      mov ah,2h
      int 21h    
      
      
      
      mov dl,35h    ; here we define the inital value    5 decimal
      
       
      dec dl     ; sub 1 from dl 
      
      mov ah,2h
      int 21h        
                    
                    
            COMMENT !    
            
            
            ; THIS WILL NOT WORK  , CUZ OF OVER RIDE 
            
            
               inc dl     ; add 1 to dl
            
              mov dl,35h    ; here we define the inital value    5 decimal
      
       
      
      
      mov ah,2h
      int 21h     
            
            
            !
      
      
      
      
       
       
    
endp


end main