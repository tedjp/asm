.global _start

.section .rodata
bagel:
  .byte 111 # 'o'
  .size bagel, 1

.text
_start:
  mov $1, %edi # STDOUT_FILENO
  lea bagel(%rip), %rsi # &bagel
  mov $1, %edx # length

restore_syscall_nr_to_eax:
  mov $1, %eax # __NR_write
  syscall # returns in %rax, trashes %rcx & %r11.

  jmp restore_syscall_nr_to_eax

# Optional: terminate instead of looping (comment-out jmp above)
#terminate:
#  mov %rax, %rdi # copy syscall return code to exit code
#  mov $60, %eax # sys_exit
#  syscall
