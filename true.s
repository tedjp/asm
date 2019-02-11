.global _start
_start:
    mov $60, %eax # sys_exit
    xor %edi, %edi # exit code
    syscall
