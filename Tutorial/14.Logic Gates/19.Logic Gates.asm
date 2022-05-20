.model small

.data



.code



main proc  
    


;LOGIC GATES

; GATE  DESTINATION, SOURCE  ; WILL PUT THE VALUE IN THE DESTINATION

;AND



mov ah,00001111b
mov dh,00001011b


and ah,dh  ; the result will set in ah     
; ah : 0000 1011b




    
    
    
;OR



mov ah,00001111b
mov dh,00001011b


or ah,dh  ; the result will set in ah     
; ah : 0000 1111b    
    
     






;XOR



mov ah,00001111b
mov dh,00001011b


xor ah,dh  ; the result will set in ah     
; ah : 0000 0100b    
     
    
 
 
 
 

;NOT



mov ah,00001111b



not ah  ; the result will set in ah   
; ah : 1111 0000b

  
    
     
    
    
main endp
     
     
     
     
     
jmp toEnd  ; to don't let the program read these function again  




 
 
 
    
    
    
    
 
toEnd:   ;after finish the main the pointer will jump on this position

end main