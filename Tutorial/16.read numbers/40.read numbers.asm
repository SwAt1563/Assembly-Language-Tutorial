.model small



.data
  
  num db 0    ;for save the read value in it
  msg db "the num : $"

.code



main proc
    
    
    
    
    call read  ; read from the user
    
    lea dx, msg
    mov ah,09h
    int 21h  
    
    mov dl , num
    
    mov ah,2h
    int 21h
    
    
    
    
    
    main endp

  
  jmp toEnd
  
  read proc
   
   ;for save the values of registers and flags 
    pusha
    pushf
    
    mov num , 0   ;to read new value from the user
    
    
    again:
    mov ah, 1h   ;read instruction
    int 21h
    
    mov ah, 0
    cmp al,0Dh  ;if the user click (enter) then finish the read
    
    je finishRead
    
    sub ax, 30h   ; for let the summtion in dceimal not ascii  
    
    mov cx, ax  ; save the last entered value in cx
    
    mov bl, 10  ; for make new rank
    
    mov al, num   ; for mul the old value by 10
    
    mul bl 
    
    add ax,cx   ;add the new rank on the old rank
    
    mov num, al   ; move the result on num 
    
    jmp again
    
    
    finishRead:
    
    
    ;for return the values of registers and flags
    
    popf
    popa
    ret
    
    read endp
  
  
  
  toEnd:


end main 
