.model small
 
 
 ;https://www.branah.com/ascii-converter
 
.data 



num1 dw 37h    ;7
num2 dw  35h     ;5
num3 dw 3238h  ; 28


.code


;thses instruction change on AX

 ;we chose  3030h  cuz the zero in ascii start at  30h  so 30h for the highest digites and  30h for the lowest digist  by OR GATE 

main proc 
    
    
    mov ax, data
    mov ds, ax 
    

;AAA INSTRUCTION
;FOR ADDITION OPEARTION





  mov ax, num1
  add ax, num2 
 
  aaa   ; THE ADD WILL HEPPEND IN DECIAML AND BUT THE VALUES IN AX
  
  or ax, 3030h  ; TO RETURN ASCII FORM 
 
 
 
 




;for print the value 

mov bx, ax 

mov dl, bh

mov ah,2h
int 21h     


mov dl, bl

mov ah,2h
int 21h
         
      ;will print  7+5=12  
      
      
      
  ;IF WE WANT MAKE MORE SUM
  
  
  mov ax, bx
  
  add ax, num1
  
  aaa
  
  
  or ax, 3030h   
  
  

;for print   12 + 7 = 19  
  
mov bx, ax   ;bx = 19

mov dl, bh

mov ah,2h
int 21h     


mov dl, bl

mov ah,2h
int 21h
  
  
 ;and so on 
    
 



;AAS INSTRUCTION
;FOR SUBTRATION OPEARTION    
 
    
    
    
    mov ax, bx   ;bx=19
    sub ax, num2   ;num2 = 5
    
    
    aas
    
    or ax, 3030h  
    
    
    
    
    
;for print   19 - 5 = 14 
  
mov bx, ax 

mov dl, bh

mov ah,2h
int 21h     


mov dl, bl

mov ah,2h
int 21h
  
  
 ;and so on 
             
             
             
             
             
             
             

;AAM INSTRUCTION
;FOR MULITLICATION OPEARTION    
              
             



mov ax, num2  
and al, 0fh   ;this for take the digit who with 30h  exp we take from  32h  the number 2h  for use it in multi

mov dx, num1
and dl, 0fh

mul dl

aam


or ax, 3030h  




    
;for print  7 * 5  = 35 
  
mov bx, ax   ;bx = 3335h  ->30H TO START FROM 0 - >  03 05   = 35  

mov dl, bh

mov ah,2h
int 21h     


mov dl, bl

mov ah,2h
int 21h
  
 
 
 


 
  
 ;and so on    
 
 
 
 
 
 
 
 

;AAD INSTRUCTION
;FOR DIVISON OPEARTION    
              
             
 
 mov ax, num3
 
 and ax, 0F0Fh ; to take just 28   ; ax = 0208h
 
 mov bx, num1 
             
 and bx, 0Fh
 
 

 
 aad 
 
 
 div bl    ; be carfull the div after  aad
 
 
 or ax, 3030h            
  



    
;for print  28 / 7  = 35 
  
mov bx, ax   

mov dl, bh

mov ah,2h
int 21h     


mov dl, bl

mov ah,2h
int 21h
  
 
             
              
 
    
    main endp


end main