# AArch64

.global main

main:
  # wzr is the zero register
  # maybe wzr is faster than an immediate?
  mov w0, wzr

  # exit syscall
  mov w8, #93

  # supervisor call
  svc #0
