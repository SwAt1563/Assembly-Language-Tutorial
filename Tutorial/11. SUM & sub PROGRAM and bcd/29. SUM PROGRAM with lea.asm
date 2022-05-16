.model small

.data 



writeNum1  db "Enter the first number = $"  ; 0dh,0ah,"in upper case",0dh,0ah,'$'
writeNum2  db " Enter the second number = $"
plusO db " + $"
equalO db " = $" 
print db " The result :  $"

array dw 1,2

.code




;we can use memories insted of register to save the values  

 ;LEA INSTRUCTION

;lea dx,  writeNum2     = = ;mov dx, offset writeNum2

;we write offset becuze writeNum2 is array
;so we can write

;array db 1,2,3,4,5 
;the we can call it by offset 

 


main proc  
    
 
 
  COMMENT !
 
    ; INSTED OF THAT CODE FOR PRINT STRING I CAN WRITE FOR EVERY STRING 
     
     mov ax, seg writeNum1
     mov ds, ax
     
     mov dx, offset writeNum1
     
     mov ah,9h
     int 21h  
 
 
 !   
    
    ;for use the data variables
    mov ax, data
    mov ds, ax 
    
            
              
    ;for print string1 
    mov dx, offset writeNum1  ;for put the require string in dx
    mov ah,9h  ; instruction for print string
    int 21h  
    
    
    
    mov ah,1h ;this code for scan the (8-bit) character  then put the value in  (al)
    int 21h
    
    
    mov bl, al   ;save the first value in (bl) register
    
    
    
    ;for print string2 
    lea dx,  writeNum2     ;mov dx, offset writeNum2
    mov ah,9h
    int 21h  
    
    
    
    mov ah,1h ;this code for scan the (8-bit) character  then put the value in  (al)
    int 21h
    
    
    mov cl, al   ;save the second value in (cl) register  
    
    
    
    ;for print string5
    mov dx, offset print
    mov ah,9h
    int 21h 
    
    
    ;for print the first num
    mov dl, bl
    mov ah,2h
    int 21h
    
    ;for print string3
    mov dx, offset plusO
    mov ah,9h
    int 21h 
    
    ;for print the second num
    mov dl, cl
    mov ah,2h
    int 21h  
    
    
    ;for print string4
    mov dx, offset equalO
    mov ah,9h
    int 21h 
    
    
    
    
    
    
     
    
    
    ;we make sub becuase when the scan take the number  like (1) will put in al (31h  not  01h) 
    ;to make sum between decimal numbers
    sub bl, 30h
    sub cl, 30h
    
    
    add bl, cl  ;put the summition in bl
    
    
    add bl, 30h  ; return number character 
    
    
    mov dl, bl    ;move the value to dl to print it by ah,2h
    
    
    
    mov ah,2h
    int 21h

    
    
     
    
    
 
    
    
    
            
              
 
    
    main endp


end main