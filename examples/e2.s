.pos 0x1000
                 ld   $0x1, r0            # r0 = fd = 0 (standard in)
                 ld   $buf, r1            # r1 = buf
                 ld   $0x10, r2           # r2 = size
                 sys  $0                  # system call: read
                 ld   $0x1, r0            # r0 = fd = 1 (standard out)
                 ld   $buf, r1            # r1 = buf
                 ld   $0x10, r2           # r2 = size
                 sys  $2                  # system call: write
                 halt                     
.pos 0x2000
buf:             .long 0x2f62696e         
                 .long 0x2f736800         
                 .long 0x0                
                 .long 0x0                
