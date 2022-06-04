.model small 




.data



 
 
 
 

;Numbers msg
  
enterMsg  db 10,13,10,13,"Enter 6 numbers (between 0 and 9) ",10,13,"then perform some arithmetic operations on them  ",10h,10,13,'$' 


num  db 10,13,"Enter the number $" 
n     db '1','2','3','4','5','6','$'
space db 3Ah,09h,'$'  

tyMsg db  10,13,10,13,"Thank you for entering all numbers ",03h,10,13,'$'   
finishMsg db  10,13,10,13,"Thank you for use my project ",03h,10,13,'$' 


;Options msg 
selectMsg db  10,13,10,13,"Please select the operation you need",10,13,"(v, x, n, d, a, e, s, l, q, r or ? for help> ",10h,' $' 
optionsMsg db               10,13, 
           db               "v: for average",10,13,
           db               "x: for max",10,13,
           db               "n: for min",10,13,
           db               "e: for standard deviation",10,13,
           db               "a: to show numbers in ascending order",10,13,
           db               "d: to show numbers in descending order",10,13,
           db               "s: summation of all numbers",10,13,
           db               "l: for all of the above",10,13,
           db               "q: to quit",10,13,
           db               "r: to enter 6 new numbers",10,13,
           db               "?: for help",10,13,'$'
      
 
 
;Error msg 

errorChar db 10,13,10,13,"Unrecognized character",10,13,'$'
errorNum db 10,13,10,13,"The character you entered is not in the range from 0 to 9 ",10,13,'$' 

;Operations msg

sumMsg db 10,13,"The sum of all numbers is : $" 
avgMsg db 10,13,"The average is : $"  
maxMsg db 10,13,"The max number is : $"  
minMsg db 10,13,"The min number is : $"  
sdMsg db 10,13,"The standard deviation is : $"  
ascMsg db 10,13,"Numbers in ascending order : $" 
desMsg db 10,13,"Numbers in descending order : $" 

allMsg db 's','v','x','n','e','a','d'

;variables 

nums  db  6 DUP (?) 

avg  db  ? 
max  db  ? 
min  db  ?
sum  db  ?      
standard db ?
asc  db  6 DUP (?) 
des  db  6 DUP (?) 


;Selection register 
compareReg db  ?    ;for compare between the operations  








input db ? ;for read from user 
result db ? ;for save the result of mul or div or square    
flag db ? ;its vlaue {0:false,1:true}   






;registers for the square root 
reg   db  ?
regShift db ?
save db ?




.code


printC macro character 
    pusha
    pushf
    
    
    mov dl, character
    mov ah, 2h
    int 21h 
    
    
    
    popf
    popa 
    printC endm  





printM macro string 
    pusha
    pushf
    
   
   
   lea dx, string
   mov ah, 09h
   int 21h  
    
    
    
    popf
    popa 
    printM endm 



;result = n1 * n2 = n2 * n 1
mulO macro n1, n2 
    pusha
    pushf
    
    
    mov ax, 0
    mov al, n1
    mul n2
    
    
    mov result, al  
  
 
    
    
    popf
    popa 
    mulO endm      




;result = n1 / n2 
divO macro n1, n2 
    pusha
    pushf
    
    
    mov ax, 0
    mov al, n1  
    div n2
    
    
    mov result, al  
  
 
    
    
    popf
    popa 
    divO endm   




  ;square root operation 
  ;result = value ^ 0.5
  root macro value   
   pusha
   pushf 
    
    
    ;  dl : have the value without change
    mov dl, value
    
    
    ;  value : have the square result 
    mov value, 0 
    
    
    mov regShift, 00001000b  ;It keeps right shifting  
    mov reg, 00001000b    ; It keeps track of all steps  
    mov save, 0     ;It save the old value when set the last (1)
     
     
     
     
    mov cx, 4
    lop1:
    push cx
    
     
    
    
    mulO reg, reg
    
    cmp result, dl  
    ja leave
      
    mov bl, reg  
    or value, bl 
    
    mov bl, value
    or save, bl
    
    shr regShift,1
    
    mov bl, regShift
    or reg, bl 
    
    
    jmp finish
    
    
    
    leave:
    
    shr regShift, 1
    mov bl, save
    mov reg, bl
    
    
    mov bl, regShift
    or reg, bl 
    
    
    

    
    
      
    finish:  
      
    pop cx 
    loop lop1 
    
    
    
    
    mov dl, value
    mov result, dl 
      
    
   popf
   popa     
  root endm   

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
main  proc  
   mov ax, data 
   mov ds, ax 
   
  
   
   
   
   
   
   repeat:
   
   call clear 
   
   printM enterMsg 
   
  
   mov cx, 6 
   mov di, 0
   readLoop:
   
   printM num
   printC n[di]
   printM space 
   
   
   call read ;input
   call checkN ; 0 - 9
   
   cmp flag, 0
   je cont
   
   
   printM errorNum
   jmp readLoop 
   
   cont:
   
   mov dl, input
   mov nums[di], dl 
    
     
     
   
   inc di 
   loop readLoop
   
   
   printM tyMsg 
   
   
   call avgOperation
   call sort
   call standardOperation 
   
   
   mov avg, '5'
   
   mov cx, 1
   
   
   selectLoops:
   
   printM selectMsg
   
   call read
   call checkC
   
   cmp flag, 0
   je contiune
   
   
   printM errorChar 
   jmp selectLoops
   
   
   contiune:
   call SelectOperation
   
   inc cx
   loop selectLoops
   
   
   
    
    
    
    
       
    main endp
jmp toEnd






















read proc
    pusha
    pushf
    
    
    mov ah, 1h
    int 21h
    
    mov input, al  
     
     
     
    
    popf
    popa 
    ret
    read endp

 
 
 
    checkN proc 
    pusha
    pushf
    
    
    mov flag, 0
    
    
    cmp input, '0'
    jb  errorVar 
    
    cmp input, '9'
    ja  errorVar
    
    
    jmp endCheckN
    
    errorVar: 
    mov flag, 1  
     
     
    endCheckN:
    popf
    popa 
    ret
    checkN endp
 
 
  
 
 ;(v, x, n, d, a, e, s, l, q, r or ? for help>

    checkC proc 
    pusha
    pushf
    
    
    mov flag, 0
    
    
     cmp input, 'v'
     je  endCheckC 
     
      cmp input, 'x'
     je  endCheckC 
     
     
      cmp input, 'n'
     je  endCheckC 
     
     
      cmp input, 'd'
     je  endCheckC 
     
     
      cmp input, 'a'
     je  endCheckC 
     
     
     
      cmp input, 'e'
     je  endCheckC 
     
     
     
      cmp input, 's'
     je  endCheckC 
     
     
     
      cmp input, 'l'
     je  endCheckC 
     
     
     
      cmp input, 'q'
     je  endCheckC 
     
     
     
      cmp input, 'r'
     je  endCheckC 
     
     
     
     
      cmp input, '?'
     je  endCheckC 
      
     
     
    
     
    
    errorExist:
    mov flag, 1 
    
     
    
    
    endCheckC:
    popf
    popa 
    ret
    checkC endp
 
 
  
  avgOperation  proc
     pusha
     pushf
     
        
     mov sum,  0
     mov avg, 0
     
     mov cx, 6
     mov si, 0
     
     sumLoop:
     
     mov dl, nums[si] 
     sub dl, 30h
     
     add sum, dl 
     
     
     inc si 
     loop sumLoop  
     
     
     
     mov dl, 6
     
     divO sum, dl  
     
     mov al, result 
     
     add al, 30h
     
     mov avg, al 
    
     
     
     
     
     popf
     popa   
    ret
    avgOperation endp  
  
  
  
   Sort  proc
     pusha
     pushf
     
     
    
    mov cx, 6
    mov si, 0
    
    
    addTo:
    
    mov dl, nums[si]
    mov asc[si], dl 
    
    inc si 
    loop addTo 
    
    
    
 ; 0 1 2 3 4 5      
 ; 1 2 3 5 4 6 >>>> 1 2 3 4 5 6  
                             
 
   
 mov si, 0
 mov cx, 5
 
 p1:
 push cx
 
 mov cx, 5
 sub cx, si
 
 mov di, si
 inc di 
 
 mov bx, si  
 
 p2:
 
 mov dl, asc[bx]
 cmp asc[di], dl    
 jnb fp2
 
 mov bx, di
 
 
 
 fp2:
 inc di
 loop p2
 

 mov dl, asc[bx]  
 mov al, asc[si]  
 
 mov asc[si], dl  
 mov asc[bx], al  
  
 pop cx
 inc si
 loop p1
     
 
  
  
 mov di, 0
 mov si, 5
 mov cx, 6
 
 ;        0 1 2 3 4 5
 ;asd[] = 1 2 3 4 5 6
 ;des[] = 6 5 4 3 2 1
 insert:
 
 mov dl, asc[si]  
 mov des[di], dl 
 
 
 inc di
 dec si
 loop insert  
 
 
 
 mov al, des[5] 
 mov min , al
 
 
  mov al, des[0] 
  mov max , al
  
  
 
     
    
     
     popf
     popa   
    ret
    Sort endp
   
   
   
   
   
    StandardOperation  proc
     pusha
     pushf
     
     ; avg = 4
     ; nums[] = 1 2 3  4 5 6 
     
     mov standard , 0
     
     mov cx, 6
     mov si, 0
     
     rootSum:
     
     
     mov dl, nums[si]
     cmp avg, dl
     ja aOp
     
     mov al, avg
     sub al, 30h
     sub dl, 30h
     sub dl, al 
     
     mov bl, dl 
     
     jmp toPower
     
     aOp:  
     mov al, avg
     sub al, 30h
     sub dl, 30h
     sub al, dl 
     
     mov bl, al  
     
     
     toPower:
     
     
     
     mulO bl, bl
     
     mov bl, result 
     
     add standard, bl  
     
     
     inc si 
     loop rootSum
     
     
     mov bh, standard
     mov bl, 6
     
     
     divO bh , bl 
     
     mov al, result
     
     root al
     
     mov bl, result
     add bl, 30h  
     
     mov standard, bl  
      
      
     
     
     popf
     popa   
    ret
    StandardOperation endp  
    
    
   
   
    
    
    SelectOperation proc
       pusha
       pushf
        
       
       mov dl, input  
       mov compareReg, dl 
       
       
        
        L0:
        
        cmp compareReg, '?'
        jne L1
        
        printM optionsMsg 
        jmp finishSelect
        
        
        L1:
        cmp compareReg, 'r'
        jne L2
        
       
        jmp repeat 
        
        
        L2:
        cmp compareReg, 'q'
        jne L3
        
        
        jmp toEnd
        
        
        L3:
        cmp compareReg, 'v'
        jne L4
        
        
        printM avgMsg
        printC avg 
        jmp finishSelect
        
        
        L4:
        cmp compareReg, 'x'
        jne L5
        
        
        printM maxMsg
        printC max 
        jmp finishSelect
        
        
        
        L5:
        cmp compareReg, 'n'
        jne L6
        
        
        printM minMsg
        printC min 
        jmp finishSelect  
        
        
        
        L6:  
        
        cmp compareReg, 'e'
        jne L7
        
        
        printM sdMsg
        printC standard 
        jmp finishSelect   
        
        
        
        L7: 
        
        
         
        cmp compareReg, 's'
        jne L8
       
        
        printM sumMsg 
        
        mov ax, 0
        mov al, sum 
        
        aam
        or ax, 3030h
        
        printC ah
        printC al  
        
        
        jmp finishSelect  
        
        
        
        L8: 
        
         
        cmp compareReg, 'a'
        jne L9
        
        
        printM ascMsg 
        
        mov cx, 6
        mov si, 0  
        
        printAsc:
        
        
        printC asc[si]
        
        inc si
        loop  printAsc
        
        jmp finishSelect  
        
        
        
        
        L9:
         
        cmp compareReg, 'd'
        jne L10
        
        
        printM desMsg 
        
        mov cx, 6
        mov si, 0  
        
        printDes:
        
        
        printC des[si]
        
        inc si
        loop  printDes
        
        jmp finishSelect  
        
        
        
        L10:
        cmp compareReg, 'l'
        jne finishSelect
        
        
        
        
        mov cx, 7
        mov di, 0
        
        printAll:
        push cx
        push di 
        
         
        mov dl, allMsg[di]   
        mov input, dl  
        
        call SelectOperation
        
        
         
        
        pop di 
        pop cx 
        inc di 
        loop printAll 
        
         
         
         
         
         finishSelect:
         popf
         popa
        ret
        SelectOperation endp
   


clear proc


mov ax, 0
mov bx, 0
mov dx, 0
mov cx, 0
mov si, 0
mov di, 0    
mov flag, 0    
    
      ret
    clear endp



toEnd:
end main