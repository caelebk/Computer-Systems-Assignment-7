.pos 0x1000
start:           ld   $sb, r5             # r5 = & stack bottom
                 inca r5                  # deallocate 4 bytes
                 gpc  $0x6, r6            # r6 = new return address
                 j    main                # jumpto main
                 halt                     # halt
copy:            ld   $0xfffffff0, r0     # r0 =  -16 (callee prologue)
                 add  r0, r5              # allocating 16 bytes
                 st   r6, 0xc(r5)         # store return address at bottom of stack
                 ld   $0x0, r0            # r0 = 0
                 st   r0, 0x8(r5)         # i = 0
                 ld   $src, r1            # r1 = &src
copyloop:        ld   (r1, r0, 4), r2     # r2 = src[i]
                 beq  r2, copyend         # if src[i]==0 end loop
                 st   r2, (r5, r0, 4)     # dst[i] = src[i]
                 inc  r0                  # r0 = 1
                 st   r0, 0x8(r5)         # i = 1
                 br   copyloop            # repeat loop
copyend:         ld   $0x0, r3            # r3 = 0
                 st   r3, (r5, r0, 4)     # dst[i] = 0
                 ld   0xc(r5), r6         # get return address from stack
                 ld   $0x10, r0           # r0 = 16
                 add  r0, r5              # deallocate 16 bytes
                 j    0x0(r6)             # jumpto return address
main:            deca r5                  # allocate 4 bytes
                 st   r6, 0x0(r5)         # store return address at bottom of stack
                 gpc  $0x6, r6            # r6 = new return address
                 j    copy                # jumpto copy
main_end:        ld   0x0(r5), r6         # get return address
                 inca r5                  # deallocate 4 bytes
                 j    0x0(r6)             # jumpto halt
                 nop                      
                 nop                      
                 ld   $0xffffffff, r0     # virus
                 ld   $0xffffffff, r1     
                 ld   $0xffffffff, r2     
                 ld   $0xffffffff, r3     
                 ld   $0xffffffff, r4     
                 ld   $0xffffffff, r5     
                 ld   $0xffffffff, r6     
                 ld   $0xffffffff, r7     
                 halt                     
.pos 0x2000
src:             .long 0x1                
                 .long 0x1                
                 .long 0x1060             # virus
                 .long 0x1060             
                 .long 0x1060             
                 .long 0x0                
                 .long 0x0                
                 .long 0x0                
                 .long 0x0                
                 .long 0x0                
                 .long 0x0                
                 .long 0x0                
                 .long 0x0                
.pos 0x8000
                 .long 0x0                # These are here so you can see (some of) the stack contents.
                 .long 0x0                
                 .long 0x0                
                 .long 0x0                
                 .long 0x0                
                 .long 0x0                
                 .long 0x0                
                 .long 0x0                
                 .long 0x0                
                 .long 0x0                
                 .long 0x0                
                 .long 0x0                
                 .long 0x0                
                 .long 0x0                
                 .long 0x0                
                 .long 0x0                
                 .long 0x0                
                 .long 0x0                
                 .long 0x0                
                 .long 0x1                
                 .long 0x0                
                 .long 0x1                
                 .long 0x1056             
sb:              .long 0x1010             
