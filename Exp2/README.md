# Ex.No 02 – Virtual Machine – C Compiler

## Aim
Install a C compiler in the virtual machine created using VirtualBox and execute
simple programs.

## Procedure
1. Install VMware Player / VirtualBox and host a Virtual Machine (e.g. CorePlus).
2. Boot the guest OS, open the terminal, and install the compiler toolchain:
   ```
   tc@box:~$ tce-load -wi compiletc
   ```
3. Open a text editor to write the C program:
   ```
   tc@box:~$ sudo editor
   ```
4. Save the file as `demo.c` (see `demo.c` in this folder).
5. Compile:
   ```
   tc@box:~$ cc demo.c
   ```
6. Run:
   ```
   tc@box:~$ ./a.out
   ```

## Result
The C compiler was installed in the virtual machine and the leap-year program was
compiled and executed successfully. See `output.txt` for the run.
