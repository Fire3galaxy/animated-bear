.ORIG x3000

LEA R0, LABEL_1
LD R1, LABEL_2

HALT

LABEL_1 .FILL   #-5
LABEL_2 .FILL   #100

.END
