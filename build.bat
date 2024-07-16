@echo off
set libs="KERNEL32.LIB" "UCRT.LIB" "USER32.LIB"
nasm -f win64 gh_hello.asm -o gh_hello.obj
link gh_hello.obj /subsystem:console /entry:_main /out:gh_hello.exe %libs%
