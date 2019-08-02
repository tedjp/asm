# AArch64

.global main

main:
  mov w0, #1

  # exit syscall
  mov w8, #93

  # supervisor call
  svc #0
