.global _start
_start:
    mov $60, %eax # sys_exit
    xor %rdi, %rdi # exit code
    syscall
