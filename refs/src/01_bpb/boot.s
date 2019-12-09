;************************************************************************
;	BIOSでロードされる最初のセクタ
;	
;************************************************************************

;************************************************************************
;	エントリポイント
;************************************************************************
entry:
		;---------------------------------------
		; BPB(BIOS Parameter Block)
		;---------------------------------------
		jmp		ipl								; IPLへジャンプ
		times	90 - ($ - $$) db 0x90			; 

		;---------------------------------------
		; IPL(Initial Program Loader)
		;---------------------------------------
ipl:

		;---------------------------------------
		; 処理の終了
		;---------------------------------------
		jmp		$								; while (1) ; // 無限ループ

;************************************************************************
;	ブートフラグ（先頭512バイトの終了）
;************************************************************************
		times	510 - ($ - $$) db 0x00
		db	0x55, 0xAA

