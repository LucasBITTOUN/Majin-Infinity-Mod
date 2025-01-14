function onPause()
	makeLuaText('antipause', 'PAUSING IS DISABLED', 100, 580, 360)
	addLuaText('antipause')
	runTimer('antipausetimer', 1, 1)
	return Function_Stop
end

function onTimerCompleted(antipausetimer)
	removeLuaText('antipause', false)
end