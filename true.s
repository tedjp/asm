.global _start
_start:
    mov $60, %eax # sys_exit
    syscall
