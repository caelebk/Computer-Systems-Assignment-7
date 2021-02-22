.pos 0x0
                 gpc  $0xa, r0            # r1 = buf 00 00 00 00 00--0000000010
                 ld   $0x7, r1            # r2 = size 00 10 01 00 01--0000000007
                 sys  $2                  # system call: write  f102 or 00 00 00 07
                 halt                     # f0
.pos 0xc
                 .long 0x2f62696e         
                 .long 0x2f736800         
