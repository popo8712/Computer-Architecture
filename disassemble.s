00000000 <main>:
    0:        10000517        auipc x10 0x10000
    4:        00050513        addi x10 x10 0
    8:        00400893        addi x17 x0 4
    c:        00000073        ecall
    10:        10000517        auipc x10 0x10000
    14:        01c50513        addi x10 x10 28
    18:        048000ef        jal x1 72 <process_list>
    1c:        10000517        auipc x10 0x10000
    20:        ff950513        addi x10 x10 -7
    24:        00400893        addi x17 x0 4
    28:        00000073        ecall
    2c:        10000517        auipc x10 0x10000
    30:        feb50513        addi x10 x10 -21
    34:        00400893        addi x17 x0 4
    38:        00000073        ecall
    3c:        10000517        auipc x10 0x10000
    40:        00050513        addi x10 x10 0
    44:        01c000ef        jal x1 28 <process_list>
    48:        10000517        auipc x10 0x10000
    4c:        fcd50513        addi x10 x10 -51
    50:        00400893        addi x17 x0 4
    54:        00000073        ecall
    58:        00a00893        addi x17 x0 10
    5c:        00000073        ecall

00000060 <process_list>:
    60:        00000593        addi x11 x0 0

00000064 <loop>:
    64:        00052283        lw x5 0 x10
    68:        0002ca63        blt x5 x0 20 <end>
    6c:        00159593        slli x11 x11 1
    70:        0055e5b3        or x11 x11 x5
    74:        00450513        addi x10 x10 4
    78:        fedff06f        jal x0 -20 <loop>

0000007c <end>:
    7c:        00058513        addi x10 x11 0
    80:        00100893        addi x17 x0 1
    84:        00000073        ecall
    88:        00008067        jalr x0 x1 0
