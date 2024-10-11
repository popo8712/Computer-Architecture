00000000 <main>:
    0:        10000517        auipc x10 0x10000
    4:        00050513        addi x10 x10 0
    8:        00400893        addi x17 x0 4
    c:        00000073        ecall
    10:        10000517        auipc x10 0x10000
    14:        01c50513        addi x10 x10 28
    18:        00000593        addi x11 x0 0

0000001c <loop1>:
    1c:        00052283        lw x5 0 x10
    20:        0002ca63        blt x5 x0 20 <end1>
    24:        00159593        slli x11 x11 1
    28:        0055e5b3        or x11 x11 x5
    2c:        00450513        addi x10 x10 4
    30:        fedff06f        jal x0 -20 <loop1>

00000034 <end1>:
    34:        00058513        addi x10 x11 0
    38:        00100893        addi x17 x0 1
    3c:        00000073        ecall
    40:        10000517        auipc x10 0x10000
    44:        fd550513        addi x10 x10 -43
    48:        00400893        addi x17 x0 4
    4c:        00000073        ecall
    50:        10000517        auipc x10 0x10000
    54:        fc750513        addi x10 x10 -57
    58:        00400893        addi x17 x0 4
    5c:        00000073        ecall
    60:        10000517        auipc x10 0x10000
    64:        fdc50513        addi x10 x10 -36
    68:        00000593        addi x11 x0 0

0000006c <loop2>:
    6c:        00052283        lw x5 0 x10
    70:        0002ca63        blt x5 x0 20 <end2>
    74:        00159593        slli x11 x11 1
    78:        0055e5b3        or x11 x11 x5
    7c:        00450513        addi x10 x10 4
    80:        fedff06f        jal x0 -20 <loop2>

00000084 <end2>:
    84:        00058513        addi x10 x11 0
    88:        00100893        addi x17 x0 1
    8c:        00000073        ecall
    90:        10000517        auipc x10 0x10000
    94:        f8550513        addi x10 x10 -123
    98:        00400893        addi x17 x0 4
    9c:        00000073        ecall
    a0:        00a00893        addi x17 x0 10
    a4:        00000073        ecall
