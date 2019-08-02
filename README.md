# asm

Experiments with assembly.

amd64, AT&T syntax, Linux ABI, unless otherwise noted.

## [true](true.s)

A very fast /bin/true replacement; only three instructions. Avoids the excesses
of C runtime initialization, auxiliary vector parsing, construction, argument
handling (try --version or --help with GNU Coreutils' /bin/true), file I/O
(try `/bin/true --version > /dev/full` with Coreutils), and destruction.

## [false](false.s)

Like [true](#true), but returns `1`.

## [AArch64](aarch64)

ARM AArch64 implementations.
