 ; Digimon Story Xros Wars Blue
.nds        ; Set the architecture to NDS
.open "arm9.bin",0x02000000    ; Open arm9.bin for output.
          ; 0x02000000 will be used as the
          ; header size
;Taken from the Lost Evolution Routine (by SydMontague) and appropriated for Xros Wars (by Romsstar)

;Fixed Width to Variable Width Hack
.org 0x02006404  
mov r1, #0

; change fixed width flag from 0x8000 to 0x0800
.org 0x0203a020
TST R0,#0x0800

; change fixed width flag from 0x8000 to 0x0800
.org 0x0203B410
MOV R12,#0x8800

; disable fixed width default width
.org 0x02032340
MOV r0,#0

;Table
.org 0x020ddc23
.byte 0x00 ; 0x08

.org 0x020ddc2b
.byte 0x00 ; 0x0c

.org 0x020ddc33
.byte 0x00 ; 0x10

.org 0x020ddc3b
.byte 0x00 ; 0x08

.org 0x02045034
MVN R0,#0
MOV PC,LR

