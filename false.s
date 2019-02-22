.global _start
_start:
    mov $60, %eax # sys_exit
    mov $1, %edi  # exit code
    syscall
