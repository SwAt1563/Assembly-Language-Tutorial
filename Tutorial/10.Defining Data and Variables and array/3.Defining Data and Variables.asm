.model small

.data
     
     ;data definition statement
     ; [name] directive initializer(data type) [initializer]
     
     num db 6 ;db :8 bit integer  with ( 2 ) value   in num 

.code

main proc
    
        
        ; two codes to define the variables which we want to use      
        mov ax,data
        mov ds,ax


        mov dl, 30h  ; to put zero value in "dl"
        
        add dl,num    ; for add num to dl
        
        mov ah,2h     ;code for print the character   
        int 21h       ; print dl 
    
endp


end main