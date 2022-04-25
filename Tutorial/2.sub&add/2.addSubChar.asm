.model small 

.data 
.code

main proc 
         
         
     ;dx : address for input and output
     ;ax : for mul/div or store or load or choose the opeartions 
     
     mov dl, 30h  ; the character '0' in ascii codes we put it in dl
     
     
     add dl,5    ; we add 5 decimal to zero in dl
     
     sub dl ,2    ; we sub 2 from 5 in decimal 
     
     mov ah, 2h  ; code for print char
     int 21h     ; prints value of "dl"
    
    
endp

end main 