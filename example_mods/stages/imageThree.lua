function onCreate()
	-- background shit
	makeLuaSprite('bg', 'SoundTest/images/three', 0, 0)
	addLuaSprite('bg')
	setScrollFactor('bg', 1, 1);
end

function onCreatePost()
	setProperty('timeTxt.visible', false)
	setProperty('iconP1.visible', false)
	setProperty('iconP2.visible', false)
	setProperty('healthBar.visible', false)
	setProperty('healthBarBG.visible', false)
	setProperty('scoreTxt.visible', false)
	setProperty('boyfriend.visible', false)
	setProperty('gf.visible', false)
	setProperty('dad.visible', false)
end