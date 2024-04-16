;Potplayer播放器长按倍速播放
#IfWinActive ahk_class PotPlayer64 ahk_exe PotPlayerMini64.exe
Right::		; 长按0.3秒方向右键进行倍速播放，松开时恢复
	KeyWait, Right, T0.3
	if ErrorLevel {
		Send, cccccccccccccccccccc	; 调整此数值修改速度
		; ToolTip, >>>  --这行被注释掉或移除，因此不会显示>>>
		KeyWait, Right	; 松开按键恢复正常速度
		Send, z
		ToolTip  ; 这里可以选择保留或移除，若保留，则在松开按键时会清除ToolTip（如果之前有显示的话）
	} else Send {Right}
	return
