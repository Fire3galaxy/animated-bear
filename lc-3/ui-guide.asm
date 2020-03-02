.ORIG x3000 ; pseudo-op

LEA R0, MSG_TO_PRINT    ; x3000
PUTS                    ; x3001
HALT                    ; x3002

MSG_TO_PRINT  .STRINGZ  "Hello World!\n"    ; x3003-x3010 (Include NULL)

.END    ; pseudo-op
