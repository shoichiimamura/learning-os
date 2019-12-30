reboot:
	cdecl puts, .s0
.10L:
	mov ah, 0x10
	int 0x16

	cmp al, ' '
	jne .10L
	; 改行を出力
	cdecl puts, .s1
	; 再起動
	int 0x19

.s0	db 0x0A, 0x0D, "Push SPACE key to reboot...", 0
.s1	db 0x0A, 0x0D, 0x0A, 0x0D, 0
