; dotblls x64 game source code
.section .text
.global _start:

; Maps RAM/VRAM Memory and accesses them before starting the game
MMAP64_INT = .equ 0x0000000000000015
MMAP64_ADDR = .equ 0x000000000000E820
VMMAP64_ADDR = .equ 0x0000000000000010
MOVQ [MMAP64_ADDR], %RAX
MOVQ [VMMAP64_ADDR], %RDX
CALL [VMMAP64_ADDR]
CALL [MMAP64_INT], [MMAP64_ADDR]

; Main Menu
WIDTH = .equ 240
HEIGHT = .equ 67
PIXEL_DEPTH = .equ 3
R = .equ 0x00
G = .equ 0x00
B = .equ 0x00
TITLE_STARTX =
TITLE_ENDX =
TITLE_STARTY =
TITLE_ENDY=
