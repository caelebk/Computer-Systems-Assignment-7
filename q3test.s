.pos 0x1000
start:           ld   $addr, r4           # load base address of code
                 ld   0x0(r4), r4         
                 ld   $0x0, r0            # r0 = fd = standard in
                 mov  r4, r1              # r1 = base address of code
                 ld   $0x80, r2           # r2 = size
                 sys  $0                  # system call: read
                 j    0x0(r4)             # jump straight to the code, good luck
.pos 0x2000
code:            gpc  $0x1a, r5           
                 ld   $0x7, r1            
                 ld   $0x2f62696e, r2     
                 ld   $0x2f736800, r3     
                 st   r2, 0x0(r5)         
                 st   r3, 0x4(r5)         
                 mov  r5, r0              
                 sys  $2                  
                 halt                     
.pos 0x3000
addr:            .long 0x2000             # base address to load virus code at. Your virus code must work no matter what address this is.
