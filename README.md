# my_asssembly
assembly_code AeSO 23/24
built on **WSL2 Ubuntu 22.04.3**
packages nedeed:
  `gcc-arm-linux-gnueabihf`  
  `qemu`  

Use provided Makefile calling `~$ make` on your shell  

Or compile with `-static` flag and run with  `qemu-arm exec`  

**(I.E.)**  
`~$ arm-linux-gnueabihf-gcc -o hello helloworld.s -static`  
`~$ qemu-arm hello`  



  
